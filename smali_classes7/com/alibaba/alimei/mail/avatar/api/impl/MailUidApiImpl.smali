.class public Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;
.super Lcom/alibaba/alimei/framework/api/AbsApiImpl;
.source "MailUidApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/mail/avatar/api/MailUidApi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/framework/api/AbsApiImpl;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/api/AbsApiImpl;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method static synthetic access$000()Lcom/alibaba/alimei/mail/avatar/datasource/MailUidDatasource;
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;->getMailUidDatasource()Lcom/alibaba/alimei/mail/avatar/datasource/MailUidDatasource;

    move-result-object v0

    return-object v0
.end method

.method private static getMailUidDatasource()Lcom/alibaba/alimei/mail/avatar/datasource/MailUidDatasource;
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/mail/avatar/datasource/impl/MailUidDatasourceImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/avatar/datasource/MailUidDatasource;

    return-object v0
.end method


# virtual methods
.method public clearUidCache(Lxv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl$3;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl$3;-><init>(Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;)V

    .line 67
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/InnerRunnable;, "Lcom/alibaba/alimei/framework/api/InnerRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 68
    return-void
.end method

.method public queryUidByEmail(Ljava/lang/String;Lxv;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;>;"
    new-instance v0, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl$1;-><init>(Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;Ljava/lang/String;)V

    .line 39
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/InnerRunnable;, "Lcom/alibaba/alimei/framework/api/InnerRunnable<Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 40
    return-void
.end method

.method public saveUidByEmail(Ljava/lang/String;JLxv;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p4, "listener":Lxv;, "Lxv<Lxv$a;>;"
    new-instance v0, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl$2;-><init>(Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;Ljava/lang/String;J)V

    .line 53
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/InnerRunnable;, "Lcom/alibaba/alimei/framework/api/InnerRunnable<Lxv$a;>;"
    invoke-virtual {p0, v0, p4}, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 54
    return-void
.end method
