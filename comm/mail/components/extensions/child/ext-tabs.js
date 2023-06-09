/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

"use strict";

this.tabs = class extends ExtensionAPI {
  getAPI(context) {
    return {
      tabs: {
        connect(tabId, options) {
          let { frameId = null, name = "" } = options || {};
          return context.messenger.nm.connect({ name, tabId, frameId });
        },

        sendMessage(tabId, message, options, responseCallback) {
          let recipient = {
            extensionId: context.extension.id,
            tabId,
          };
          if (options && options.frameId !== null) {
            recipient.frameId = options.frameId;
          }
          return context.messenger.sendMessage(
            context.messageManager,
            message,
            recipient,
            responseCallback
          );
        },
      },
    };
  }
};
