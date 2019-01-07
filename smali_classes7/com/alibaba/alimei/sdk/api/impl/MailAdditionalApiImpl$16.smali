.class Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$16;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailAdditionalApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;->checkAndDeleteFrequentContactsWhenOver(IILxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

.field final synthetic val$max:I

.field final synthetic val$top:I


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$16;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

    iput p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$16;->val$max:I

    iput p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$16;->val$top:I

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
    .line 582
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getFrequentContactDataSource()Lcom/alibaba/alimei/sdk/datasource/FrequentContactDataSource;

    move-result-object v0

    .line 583
    .local v0, "dataSource":Lcom/alibaba/alimei/sdk/datasource/FrequentContactDataSource;
    iget v1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$16;->val$max:I

    iget v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$16;->val$top:I

    iget-object v3, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/FrequentContactDataSource;->checkAndDeleteTopByModifyTimeOrder(IILjava/lang/String;)V

    .line 584
    return-void
.end method
