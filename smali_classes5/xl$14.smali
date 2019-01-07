.class final Lxl$14;
.super Lcom/alibaba/alimei/framework/api/ApiResultRunnable;
.source "AccountApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxl;->logout(Ljava/lang/String;Lxv;)V
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
    .line 335
    iput-object p1, p0, Lxl$14;->b:Lxl;

    iput-object p2, p0, Lxl$14;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/alimei/framework/api/ApiResultRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()Lcom/alibaba/alimei/framework/api/ApiResult;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 339
    new-instance v0, Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-direct {v0}, Lcom/alibaba/alimei/framework/api/ApiResult;-><init>()V

    .line 340
    .local v0, "apiResult":Lcom/alibaba/alimei/framework/api/ApiResult;
    iget-object v3, p0, Lxl$14;->b:Lxl;

    invoke-static {v3}, Lxl;->a(Lxl;)Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v1

    .line 341
    .local v1, "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v2

    .line 342
    .local v2, "store":Lxz;
    iget-object v3, p0, Lxl$14;->b:Lxl;

    iget-object v4, p0, Lxl$14;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v4

    invoke-static {v3, v1, v2, v4}, Lxl;->a(Lxl;Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;Lxz;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V

    .line 343
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 344
    return-object v0
.end method
