.class Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl$2;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailSearchApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;->saveHistory(ILjava/lang/String;Ljava/lang/String;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;

.field final synthetic val$extend:Ljava/lang/String;

.field final synthetic val$searchKey:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl$2;->this$0:Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;

    iput p3, p0, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl$2;->val$type:I

    iput-object p4, p0, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl$2;->val$searchKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl$2;->val$extend:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 7
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl$2;->this$0:Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;->access$000(Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;)Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasource;

    move-result-object v1

    .line 52
    .local v1, "historyDatasource":Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget v4, p0, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl$2;->val$type:I

    iget-object v5, p0, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl$2;->val$searchKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl$2;->val$extend:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasource;->saveHistory(JILjava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 54
    return-void
.end method
