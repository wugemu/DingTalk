.class public abstract Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;
.super Lcom/alibaba/lightapp/runtime/Component$a;
.source "NavModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/lightapp/runtime/Component$a",
        "<",
        "Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Component$a;-><init>()V

    .line 78
    return-void
.end method


# virtual methods
.method public callbackGoFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->getComponent()Lcom/alibaba/lightapp/runtime/Component;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    .line 58
    .local v0, "component":Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->callbackGoFail(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method public callbackGoSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->getComponent()Lcom/alibaba/lightapp/runtime/Component;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    .line 51
    .local v0, "component":Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->callbackGoSuccess(Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method

.method public callbackPopFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->getComponent()Lcom/alibaba/lightapp/runtime/Component;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    .line 72
    .local v0, "component":Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->callbackPopFail(Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public callbackPopSuccess()V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->getComponent()Lcom/alibaba/lightapp/runtime/Component;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    .line 65
    .local v0, "component":Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->callbackPopSuccess()V

    .line 68
    :cond_0
    return-void
.end method

.method public callbackPreloadFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->getComponent()Lcom/alibaba/lightapp/runtime/Component;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    .line 44
    .local v0, "component":Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->callbackPreloadFail(Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method public callbackPreloadSuccess(Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Lorg/json/JSONObject;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->getComponent()Lcom/alibaba/lightapp/runtime/Component;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    .line 37
    .local v0, "component":Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->callbackPreloadSuccess(Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 40
    :cond_0
    return-void
.end method

.method public abstract closePage()V
.end method

.method public abstract getCurrentId()Ljava/lang/String;
.end method

.method public abstract goPage(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)V
.end method

.method public abstract hasPage(Ljava/lang/String;)Z
.end method

.method public abstract popPage(Ljava/lang/String;)V
.end method

.method public abstract preloadPages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/model/WebViewModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pushPage(Lcom/alibaba/lightapp/runtime/model/WebViewModel;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)V
.end method

.method public abstract recyclePage(Ljava/lang/String;)V
.end method
