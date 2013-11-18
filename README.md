## Library CRM
---

### Design Philosophy

There are a lot of [CRM](http://en.wikipedia.org/wiki/Customer_relationship_management) systems in the wild. [Some](http://sugarcrm.com) of them are even [free](http://fatfreecrm.com) but every one I've seen seem predicated on one factor -- money. Specifically, which customer bought which widget, which customer hasn't bought widgets for a year, how many millions in what widget line were bought across all sectors of a market. This is great; this is a necessary thing for 99% of CRM users out there but I work in academia, and specifically in libraries, and what I wasn't seeing was a CRM focused on librarian-patron interactions -- what professor published which work, how many instruction sessions did this department need. I want something like a hopped-up Rolodex that can detect patterns and gank info out of academic databases.

I'm hoping this can be that. At some point. When I figure out what I'm doing.

---

#### Goals:
* Easy to get data in, easy to get out (JSON, APIs)
    * basic address stuff (name, department, email)
    * Maybe some FOAFy stuff to describe relationships? Or some other RDF triple-esque thing.
* Easy to use for non-Poindexters (e.g. librarians)
* Integration with something like [Google Scholar](http://scholar.google.com) for auto-populating of e.g. prof publications.
* Some sort of calendar integration (iCal?) for instruction sessions and etc.
* (lots of other stuff)

---

### Current Framework Components

* [Ruby 2.0.0 p247](http://ruby-lang.org)
* [Sinatra](http://sinatrarb.com)
* [Haml](http://haml.info)
* [Twitter Bootstrap](http://getbootstrap.com)
* [Ruby JSON gem](http://rubygems.org/gems/json)

