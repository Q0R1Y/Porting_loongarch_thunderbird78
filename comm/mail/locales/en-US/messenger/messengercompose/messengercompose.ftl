# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# Addressing widget

#   $type (String) - the type of the addressing row
remove-address-row-type = Remove the { $type } field

#   $type (String) - the type of the addressing row
#   $count (Number) - the number of address pills currently present in the addressing row
address-input-type-aria-label = { $count ->
    [0]     { $type }
    [one]   { $type } with one address, use left arrow key to focus on it.
    *[other] { $type } with { $count } addresses, use left arrow key to focus on them.
}

#   $email (String) - the email address
#   $count (Number) - the number of address pills currently present in the addressing row
pill-aria-label = { $count ->
    [one]   { $email }: press Enter to edit, Delete to remove.
    *[other] { $email }, 1 of { $count }: press Enter to edit, Delete to remove.
}

pill-action-edit =
    .label = Edit Address
    .accesskey = e

pill-action-move-to =
    .label = Move to To
    .accesskey = T

pill-action-move-cc =
    .label = Move to Cc
    .accesskey = C

pill-action-move-bcc =
    .label = Move to Bcc
    .accesskey = B

#   $count (Number) - the number of attachments in the attachment bucket
attachment-bucket-count =
    .value = { $count ->
        [1]      { $count } Attachment
        *[other] { $count } Attachments
    }
    .accesskey = m

#   $count (Number) - the number of attachments in the attachment bucket
attachments-placeholder-tooltip =
    .tooltiptext = { $count ->
        [1]      { $count } Attachment
        *[other] { $count } Attachments
    }

#   { attachment-bucket-count.accesskey } - Do not localize this message.
key-toggle-attachment-pane =
    .key = { attachment-bucket-count.accesskey }

button-return-receipt =
    .label = Receipt
    .tooltiptext = Request a return receipt for this message
