.class Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$5;
.super Lcom/alibaba/alimei/framework/api/InnerRunnable;
.source "SettingApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->selectFolderAsType(Ljava/lang/String;ILxv;)V
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

.field final synthetic val$folderServerId:Ljava/lang/String;

.field final synthetic val$folderType:I


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$5;->this$0:Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$5;->val$folderServerId:Ljava/lang/String;

    iput p3, p0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$5;->val$folderType:I

    invoke-direct {p0}, Lcom/alibaba/alimei/framework/api/InnerRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 5
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 101
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v0

    .line 102
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$5;->this$0:Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->access$300(Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$5;->val$folderServerId:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$5;->val$folderType:I

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->setFolderUserDefineType(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 103
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 104
    return-void
.end method
