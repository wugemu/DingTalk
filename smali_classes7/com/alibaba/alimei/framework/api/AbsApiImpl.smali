.class public abstract Lcom/alibaba/alimei/framework/api/AbsApiImpl;
.super Ljava/lang/Object;
.source "AbsApiImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsApiImpl"


# instance fields
.field private final mAccountName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/alibaba/alimei/framework/api/AbsApiImpl;->mAccountName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v0

    .line 35
    .local v0, "configuration":Lcom/alibaba/alimei/restfulapi/ApiConfiguration;
    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    .line 38
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/framework/api/ApiResultRunnable",
            "<TT;>;",
            "Lxv",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 43
    .local p1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<TT;>;"
    .local p2, "listener":Lxv;, "Lxv<TT;>;"
    new-instance v0, Lcom/alibaba/alimei/framework/api/AbsApiImpl$1;

    invoke-static {}, Lcom/alibaba/alimei/framework/api/AbsApiImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/alibaba/alimei/framework/api/AbsApiImpl$1;-><init>(Lcom/alibaba/alimei/framework/api/AbsApiImpl;Landroid/os/Handler;Lxv;Lcom/alibaba/alimei/framework/api/ApiResultRunnable;)V

    .line 83
    .local v0, "task":Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;->execute()V

    .line 84
    return-void
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/alimei/framework/api/AbsApiImpl;->mAccountName:Ljava/lang/String;

    return-object v0
.end method
