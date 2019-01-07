.class Lcom/alibaba/alimei/cspace/openapi/impl/RecentOperationAPIImpl$1;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "RecentOperationAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cspace/openapi/impl/RecentOperationAPIImpl;->queryRecentOperationByLocalId(JLxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lcom/alibaba/alimei/cspace/model/RecentOperationModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/cspace/openapi/impl/RecentOperationAPIImpl;

.field final synthetic val$localId:J


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cspace/openapi/impl/RecentOperationAPIImpl;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/cspace/openapi/impl/RecentOperationAPIImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/RecentOperationAPIImpl$1;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/RecentOperationAPIImpl;

    iput-wide p3, p0, Lcom/alibaba/alimei/cspace/openapi/impl/RecentOperationAPIImpl$1;->val$localId:J

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 4
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/openapi/impl/RecentOperationAPIImpl$1;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/RecentOperationAPIImpl;

    iget-object v1, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/RecentOperationAPIImpl$1;->val$localId:J

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/cspace/openapi/impl/RecentOperationAPIImpl;->access$000(Lcom/alibaba/alimei/cspace/openapi/impl/RecentOperationAPIImpl;Ljava/lang/String;J)Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 67
    return-void
.end method
