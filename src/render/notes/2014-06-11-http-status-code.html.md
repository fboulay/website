---
title: "HTTP status codes"

ignore: false
---

## 1xx informational
100
> Client should continue with request

101
> Server is switching protocols

102
> Server has received and is processing the request

103
> resume aborted PUT or POST requests

122
> URI is longer than a maximum of 2083 characters

## 2xx success
200
> standard response for successful HTTP requests

201
> request has been fulfilled; new resource created

202
> request accepted, processing pending

203
> request processed, information may be from another source

204
> request processed, no content returned

205
> request processed, no content returned, reset document view

206
> partial resource return due to request header

207
> XML, can contain multiple separate responses

208
> results previously returned

226
> request fulfilled, reponse is instance-manipulations


## 3xx redirection
300
> multiple options for the resource delivered

301
> this and all future requests directed to the given URI

302
> temporary response to request found via alternative URI

303
> permanent response to request found via alternative URI

304
> resource has not been modified since last requested

305
> content located elsewhere, retrieve from there

306
> subsequent requests should use the specified proxy

307
> connect again to different URI as provided

308
> connect again to a different URI using the same method

## 4xx client error
400
> request cannot be fulfilled due to bad syntax

401
> authentication is possible but has failed

402
> payment required, reserved for future use

403
> server refuses to respond to request

404
> requested resource could not be found

405
> request method not supported by that resource

406
> content not acceptable according to the Accept headers

407
> client must first authenticate itself with the proxy

408
> server timed out waiting for the request

409
> request could not be processed because of conflict

410
> resource is no longer available and will not be available again

411
> request did not specify the length of its content

412
> server does not meet request preconditions

413
> request is larger than the server is willing or able to process

414
> URI provided was too long for the server to process

415
> server does not support media type

416
> client has asked for unprovidable portion of the file

417
> server cannot meet requirements of Expect request-header field

418
> I'm a teapot

420
> Twitter rate limiting

422
> request unable to be followed due to semantic errors

423
> resource that is being accessed is locked

424
> request failed due to failure of a previous request

426
> client should switch to a different protocol

428
> origin server requires the request to be conditional

429
> user has sent too many requests in a given amount of time

431
> server is unwilling to process the request

444
> server returns no information and closes the connection

449
> request should be retried after performing action

450
> Windows Parental Controls blocking access to webpage

451
> The server cannot reach the client's mailbox.

499
> connection closed by client while HTTP server is processing

## 5xx server error
500
> generic error message

501
> server does not recognise method or lacks ability to fulfill

502
> server received an invalid response from upstream server

503
> server is currently unavailable

504
> gateway did not receive response from upstream server

505
> server does not support the HTTP protocol version

506
> content negotiation for the request results in a circular reference

507
> server is unable to store the representation

508
> server detected an infinite loop while processing the request

509
> bandwidth limit exceeded

510
> further extensions to the request are required

511
> client needs to authenticate to gain network access

598
> network read timeout behind the proxy

599
> network connect timeout behind the proxy
