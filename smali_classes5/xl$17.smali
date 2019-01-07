.class final Lxl$17;
.super Lcom/alibaba/alimei/framework/api/ApiResultRunnable;
.source "AccountApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxl;->setDefaultAccount(Ljava/lang/String;Lxv;)V
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
    .line 416
    iput-object p1, p0, Lxl$17;->b:Lxl;

    iput-object p2, p0, Lxl$17;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/alimei/framework/api/ApiResultRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()Lcom/alibaba/alimei/framework/api/ApiResult;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 419
    new-instance v0, Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-direct {v0}, Lcom/alibaba/alimei/framework/api/ApiResult;-><init>()V

    .line 420
    .local v0, "apiResult":Lcom/alibaba/alimei/framework/api/ApiResult;
    iget-object v3, p0, Lxl$17;->b:Lxl;

    invoke-static {v3}, Lxl;->a(Lxl;)Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v1

    .line 421
    .local v1, "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    iget-object v3, p0, Lxl$17;->a:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->setDefaultAccount(Ljava/lang/String;)I

    .line 422
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 425
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v2

    .line 426
    .local v2, "store":Lxz;
    if-eqz v2, :cond_0

    .line 427
    invoke-virtual {v2}, Lxz;->b()V

    .line 429
    :cond_0
    return-object v0
.end method
