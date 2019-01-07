.class public abstract Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.super Lcom/alibaba/alimei/framework/api/ApiResultRunnable;
.source "AccountCheckRunnable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/alimei/framework/api/ApiResultRunnable",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountCheckRunnable"


# instance fields
.field private final accountName:Ljava/lang/String;

.field private mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 21
    .local p0, "this":Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;, "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable<TT;>;"
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/api/ApiResultRunnable;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;->accountName:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public final execute()Lcom/alibaba/alimei/framework/api/ApiResult;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 27
    .local p0, "this":Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;, "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable<TT;>;"
    new-instance v0, Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-direct {v0}, Lcom/alibaba/alimei/framework/api/ApiResult;-><init>()V

    .line 28
    .local v0, "apiResult":Lcom/alibaba/alimei/framework/api/ApiResult;
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v1

    .line 29
    .local v1, "store":Lxz;
    iget-object v3, p0, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 30
    iget-object v3, p0, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    if-nez v3, :cond_0

    .line 31
    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 42
    :goto_0
    return-object v0

    .line 36
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {p0, v0, v3}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v2

    .line 38
    .local v2, "tr":Ljava/lang/Throwable;
    const-string/jumbo v3, "AccountCheckRunnable"

    invoke-static {v3, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->DBError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v3, v2}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0
.end method

.method public abstract handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
.end method
