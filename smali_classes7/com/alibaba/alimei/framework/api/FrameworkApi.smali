.class public abstract Lcom/alibaba/alimei/framework/api/FrameworkApi;
.super Ljava/lang/Object;
.source "FrameworkApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getApiFactory()Lcom/alibaba/alimei/framework/api/ApiFactory;
    .locals 1

    .prologue
    .line 10
    invoke-static {}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getInstance()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    return-object v0
.end method

.method public static registerContentObserver(Ljava/lang/Class;Lxm;)V
    .locals 1
    .param p1, "observer"    # Lxm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ">;",
            "Lxm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->registerContentObserver(Ljava/lang/Class;Lxm;)V

    .line 20
    return-void
.end method

.method public static unregisterContentObserver(Ljava/lang/Class;Lxm;)V
    .locals 1
    .param p1, "observer"    # Lxm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ">;",
            "Lxm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->unregisterContentObserver(Ljava/lang/Class;Lxm;)V

    .line 28
    return-void
.end method
