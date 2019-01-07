.class public final Lpn;
.super Ljava/lang/Object;
.source "CMail.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/alibaba/alimei/mail/avatar/api/MailUidApi;
    .locals 3

    .prologue
    .line 24
    invoke-static {}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getInstance()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    const/4 v1, 0x0

    const-class v2, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/avatar/api/MailUidApi;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/alimei/mail/search/api/MailSearchApi;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getInstance()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/mail/search/api/impl/MailSearchApiImpl;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/search/api/MailSearchApi;

    return-object v0
.end method

.method public static b()Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasource;
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasourceImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasource;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;
    .locals 1
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    invoke-static {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/DisplayerFactory;->getInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/sdk/displayer/Displayer;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    return-object v0
.end method
