.class final Lahf$1;
.super Ljava/lang/Object;
.source "AbsSyncCalendarTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahf;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lyc;

.field final synthetic b:Lya;

.field final synthetic c:Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;

.field final synthetic d:Lahf;


# direct methods
.method constructor <init>(Lahf;Lyc;Lya;Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;)V
    .locals 0
    .param p1, "this$0"    # Lahf;

    .prologue
    .line 105
    iput-object p1, p0, Lahf$1;->d:Lahf;

    iput-object p2, p0, Lahf$1;->a:Lyc;

    iput-object p3, p0, Lahf$1;->b:Lya;

    iput-object p4, p0, Lahf$1;->c:Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mAccountName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lahf$1;->d:Lahf;

    iget-object v1, v1, Lahf;->a:Ljava/lang/String;

    invoke-static {v1}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sync calendar network error--->>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mAccountName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lahf$1;->d:Lahf;

    iget-object v1, v1, Lahf;->a:Ljava/lang/String;

    invoke-static {v1}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sync calendar service error--->>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 105
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;

    .line 1108
    if-nez p1, :cond_0

    .line 1109
    const-string/jumbo v0, "AbsSyncCalendarTask"

    const-string/jumbo v1, "sync calendar success, but result is null, so return"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :goto_0
    return-void

    .line 1112
    :cond_0
    const-string/jumbo v0, "AbsSyncCalendarTask"

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "sync calendar success, count: "

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v0, p0, Lahf$1;->d:Lahf;

    invoke-virtual {v0, p1}, Lahf;->a(Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;)V

    .line 1114
    iget-object v0, p0, Lahf$1;->a:Lyc;

    iput v3, v0, Lyc;->c:I

    .line 1115
    iget-object v0, p0, Lahf$1;->b:Lya;

    iget-object v1, p0, Lahf$1;->a:Lyc;

    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    .line 1117
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->isMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1118
    iget-object v0, p0, Lahf$1;->d:Lahf;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->getSyncKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lahf;->d:Ljava/lang/String;

    .line 1119
    iget-object v0, p0, Lahf$1;->d:Lahf;

    iget-object v0, v0, Lahf;->e:Ljava/lang/String;

    iget-object v1, p0, Lahf$1;->d:Lahf;

    iget-object v1, v1, Lahf;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1120
    const-string/jumbo v0, "AbsSyncCalendarTask"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "calendar current sync key is same as last, crrentSyncKey = "

    aput-object v2, v1, v4

    iget-object v2, p0, Lahf$1;->d:Lahf;

    iget-object v2, v2, Lahf;->d:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string/jumbo v2, ", oldSyncKey = "

    aput-object v2, v1, v5

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lahf$1;->d:Lahf;

    iget-object v4, v4, Lahf;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", hasMore: true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_1
    iget-object v0, p0, Lahf$1;->d:Lahf;

    invoke-virtual {v0}, Lahf;->g()V

    goto/16 :goto_0

    .line 1125
    :cond_2
    iget-object v0, p0, Lahf$1;->d:Lahf;

    iget-object v1, p0, Lahf$1;->d:Lahf;

    iget-object v1, v1, Lahf;->d:Ljava/lang/String;

    iput-object v1, v0, Lahf;->e:Ljava/lang/String;

    .line 1126
    iget-object v0, p0, Lahf$1;->d:Lahf;

    iget-object v1, p0, Lahf$1;->c:Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;

    invoke-virtual {v0, v1}, Lahf;->a(Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;)V

    goto/16 :goto_0
.end method
