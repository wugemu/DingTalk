.class Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$3;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "TagApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->updateHistoryStatus(Ljava/lang/String;JZLxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;

.field final synthetic val$hasMore:Z

.field final synthetic val$tagId:Ljava/lang/String;

.field final synthetic val$timeStamp:J


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$3;->this$0:Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$3;->val$tagId:Ljava/lang/String;

    iput-wide p4, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$3;->val$timeStamp:J

    iput-boolean p6, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$3;->val$hasMore:Z

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 9
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 87
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getTagDatasource()Lcom/alibaba/alimei/sdk/datasource/TagDatasource;

    move-result-object v1

    .line 88
    .local v1, "labelDatasource":Lcom/alibaba/alimei/sdk/datasource/TagDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$3;->val$tagId:Ljava/lang/String;

    iget-wide v6, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$3;->val$timeStamp:J

    iget-boolean v8, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$3;->val$hasMore:Z

    invoke-interface/range {v1 .. v8}, Lcom/alibaba/alimei/sdk/datasource/TagDatasource;->updateHistoryStatus(JLjava/lang/String;Ljava/lang/String;JZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 89
    return-void
.end method
