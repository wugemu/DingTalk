.class Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$3;
.super Lcom/alibaba/alimei/framework/api/InnerRunnable;
.source "SettingApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->setShownType(ILxv;)V
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

.field final synthetic val$shownType:I


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$3;->this$0:Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;

    iput p2, p0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$3;->val$shownType:I

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
    .line 66
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v0

    .line 67
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    iget v2, p0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$3;->val$shownType:I

    invoke-interface {v0, v2}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->setShownType(I)Z

    move-result v1

    .line 68
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 69
    return-void
.end method
