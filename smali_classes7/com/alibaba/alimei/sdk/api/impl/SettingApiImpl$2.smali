.class Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$2;
.super Lcom/alibaba/alimei/framework/api/InnerRunnable;
.source "SettingApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->setSenderMail(Ljava/lang/String;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/InnerRunnable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;

.field final synthetic val$senderMail:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$2;->this$0:Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$2;->val$senderMail:Ljava/lang/String;

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
    .line 46
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v0

    .line 47
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$2;->this$0:Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->access$100(Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$2;->val$senderMail:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->setSenderName(Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 49
    return-void
.end method
