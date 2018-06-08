A collection of [LPEG](http://www.inf.puc-rio.br/~roberto/lpeg/lpeg.html) patterns

## Use cases

  - Strict validatation of user input
  - Searching free-form input


## Modules

### `core`

A small module implementing commonly used rules from [RFC-5234 appendix B.1](https://tools.ietf.org/html/rfc5234#appendix-B.1)

  - `ALPHA` (pattern)
  - `BIT` (pattern)
  - `CHAR` (pattern)
  - `CRLF` (pattern)
  - `CTL` (pattern)
  - `DIGIT` (pattern)
  - `HEXDIG` (pattern)
  - `VCHAR` (pattern)
  - `WSP` (pattern)


### `IPv4`

  - `IPv4address` (pattern): on success, returns addresses as an IPv4 object
  - `IPv4_mt` (table): metatable given to IPv4 objects


### `IPv6`

  - `IPv6address` (pattern)


### `uri`

Parses URIs as described in [RFC-3986](https://tools.ietf.org/html/rfc3986).

  - `uri` (pattern): on success, returns a table with fields: (similar to [luasocket](http://w3.impa.br/~diego/software/luasocket/url.html))
      - `scheme`
      - `userinfo`
      - `host`
      - `port`
      - `path`
      - `query`
      - `fragment`
  - `sane_uri` (pattern): a variant that shouldn't match things that people would not normally consider URIs.
    e.g. uris without a hostname


### `email`

  - `email` (pattern): follows [RFC-5322 section 3.4.1](http://tools.ietf.org/html/rfc5322#section-3.4.1)
  - `email_nocfws` (pattern): a variant that doesn't allow for comments or folding whitespace


### `phone`

  - `phone` (pattern): includes detailed checking for:
      - USA phone numbers using the [NANP](https://en.wikipedia.org/wiki/North_American_Numbering_Plan)
