# FAQ

**Q:** _How is my code shared with other participants?_<br />
**A:** Participants access code directly on owner's machines via secured cloud service. Only files that are actually edited are transmitted to participants and none of these files are stored in the cloud. In VS Code these files stay in memory while with Visual Studio they are persisted in a temporary location and cleaned up after use. All operations on the code are remoted in a controlled way which enables instance access, go-to-definition, intellisense, and search without the contents of the files actually being on the participant's machine or stored in the cloud. Once the collaboration session / share is stopped by the owner further access is terminated. Unlike screen sharing which gives complete desktop control, the specific asset that is shared is highly controlled providing added security.

**Q:** _Does this remote based model work anywhere?_<br />
**A:** The only requirement is that the owner and each participant have internet access and can connect to the Azure based service.  No special peer-to-peer connection is required.  

**Q:** _What happens when the session owner goes offline?_<br />
**A:** While this model provides instant access and improved security by enabling the owner to cut off access to the code completely at any point, the downside is that the owner needs to be online and connected to the service for participants to connect.

**Q:** _What kind of session access controls are available?_<br />
**A:** During the private preview the non-guessable invite link provides the primary mechanism to prevent unexpected users from joining the session. Users must also sign in using a GitHub or Microsoft supported work, school, or personal Microsoft account which gives the owner visibility to who is connected. As mentioned above, access can be cut off by simply ending the collaboration session and the session is not kept running if the owner shuts down their tool or signs out. As we move forward we intend to expand role based access controls to enable further security. Up-vote the features you most want to see [here](http://aka.ms/project-cascade/feature-requests).

**Q:** _How is terminal access controlled?_<br />
**A:** Given terminal access provides additional permissions to participants the owner must explicitly start one. The owner may shut down access at any point by simply shutting down the terminal. As mentioned previously, the owner also needs to be online and connected to the service and all participants are required to sign in to provide visibility to the owner on who is connected. No special ports are opened and the interaction is entirely facilitated via the secure service. Unlike screen sharing which gives complete desktop control, the specific asset that is shared is highly controlled providing added security.

**Q:** _How is local server, debug, and browser access controlled?_<br />
**A:** For security reasons the owner needs to take a specific action to enable any of these scenarios. The owner controls starting the debugging session that participants connect. Browser access to the running application is facilitated via the service operating on a known port specified by the IDE/editor or the owner. The owner can opt to share additional ports if they so choose (e.g. for a RESTful API) and has complete control to shut down access as needed. Participants cannot start any of these actions. Again, the owner also needs to be online and connected to the service and all participants are required to sign in to provide visibility to the owner on who is connected. Unlike screen sharing which gives complete desktop control, the specific asset that is shared is highly controlled providing added security.

## More Information

- [Getting started](getting-started.md)
- [Visual Studio features](collab-vs.md)
- [Visual Studio Code features](collab-vscode.md)
- [Roadmap](roadmap.md)
