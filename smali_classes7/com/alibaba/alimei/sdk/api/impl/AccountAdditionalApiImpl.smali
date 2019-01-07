.class public Lcom/alibaba/alimei/sdk/api/impl/AccountAdditionalApiImpl;
.super Lcom/alibaba/alimei/framework/api/AbsApiImpl;
.source "AccountAdditionalApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/api/AccountAdditionalApi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/framework/api/AbsApiImpl;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public queryNewMailCount(Lxv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laha;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/Map<Ljava/lang/String;Laha;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/AccountAdditionalApiImpl$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/sdk/api/impl/AccountAdditionalApiImpl$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/AccountAdditionalApiImpl;)V

    .line 34
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/InnerRunnable;, "Lcom/alibaba/alimei/framework/api/InnerRunnable<Ljava/util/Map<Ljava/lang/String;Laha;>;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/AccountAdditionalApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 35
    return-void
.end method
