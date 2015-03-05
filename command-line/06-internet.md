# The command line and the internet

The command line also has useful tools for interacting with resources over the internet (or on your local network). Here are a couple to get you started.

| Command name | What it does | Example |
| ------------ | ------------ | ------- |
| ``curl`` | A common and flexible tool for transferring information from servers. Often used for downloading HTML files (web pages). | ``curl http://httpbin.org/html -o httpbin_html.html`` will download the html for that specific [httpbin](http://httpbin.org) URL (hey, a resource of HTTP examples!) and store it in a file. |
| ``ssh`` | **S**ecure **Sh**ell provides a way to log in to a command line shell on a remote computer. | ``ssh myuser@example.com`` would attempt to connect to a remote machine named `example.com` as the user `myuser`. If this machine existed and was set up to allow connections, it would probably prompt you for a password. |
| ``ping`` | Sends a small request to a remote machine, expecting a response if the remove machine is on and connected to the internet. Can be used to see if a remote machine is down and how quickly it is responding. | ``ping -c 10 www.apple.com``  will send 10  "pings" to www.apple.com. For each successful ping, the response time and other information will be sent to your screen. Unsuccessful pings will return an error message like *Destination Host Unreachable* or *Request Timed Out*. |
| ``traceroute`` | Sends packets (information) to a remote machine and tracks the various hardware the request travels to reach the final destination. | ``traceroute www.apple.com`` will send packets to apple.com and show in order where the packets traveled. In my case, I saw few lines with *newyork.ny.ibone.comcast.net* in it, telling me a bit about the Comcast network hardware my request travelled over. You'll probably also see numeric [IP addresses](https://en.wikipedia.org/wiki/IP_address). |

## An advanced example

Using what we know about [redirection of input/output](05-input-output.md) and some helpful tools, we can so some interesting things with data from the web. Check out this one-liner for grabbing [JSON](https://en.wikipedia.org/wiki/JSON) data, formatting and displaying it:

```bash
curl -s http://httpbin.org/get | python -m json.tool | less
```

That commnd grabs content from a URL using `curl`, pipes it to `python -m json.tool` which uses a json tool provided by [Python](https://www.python.org), and then pages the output using `less`. You can split this command into multiple steps, storing intermediate data in files, but doing it all in one step can be quick and useful.
