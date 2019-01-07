.class public final Lagf;
.super Laga;
.source "CalendarAttachmentDownloader.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Laga;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lagf;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->parentItemServerId:Ljava/lang/String;

    return-object v0
.end method

.method protected final a(Z)V
    .locals 9
    .param p1, "isDownloadSuccess"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 33
    new-instance v1, Lcom/alibaba/alimei/orm/query/Update;

    const-class v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;

    const-string/jumbo v3, "calendar.db"

    const-string/jumbo v4, "Attachments"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .local v1, "update":Lcom/alibaba/alimei/orm/query/Update;
    if-eqz p1, :cond_0

    .line 36
    iget-object v2, p0, Lagf;->d:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "contentUri":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "content_uri"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    const-string/jumbo v2, "_id=?"

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lagf;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-wide v6, v5, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 44
    if-eqz p1, :cond_1

    .line 45
    iget-object v2, p0, Lagf;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iput-object v0, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 46
    iget-object v2, p0, Lagf;->c:Lyc;

    iget-object v3, p0, Lagf;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iput-object v3, v2, Lyc;->g:Ljava/lang/Object;

    .line 47
    iget-object v2, p0, Lagf;->c:Lyc;

    iput v8, v2, Lyc;->c:I

    .line 51
    :goto_1
    iget-object v2, p0, Lagf;->e:Lya;

    iget-object v3, p0, Lagf;->c:Lyc;

    invoke-interface {v2, v3}, Lya;->a(Lyc;)V

    .line 52
    return-void

    .line 38
    .end local v0    # "contentUri":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "contentUri":Ljava/lang/String;
    goto :goto_0

    .line 49
    :cond_1
    iget-object v2, p0, Lagf;->c:Lyc;

    const/4 v3, 0x2

    iput v3, v2, Lyc;->c:I

    goto :goto_1
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "3"

    return-object v0
.end method
