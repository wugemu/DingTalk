.class final Lxl$19;
.super Lcom/alibaba/alimei/framework/api/ApiResultRunnable;
.source "AccountApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxl;->queryAccountByName(Ljava/lang/String;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/ApiResultRunnable",
        "<",
        "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
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
    .line 529
    iput-object p1, p0, Lxl$19;->b:Lxl;

    iput-object p2, p0, Lxl$19;->a:Ljava/lang/String;

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
    .line 532
    new-instance v0, Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-direct {v0}, Lcom/alibaba/alimei/framework/api/ApiResult;-><init>()V

    .line 533
    .local v0, "apiResult":Lcom/alibaba/alimei/framework/api/ApiResult;
    iget-object v2, p0, Lxl$19;->b:Lxl;

    invoke-static {v2}, Lxl;->a(Lxl;)Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v1

    .line 534
    .local v1, "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    iget-object v2, p0, Lxl$19;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->queryAccountByAccountName(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 535
    return-object v0
.end method
