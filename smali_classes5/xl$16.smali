.class final Lxl$16;
.super Lcom/alibaba/alimei/framework/api/ApiResultRunnable;
.source "AccountApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxl;->removeAccount(Ljava/lang/String;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/ApiResultRunnable",
        "<",
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lxl;


# direct methods
.method constructor <init>(Lxl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lxl;

    .prologue
    .line 386
    iput-object p1, p0, Lxl$16;->b:Lxl;

    iput-object p2, p0, Lxl$16;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/alimei/framework/api/ApiResultRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()Lcom/alibaba/alimei/framework/api/ApiResult;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 390
    new-instance v1, Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-direct {v1}, Lcom/alibaba/alimei/framework/api/ApiResult;-><init>()V

    .line 391
    .local v1, "apiResult":Lcom/alibaba/alimei/framework/api/ApiResult;
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v3

    .line 392
    .local v3, "store":Lxz;
    if-nez v3, :cond_0

    .line 393
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 408
    :goto_0
    return-object v1

    .line 396
    :cond_0
    iget-object v4, p0, Lxl$16;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    .line 398
    .local v0, "account":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v0, :cond_1

    .line 399
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;->getInstance()Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;

    move-result-object v4

    iget-object v5, p0, Lxl$16;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;->deleteDomainInfo(Ljava/lang/String;)V

    .line 400
    iget-object v4, p0, Lxl$16;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lxz;->deleteAccountFromCache(Ljava/lang/String;)V

    .line 401
    iget-object v4, p0, Lxl$16;->b:Lxl;

    invoke-static {v4}, Lxl;->a(Lxl;)Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v2

    .line 402
    .local v2, "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    iget-object v4, p0, Lxl$16;->a:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->handleAccountDelete(Ljava/lang/String;Z)I

    .line 404
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/alibaba/alimei/framework/db/AutoTryTaskDatasource;->deleteAutoTaskByAccountId(J)V

    .line 405
    invoke-static {}, Lxr;->a()Lxr;

    move-result-object v4

    .line 1237
    if-eqz v0, :cond_1

    .line 1238
    iget-object v4, v4, Lxr;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1239
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1240
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/framework/account/AccountListener;

    .line 1241
    invoke-interface {v4, v0}, Lcom/alibaba/alimei/framework/account/AccountListener;->onAccountRemoved(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V

    goto :goto_1

    .line 407
    .end local v2    # "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    :cond_1
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0
.end method
