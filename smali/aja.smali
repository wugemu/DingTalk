.class public final Laja;
.super Ljava/lang/Object;
.source "RpcModelConverters.java"


# static fields
.field private static a:Landroid/util/SparseIntArray;

.field private static b:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/16 v5, 0x9

    const/4 v4, 0x4

    const/4 v3, -0x2

    .line 34
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Laja;->a:Landroid/util/SparseIntArray;

    .line 38
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Laja;->b:Landroid/util/SparseIntArray;

    .line 42
    sget-object v0, Laja;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget-object v0, Laja;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget-object v0, Laja;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget-object v0, Laja;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    sget-object v0, Laja;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    sget-object v0, Laja;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    sget-object v0, Laja;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    sget-object v0, Laja;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    sget-object v0, Laja;->b:Landroid/util/SparseIntArray;

    const/16 v1, 0x40

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    sget-object v0, Laja;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    sget-object v0, Laja;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    sget-object v0, Laja;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private static a(Lcom/alibaba/alimei/restfulapi/data/AliAddress;)Lcom/alibaba/alimei/sdk/model/AddressModel;
    .locals 2
    .param p0, "address"    # Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    .prologue
    .line 242
    new-instance v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>()V

    .line 243
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/AddressModel;
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 244
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->alias:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    .line 245
    return-object v0
.end method

.method public static a(Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;Lcom/alibaba/alimei/restfulapi/data/Attach;)Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;
    .locals 8
    .param p0, "item"    # Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;
    .param p1, "attach"    # Lcom/alibaba/alimei/restfulapi/data/Attach;

    .prologue
    const/4 v5, 0x0

    .line 211
    if-nez p0, :cond_1

    .line 212
    const/4 v1, 0x0

    .line 237
    :cond_0
    :goto_0
    return-object v1

    .line 214
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;

    invoke-direct {v1}, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;-><init>()V

    .line 215
    .local v1, "model":Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->isRead()Z

    move-result v4

    iput-boolean v4, v1, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->read:Z

    .line 216
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->getSubject()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->subject:Ljava/lang/String;

    .line 217
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->getItemId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->serverId:Ljava/lang/String;

    .line 218
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->getFolderId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->folderId:Ljava/lang/String;

    .line 219
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->getSummary()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->summary:Ljava/lang/String;

    .line 220
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->getDate()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->date:J

    .line 221
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->getFrom()Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    move-result-object v4

    invoke-static {v4}, Laja;->a(Lcom/alibaba/alimei/restfulapi/data/AliAddress;)Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 222
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->getTags()Ljava/util/List;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->tags:Ljava/util/List;

    .line 223
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->getHasAttach()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_1
    iput-boolean v4, v1, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->hasAttach:Z

    .line 224
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->getTo()Ljava/util/List;

    move-result-object v3

    .line 225
    .local v3, "tos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    if-eqz v3, :cond_4

    .line 226
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v2, "tomodels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    .line 228
    .local v0, "address":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    invoke-static {v0}, Laja;->a(Lcom/alibaba/alimei/restfulapi/data/AliAddress;)Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 223
    .end local v0    # "address":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    .end local v2    # "tomodels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    .end local v3    # "tos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->getHasAttach()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_1

    .line 230
    .restart local v2    # "tomodels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    .restart local v3    # "tos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    :cond_3
    iput-object v2, v1, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->to:Ljava/util/List;

    .line 233
    .end local v2    # "tomodels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    :cond_4
    if-eqz p1, :cond_0

    .line 1249
    new-instance v4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-direct {v4}, Lcom/alibaba/alimei/sdk/model/AttachmentModel;-><init>()V

    .line 1250
    iput v5, v4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentType:I

    .line 1251
    iget-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/Attach;->id:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentId:Ljava/lang/String;

    .line 1252
    iget-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/Attach;->name:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    .line 1253
    iget-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/Attach;->originToken:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originToken:Ljava/lang/String;

    .line 1254
    iget-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/Attach;->originSpaceId:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    .line 1255
    iget-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/Attach;->originId:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    .line 1256
    iget-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/Attach;->contentId:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    .line 1257
    iget v5, p1, Lcom/alibaba/alimei/restfulapi/data/Attach;->size:I

    int-to-long v6, v5

    iput-wide v6, v4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    .line 1258
    iget-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/Attach;->contentType:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentType:Ljava/lang/String;

    .line 1259
    iget-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/Attach;->partId:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->partId:Ljava/lang/String;

    .line 1260
    iget-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/Attach;->encoding:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->encoding:Ljava/lang/String;

    .line 234
    iput-object v4, v1, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    goto/16 :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;)Lcom/alibaba/alimei/sdk/model/MailSearchModel;
    .locals 6
    .param p0, "item"    # Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;

    .prologue
    .line 186
    if-nez p0, :cond_1

    .line 187
    const/4 v1, 0x0

    .line 207
    :cond_0
    :goto_0
    return-object v1

    .line 189
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;

    invoke-direct {v1}, Lcom/alibaba/alimei/sdk/model/MailSearchModel;-><init>()V

    .line 190
    .local v1, "model":Lcom/alibaba/alimei/sdk/model/MailSearchModel;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->isRead()Z

    move-result v4

    iput-boolean v4, v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->isRead:Z

    .line 191
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->getSubject()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->subject:Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->getItemId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->serverId:Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->getFolderId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->folderServerId:Ljava/lang/String;

    .line 194
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->getSummary()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->snippet:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->getDate()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->timeStamp:J

    .line 196
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->getFrom()Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    move-result-object v4

    invoke-static {v4}, Laja;->a(Lcom/alibaba/alimei/restfulapi/data/AliAddress;)Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 197
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->getTags()Ljava/util/List;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->tags:Ljava/util/List;

    .line 198
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->getHasAttach()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->hasAttachment:Z

    .line 199
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->getTo()Ljava/util/List;

    move-result-object v3

    .line 200
    .local v3, "tos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    if-eqz v3, :cond_0

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v2, "tomodels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    .line 203
    .local v0, "address":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    invoke-static {v0}, Laja;->a(Lcom/alibaba/alimei/restfulapi/data/AliAddress;)Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 198
    .end local v0    # "address":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    .end local v2    # "tomodels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    .end local v3    # "tos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->getHasAttach()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_1

    .line 205
    .restart local v2    # "tomodels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    .restart local v3    # "tos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    :cond_3
    iput-object v2, v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->to:Ljava/util/List;

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 3
    .param p0, "targetFolderType"    # I

    .prologue
    const/high16 v2, -0x80000000

    .line 65
    sget-object v1, Laja;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 66
    .local v0, "value":I
    if-ne v0, v2, :cond_0

    .line 67
    const/4 v1, 0x1

    .line 69
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static b(I)Z
    .locals 4
    .param p0, "folderType"    # I

    .prologue
    const/high16 v3, -0x80000000

    .line 79
    const/4 v0, 0x1

    .line 80
    .local v0, "result":Z
    sget-object v2, Laja;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 81
    .local v1, "value":I
    if-ne v1, v3, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 84
    :cond_0
    return v0
.end method

.method public static c(I)I
    .locals 1
    .param p0, "folderType"    # I

    .prologue
    .line 93
    sparse-switch p0, :sswitch_data_0

    .line 128
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 95
    :sswitch_0
    const/16 v0, 0x41

    goto :goto_0

    .line 97
    :sswitch_1
    const/16 v0, 0x46

    goto :goto_0

    .line 99
    :sswitch_2
    const/16 v0, 0x51

    goto :goto_0

    .line 101
    :sswitch_3
    const/16 v0, 0x49

    goto :goto_0

    .line 103
    :sswitch_4
    const/16 v0, 0x50

    goto :goto_0

    .line 105
    :sswitch_5
    const/16 v0, 0x48

    goto :goto_0

    .line 107
    :sswitch_6
    const/16 v0, 0x47

    goto :goto_0

    .line 109
    :sswitch_7
    const/16 v0, 0x42

    goto :goto_0

    .line 111
    :sswitch_8
    const/4 v0, 0x3

    goto :goto_0

    .line 113
    :sswitch_9
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :sswitch_a
    const/16 v0, 0x52

    goto :goto_0

    .line 117
    :sswitch_b
    const/4 v0, 0x4

    goto :goto_0

    .line 119
    :sswitch_c
    const/4 v0, 0x5

    goto :goto_0

    .line 121
    :sswitch_d
    const/4 v0, 0x6

    goto :goto_0

    .line 123
    :sswitch_e
    const/4 v0, 0x7

    goto :goto_0

    .line 125
    :sswitch_f
    const/4 v0, -0x4

    goto :goto_0

    .line 93
    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_f
        0x2 -> :sswitch_9
        0x3 -> :sswitch_8
        0x4 -> :sswitch_d
        0x5 -> :sswitch_c
        0x6 -> :sswitch_e
        0x8 -> :sswitch_0
        0x9 -> :sswitch_7
        0xd -> :sswitch_1
        0xe -> :sswitch_6
        0xf -> :sswitch_5
        0x10 -> :sswitch_3
        0x11 -> :sswitch_4
        0x1e -> :sswitch_a
        0x1f -> :sswitch_2
        0x64 -> :sswitch_b
    .end sparse-switch
.end method

.method public static d(I)I
    .locals 1
    .param p0, "mailboxType"    # I

    .prologue
    const/16 v0, 0xe

    .line 138
    sparse-switch p0, :sswitch_data_0

    .line 173
    const/16 v0, 0xc

    :goto_0
    :sswitch_0
    return v0

    .line 140
    :sswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 142
    :sswitch_2
    const/16 v0, 0xd

    goto :goto_0

    .line 144
    :sswitch_3
    const/16 v0, 0x1f

    goto :goto_0

    .line 146
    :sswitch_4
    const/16 v0, 0x10

    goto :goto_0

    .line 148
    :sswitch_5
    const/16 v0, 0x11

    goto :goto_0

    .line 150
    :sswitch_6
    const/16 v0, 0xf

    goto :goto_0

    .line 156
    :sswitch_7
    const/4 v0, 0x3

    goto :goto_0

    .line 158
    :sswitch_8
    const/4 v0, 0x2

    goto :goto_0

    .line 160
    :sswitch_9
    const/16 v0, 0x1e

    goto :goto_0

    .line 162
    :sswitch_a
    const/16 v0, 0x64

    goto :goto_0

    .line 164
    :sswitch_b
    const/4 v0, 0x5

    goto :goto_0

    .line 166
    :sswitch_c
    const/4 v0, 0x4

    goto :goto_0

    .line 168
    :sswitch_d
    const/4 v0, 0x6

    goto :goto_0

    .line 170
    :sswitch_e
    const/4 v0, -0x4

    goto :goto_0

    .line 138
    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_e
        0x0 -> :sswitch_8
        0x3 -> :sswitch_7
        0x4 -> :sswitch_a
        0x5 -> :sswitch_b
        0x6 -> :sswitch_c
        0x7 -> :sswitch_d
        0x41 -> :sswitch_1
        0x42 -> :sswitch_0
        0x46 -> :sswitch_2
        0x47 -> :sswitch_0
        0x48 -> :sswitch_6
        0x49 -> :sswitch_4
        0x50 -> :sswitch_5
        0x51 -> :sswitch_3
        0x52 -> :sswitch_9
    .end sparse-switch
.end method

.method public static e(I)Ljava/lang/Boolean;
    .locals 1
    .param p0, "folderServerType"    # I

    .prologue
    .line 179
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 180
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 182
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static f(I)I
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 311
    sparse-switch p0, :sswitch_data_0

    .line 329
    const/4 v0, 0x5

    :goto_0
    return v0

    .line 313
    :sswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 320
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 324
    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 327
    :sswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 311
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0xf -> :sswitch_1
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
        0x12 -> :sswitch_2
        0x13 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
        0x2328 -> :sswitch_0
        0x2329 -> :sswitch_1
    .end sparse-switch
.end method
