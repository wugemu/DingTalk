.class public Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;
.super Ljava/lang/Object;
.source "BaseService.java"


# instance fields
.field private final asynchronous:Z

.field private final mAccountName:Ljava/lang/String;

.field private mAuthProvider:Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;
    .param p2, "asynchronous"    # Z
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;->mAuthProvider:Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    .line 29
    iput-boolean p2, p0, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;->asynchronous:Z

    .line 30
    iput-object p3, p0, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;->mAccountName:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method protected getAccessTokenAndCheckValid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;->getAccessTokenAndCheckValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAccessTokenAndCheckValid(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 51
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;->mAuthProvider:Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    if-nez v2, :cond_0

    .line 52
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;->mAuthProvider:Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;->mAuthProvider:Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    invoke-interface {v2}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->getAuthStore()Lcom/alibaba/alimei/restfulapi/auth/AuthStore;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/alibaba/alimei/restfulapi/auth/AuthStore;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "accessToken":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;->mAuthProvider:Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    invoke-interface {v2}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->getAuthLifecycleListener()Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;

    move-result-object v1

    .line 57
    .local v1, "listener":Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;
    if-eqz v1, :cond_2

    .line 58
    invoke-interface {v1, p1}, Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;->onAccountNotLogin(Ljava/lang/String;)V

    .line 61
    .end local v1    # "listener":Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;
    :cond_2
    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public isAsynchronousService()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;->asynchronous:Z

    return v0
.end method
