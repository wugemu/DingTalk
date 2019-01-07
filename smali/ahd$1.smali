.class final Lahd$1;
.super Ljava/lang/Object;
.source "AbsDownloadMailDetailTask.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

.field final synthetic b:Lahd;


# direct methods
.method constructor <init>(Lahd;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)V
    .locals 0
    .param p1, "this$0"    # Lahd;

    .prologue
    .line 252
    iput-object p1, p0, Lahd$1;->b:Lahd;

    iput-object p2, p0, Lahd$1;->a:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 6
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 264
    iget-object v1, p0, Lahd$1;->b:Lahd;

    iget-object v0, p0, Lahd$1;->a:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    .line 1397
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v2

    .line 2046
    iget-wide v4, v1, Lyr;->x:J

    .line 1398
    invoke-interface {v2, v4, v5, v0}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleMailDetailDownloadFail(JLjava/lang/String;)V

    .line 1399
    monitor-enter v1

    .line 1400
    :try_start_0
    const-string/jumbo v0, "AbsDownloadMailDetailTask"

    const-string/jumbo v2, "download mail detail fail, notify"

    invoke-static {v0, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1402
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 252
    .line 2255
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v0

    .line 2338
    iget-boolean v0, v0, Lafy;->n:Z

    .line 2255
    if-eqz v0, :cond_0

    .line 2256
    iget-object v0, p0, Lahd$1;->b:Lahd;

    iget-object v1, p0, Lahd$1;->b:Lahd;

    invoke-static {v1}, Lahd;->a(Lahd;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lahd$1;->a:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    iget-wide v4, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-static {v0, v2, v3, v4, v5}, Lahd;->a(Lahd;JJ)V

    :goto_0
    return-void

    .line 2258
    :cond_0
    iget-object v0, p0, Lahd$1;->b:Lahd;

    invoke-virtual {v0}, Lahd;->f()V

    goto :goto_0
.end method
