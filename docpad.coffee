# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
# =================================
# Template Configuration
  templateData:  {
    site:    {
      url: "http://blog.boulay.eu"
      title: "Florian's blog / Java & Co."
      subtitle: "In code we trust"
      description: """
                   Florian's point of view on the software industry world, particularly about Open Source, Java, Android, Git, Docker, Docpad and so on
                   """
      keywords: "open source, java, software, git, rtb, concurrency, nio, nosql, android"
      author: "Florian Boulay"
      email: "florian.boulay@gmail.com"
      services: {
        googleAnalytics: "UA-46239890-1"
        disqus: "blogboulayeu"
      }
    }
  # Get the prepared site/document title
  # Often we would like to specify particular formatting to our page's title
  # we can apply that formatting here
    getPreparedTitle: ->
      # if we have a document title, then we should use that and suffix the site's title onto it
      if @document.title
        "#{@document.title} | #{@site.title}"
        # if our document does not have it's own title, then we should just use the site's title
      else
        @site.title

  # Get the prepared site/document description
    getPreparedDescription: ->
      # if we have a document description, then we should use that, otherwise use the site's description
      @document.description or @site.description

  # Get the prepared site/document keywords
    getPreparedKeywords: ->
      # Merge the document keywords with the site keywords
      @site.keywords.concat(@document.keywords or []).join(', ')

  # Check if the given page is equals to the current doc to be selected in the document. The same is done with the posts
    isMenuSelected: (page) ->
      if @document.id is page.id or (@document.relativeOutDirPath is 'posts' and page.name is 'posts')
        "pure-menu-selected"
      else
        ""

    extractSummary: (contentRendered) ->
      if contentRendered
        contentRendered.split(/<h[123456]/)[0]

    # Get the Absolute URL of a document
    getUrl: (document) ->
      return @site.url + (document.url or document.get?('url'))
  }
  collections:  {
    pages: ->
      @getCollection("html").findAllLive({isPage: true, isPagedAuto: $ne: true}, [{menuOrder: 1}]).on "add", (model) ->
        model.setMetaDefaults({layout: "default"});

    posts: ->
      @getCollection("html").findAllLive({relativeOutDirPath: 'posts', isPagedAuto: $ne: true}, [{date: -1}]).on "add", (model) ->
        model.setMetaDefaults({layout: "posts"});
  }
  # =================================
  # Environment Configuration

  # Locale Code
  # The code we shall use for our locale (e.g. `en`, `fr`, etc)
  # If not set, we will attempt to detect the system's locale, if the locale can't be detected or if our locale file is not found for it, we will revert to `en`
  localeCode: "fr"

  environments:  {
    development:    {
      templateData: {
        env:'dev'
      }
    }
  }

  plugins: {
    rss: {
      collection: 'posts'
      url: '/feed.xml'
    }
    datefromfilename: {
      removeDate: true
    }
  }

  # Regenerate every hour
  #regenerateEvery: 3600000
}

# Export the DocPad Configuration
module.exports = docpadConfig