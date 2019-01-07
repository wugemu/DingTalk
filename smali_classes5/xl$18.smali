.class final Lxl$18;
.super Lcom/alibaba/alimei/framework/api/ApiResultRunnable;
.source "AccountApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxl;->queryAllAccounts(Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/ApiResultRunnable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lxl;


# direct methods
.method constructor <init>(Lxl;)V
    .locals 0
    .param p1, "this$0"    # Lxl;

    .prologue
    .line 515
    iput-object p1, p0, Lxl$18;->a:Lxl;

    invoke-direct {p0}, Lcom/alibaba/alimei/framework/api/ApiResultRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()Lcom/alibaba/alimei/framework/api/ApiResult;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 518
    new-instance v0, Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-direct {v0}, Lcom/alibaba/alimei/framework/api/ApiResult;-><init>()V

    .line 519
    .local v0, "apiResult":Lcom/alibaba/alimei/framework/api/ApiResult;
    iget-object v2, p0, Lxl$18;->a:Lxl;

    invoke-static {v2}, Lxl;->a(Lxl;)Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v1

    .line 520
    .local v1, "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    invoke-interface {v1}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->queryAllAccount()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 521
    return-object v0
.end method
