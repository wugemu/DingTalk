.class public Lcom/alibaba/alimei/contact/db/ContactApiDataContract$ContactExt;
.super Ljava/lang/Object;
.source "ContactApiDataContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/contact/db/ContactApiDataContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactExt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApiType(II)Ljava/lang/String;
    .locals 1
    .param p0, "flag"    # I
    .param p1, "itemType"    # I

    .prologue
    .line 197
    packed-switch p0, :pswitch_data_0

    .line 218
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 199
    :pswitch_0
    invoke-static {p1}, Lcom/alibaba/alimei/contact/db/ContactApiDataContract$Email;->getName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 201
    :pswitch_1
    invoke-static {p1}, Lcom/alibaba/alimei/contact/db/ContactApiDataContract$Phone;->getName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 203
    :pswitch_2
    invoke-static {p1}, Lcom/alibaba/alimei/contact/db/ContactApiDataContract$WEBSITE;->getName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 205
    :pswitch_3
    invoke-static {p1}, Lcom/alibaba/alimei/contact/db/ContactApiDataContract$Address;->getName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 207
    :pswitch_4
    invoke-static {p1}, Lcom/alibaba/alimei/contact/db/ContactApiDataContract$Organization;->getName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 209
    :pswitch_5
    invoke-static {p1}, Lcom/alibaba/alimei/contact/db/ContactApiDataContract$Date;->getName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 211
    :pswitch_6
    invoke-static {p1}, Lcom/alibaba/alimei/contact/db/ContactApiDataContract$IM;->getName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 213
    :pswitch_7
    invoke-static {p1}, Lcom/alibaba/alimei/contact/db/ContactApiDataContract$Community;->getName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method

.method public static getFlag(Ljava/lang/String;)I
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 173
    if-nez p0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    :cond_2
    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 179
    const/4 v0, 0x2

    goto :goto_0

    .line 180
    :cond_3
    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 181
    const/4 v0, 0x3

    goto :goto_0

    .line 182
    :cond_4
    const-string/jumbo v1, "vnd.android.cursor.item/date"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 183
    const/4 v0, 0x4

    goto :goto_0

    .line 184
    :cond_5
    const-string/jumbo v1, "vnd.android.cursor.item/organization"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 185
    const/4 v0, 0x5

    goto :goto_0

    .line 186
    :cond_6
    const-string/jumbo v1, "vnd.android.cursor.item/im"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 187
    const/4 v0, 0x6

    goto :goto_0

    .line 188
    :cond_7
    const-string/jumbo v1, "vnd.android.cursor.item/community"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 189
    const/4 v0, 0x7

    goto :goto_0

    .line 190
    :cond_8
    const-string/jumbo v1, "vnd.android.cursor.item/website"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static getKeyByFlag(ILjava/lang/String;)J
    .locals 2
    .param p0, "flag"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 245
    packed-switch p0, :pswitch_data_0

    .line 263
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 247
    :pswitch_0
    invoke-static {p1}, Lcom/alibaba/alimei/contact/db/MimeTypeContract$Email;->getTypeContractOpenApi(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 249
    :pswitch_1
    invoke-static {p1}, Lcom/alibaba/alimei/contact/db/MimeTypeContract$Phone;->getTypeContractOpenApi(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 251
    :pswitch_2
    invoke-static {p1}, Lcom/alibaba/alimei/contact/db/MimeTypeContract$Organization;->getTypeContractOpenApi(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 253
    :pswitch_3
    invoke-static {p1}, Lcom/alibaba/alimei/contact/db/MimeTypeContract$StructuredPostal;->getTypeContractOpenApi(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 255
    :pswitch_4
    invoke-static {p1}, Lcom/alibaba/alimei/contact/db/MimeTypeContract$Community;->getTypeContractOpenApi(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 257
    :pswitch_5
    invoke-static {p1}, Lcom/alibaba/alimei/contact/db/MimeTypeContract$Im;->getTypeContractOpenApi(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 259
    :pswitch_6
    invoke-static {p1}, Lcom/alibaba/alimei/contact/db/MimeTypeContract$Date;->getTypeContractOpenApi(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 261
    :pswitch_7
    invoke-static {p1}, Lcom/alibaba/alimei/contact/db/MimeTypeContract$Website;->getTypeContractOpenApi(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method public static getMimeTypeByFlag(I)J
    .locals 2
    .param p0, "flag"    # I

    .prologue
    .line 222
    packed-switch p0, :pswitch_data_0

    .line 240
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 224
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.item/email_v2"

    invoke-static {v0}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->lookupMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 226
    :pswitch_1
    const-string/jumbo v0, "vnd.android.cursor.item/phone_v2"

    invoke-static {v0}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->lookupMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 228
    :pswitch_2
    const-string/jumbo v0, "vnd.android.cursor.item/organization"

    invoke-static {v0}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->lookupMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 230
    :pswitch_3
    const-string/jumbo v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-static {v0}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->lookupMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 232
    :pswitch_4
    const-string/jumbo v0, "vnd.android.cursor.item/community"

    invoke-static {v0}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->lookupMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 234
    :pswitch_5
    const-string/jumbo v0, "vnd.android.cursor.item/im"

    invoke-static {v0}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->lookupMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 236
    :pswitch_6
    const-string/jumbo v0, "vnd.android.cursor.item/date"

    invoke-static {v0}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->lookupMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 238
    :pswitch_7
    const-string/jumbo v0, "vnd.android.cursor.item/website"

    invoke-static {v0}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->lookupMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method
