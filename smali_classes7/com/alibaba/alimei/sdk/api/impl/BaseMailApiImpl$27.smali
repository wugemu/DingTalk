.class Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$27;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "BaseMailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->searchLocalAttachmentByPage(Ljava/lang/String;IILxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

.field final synthetic val$keyword:Ljava/lang/String;

.field final synthetic val$offset:I

.field final synthetic val$pageSize:I


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$27;->this$0:Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$27;->val$keyword:Ljava/lang/String;

    iput p4, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$27;->val$offset:I

    iput p5, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$27;->val$pageSize:I

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 8
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 651
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    .line 653
    .local v1, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 654
    .local v7, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;>;>;"
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$27;->val$keyword:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$27;->val$offset:I

    iget v6, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$27;->val$pageSize:I

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->searchLocalMailAttachmentsByPage(JLjava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 655
    .local v0, "mailAttachList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$27;->val$keyword:Ljava/lang/String;

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iput-object v7, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 657
    return-void
.end method
