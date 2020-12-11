---
name: Desync
about: Please provide information about the desync you encountered to help us resolve the problem
---

**Product and Version** [VS/VSCode]:
**OS Version** [macOS/Windows/Linux]:
**Live Share Extension Version**:
**Target Platform or Language** [e.g. Node.js]:

**What were you doing when you encountered the desync?**

**How often have you encountered desyncs?**

**Do the host and the guest have the same contents?**

*If yes, there's no need to answer the following questions*

If you are using VS Code, the following will provide helpful information.

On both the host and the guest:
- Enable the `liveshare.diagnosticMode` setting
- Open the file that's out of sync
- Run the `liveshare.getCoeditingInformation` command (`ctrl+shift+p` to open the command palette, then search for "Get co-editing information") and paste the results below

**Host co-editing information:**

**Guest co-editing information:**

To check that messages are being sent and received, open the Output view (`ctrl+shift+u`) and select "Visual Studio Live Share Coediting" from the dropdown. Type a character. On the sending end, you should see output like:
```
[2020-12-10 23:51:25.351 ] Post message: {"messageType":"textChange","changes":[{"length":0,"newText":"a","start":400}],"changeServerVersion":12,"clientId":24,"fileName":"/src/foo.txt","time":1607644285349,"sendId":16}
```
On the receiving end, you should see ouput like:
```
[2020-12-10 23:51:27.713 ] Receive message: {"context":{"GuestSessionId":"31","IsOwner":"False"},"sourceId":"Coauthoring","eventId":45,"jsonContent":"{"messageType":"textChange","changes":[{"length":0,"newText":"a","start":400}],"changeServerVersion":12,"clientId":24,"fileName":"/src/foo.txt","time":1607644427514,"sendId":25}","time":1607644427713}
```
**Are messages being sent and received?**
