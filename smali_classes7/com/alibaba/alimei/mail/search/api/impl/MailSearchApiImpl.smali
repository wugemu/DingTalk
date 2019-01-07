.class public Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;
.super Lcom/alibaba/alimei/framework/api/AbsApiImpl;
.source "MailSearchApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/mail/search/api/MailSearchApi;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/api/AbsApiImpl;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;)Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasource;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;->getHistoryDatasource()Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasource;

    move-result-object v0

    return-object v0
.end method

.method private getHistoryDatasource()Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasource;
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lpn;->b()Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasource;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearHistory(ILxv;)V
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 76
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl$4;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl$4;-><init>(Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;Ljava/lang/String;)V

    .line 85
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 86
    return-void
.end method

.method public clearHistory(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 62
    .local p1, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl$3;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl$3;-><init>(Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;Ljava/lang/String;)V

    .line 71
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 72
    return-void
.end method

.method public queryAllSearchHistory(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 29
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl$1;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl$1;-><init>(Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;Ljava/lang/String;)V

    .line 38
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 39
    return-void
.end method

.method public saveHistory(ILjava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "searchKey"    # Ljava/lang/String;
    .param p3, "extend"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 48
    .local p4, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl$2;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl$2;-><init>(Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p4}, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 58
    return-void
.end method

.method public saveHistory(ILjava/lang/String;Lxv;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "searchKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;->saveHistory(ILjava/lang/String;Ljava/lang/String;Lxv;)V

    .line 44
    return-void
.end method
