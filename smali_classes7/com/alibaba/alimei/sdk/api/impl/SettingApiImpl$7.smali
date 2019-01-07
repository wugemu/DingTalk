.class Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$7;
.super Lcom/alibaba/alimei/framework/api/InnerRunnable;
.source "SettingApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->setFolderSync2Server(IZLxv;)V
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

.field final synthetic val$folderType:I

.field final synthetic val$sync2Server:Z


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$7;->this$0:Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;

    iput p2, p0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$7;->val$folderType:I

    iput-boolean p3, p0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$7;->val$sync2Server:Z

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
    .line 133
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v0

    .line 134
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$7;->this$0:Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->access$500(Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$7;->val$folderType:I

    iget-boolean v4, p0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$7;->val$sync2Server:Z

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->setFolderTypeSync2Server(Ljava/lang/String;IZ)Z

    move-result v1

    .line 135
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 136
    return-void
.end method
