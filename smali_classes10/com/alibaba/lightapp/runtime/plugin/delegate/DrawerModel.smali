.class public abstract Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;
.super Lcom/alibaba/lightapp/runtime/Component$a;
.source "DrawerModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/lightapp/runtime/Component$a",
        "<",
        "Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Component$a;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackInitStatus(ILorg/json/JSONObject;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "extras"    # Lorg/json/JSONObject;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;->getComponent()Lcom/alibaba/lightapp/runtime/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;->getComponent()Lcom/alibaba/lightapp/runtime/Component;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->callbackInitStatus(ILorg/json/JSONObject;)V

    .line 29
    :cond_0
    return-void
.end method

.method public abstract close()Z
.end method

.method public abstract config(Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;)V
.end method

.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract init(Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;)V
.end method

.method public abstract open()Z
.end method
