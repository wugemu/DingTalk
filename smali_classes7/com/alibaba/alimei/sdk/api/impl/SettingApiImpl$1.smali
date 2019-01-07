.class Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$1;
.super Lcom/alibaba/alimei/framework/api/InnerRunnable;
.source "SettingApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->querySenderMail(Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/InnerRunnable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$1;->this$0:Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;

    invoke-direct {p0}, Lcom/alibaba/alimei/framework/api/InnerRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 3
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 32
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v1

    .line 33
    .local v1, "datasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$1;->this$0:Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->access$000(Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getSenderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "accountName":Ljava/lang/String;
    iput-object v0, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 35
    return-void
.end method
