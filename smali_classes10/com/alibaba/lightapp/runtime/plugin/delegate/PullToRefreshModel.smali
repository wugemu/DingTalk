.class public abstract Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;
.super Lcom/alibaba/lightapp/runtime/Component$a;
.source "PullToRefreshModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/lightapp/runtime/Component$a",
        "<",
        "Lcom/alibaba/lightapp/runtime/plugin/ui/PullToRefresh;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Component$a;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;->getComponent()Lcom/alibaba/lightapp/runtime/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;->getComponent()Lcom/alibaba/lightapp/runtime/Component;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/ui/PullToRefresh;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/ui/PullToRefresh;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;->getComponent()Lcom/alibaba/lightapp/runtime/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;->getComponent()Lcom/alibaba/lightapp/runtime/Component;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/ui/PullToRefresh;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/ui/PullToRefresh;->onRefresh()V

    .line 21
    :cond_0
    return-void
.end method

.method public varargs abstract setColors([I)Z
.end method

.method public abstract setEnabled(Z)Z
.end method

.method public abstract setRefreshing(Z)Z
.end method
