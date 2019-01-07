.class public abstract Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;
.super Lcom/alibaba/lightapp/runtime/Component$a;
.source "TabModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/lightapp/runtime/Component$a",
        "<",
        "Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Component$a;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public callbackInitFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;->getComponent()Lcom/alibaba/lightapp/runtime/Component;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    .line 34
    .local v0, "component":Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->callbackInitFail(Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method

.method public callbackInitSuccess(Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Lorg/json/JSONObject;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;->getComponent()Lcom/alibaba/lightapp/runtime/Component;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    .line 27
    .local v0, "component":Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->callbackInitSuccess(Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 30
    :cond_0
    return-void
.end method

.method public callbackStartFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;->getComponent()Lcom/alibaba/lightapp/runtime/Component;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    .line 48
    .local v0, "component":Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->callbackStartFail(Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method public callbackStartSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;->getComponent()Lcom/alibaba/lightapp/runtime/Component;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    .line 41
    .local v0, "component":Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->callbackStartSuccess(Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method public abstract config(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;)V
.end method

.method public abstract init(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;)V
.end method

.method public abstract select(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract start(Ljava/lang/String;ZLcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;)V
.end method
