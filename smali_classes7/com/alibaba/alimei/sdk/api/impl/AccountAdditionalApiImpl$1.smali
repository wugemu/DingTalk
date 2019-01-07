.class Lcom/alibaba/alimei/sdk/api/impl/AccountAdditionalApiImpl$1;
.super Lcom/alibaba/alimei/framework/api/InnerRunnable;
.source "AccountAdditionalApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/AccountAdditionalApiImpl;->queryNewMailCount(Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/InnerRunnable",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Laha;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/AccountAdditionalApiImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/AccountAdditionalApiImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/AccountAdditionalApiImpl;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/AccountAdditionalApiImpl$1;->this$0:Lcom/alibaba/alimei/sdk/api/impl/AccountAdditionalApiImpl;

    invoke-direct {p0}, Lcom/alibaba/alimei/framework/api/InnerRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 2
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 29
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v0

    .line 30
    .local v0, "messageDatasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-interface {v0}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryNewMailCounts()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 31
    return-void
.end method
