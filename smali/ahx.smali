.class public final Lahx;
.super Lahr;
.source "MailMoveFolderTask.java"


# instance fields
.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lahr;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lahx;->d:Ljava/util/HashMap;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lahr;-><init>(Ljava/lang/String;J)V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lahx;->d:Ljava/util/HashMap;

    .line 34
    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 40
    iget-object v0, p0, Lahx;->a:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    .line 1046
    iget-wide v2, p0, Lyr;->x:J

    .line 40
    invoke-interface {v0, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryWaitingSyncMoveList(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;)V
    .locals 3
    .param p1, "messageSync"    # Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 50
    iget-object v0, p0, Lahx;->d:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->itemId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method protected final a(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 56
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getMailService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    move-result-object v0

    iget-object v1, p0, Lahx;->d:Ljava/util/HashMap;

    invoke-interface {v0, v1, p2}, Lcom/alibaba/alimei/restfulapi/service/RpcMailService;->moveMailsIntoAnotherFolder(Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 57
    return-void
.end method

.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "MailMoveFolderTask"

    return-object v0
.end method

.method protected final f()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lahx;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 46
    return-void
.end method
