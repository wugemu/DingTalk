.class Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl$1;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailSearchApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;->queryAllSearchHistory(Lxv;)V
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
        "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl$1;->this$0:Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;

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
    .line 32
    iget-object v2, p0, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl$1;->this$0:Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;->access$000(Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;)Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasource;

    move-result-object v0

    .line 33
    .local v0, "historyDatasource":Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasource;->queryAllSearchHistory(J)Ljava/util/List;

    move-result-object v1

    .line 34
    .local v1, "historyModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 35
    return-void
.end method
