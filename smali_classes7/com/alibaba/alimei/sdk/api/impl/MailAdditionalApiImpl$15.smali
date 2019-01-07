.class Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$15;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailAdditionalApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;->queryFrequentContacts(Ljava/lang/String;IZLxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/sdk/model/FrequentContactModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

.field final synthetic val$isIntelligent:Z

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$limit:I


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$15;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$15;->val$key:Ljava/lang/String;

    iput p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$15;->val$limit:I

    iput-boolean p5, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$15;->val$isIntelligent:Z

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 5
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 569
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getFrequentContactDataSource()Lcom/alibaba/alimei/sdk/datasource/FrequentContactDataSource;

    move-result-object v0

    .line 571
    .local v0, "dataSource":Lcom/alibaba/alimei/sdk/datasource/FrequentContactDataSource;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$15;->val$key:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$15;->val$limit:I

    iget-boolean v3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$15;->val$isIntelligent:Z

    iget-object v4, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/FrequentContactDataSource;->queryFrequentContacts(Ljava/lang/String;IZLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 572
    return-void
.end method
