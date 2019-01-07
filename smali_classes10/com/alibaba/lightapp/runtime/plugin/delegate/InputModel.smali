.class public abstract Lcom/alibaba/lightapp/runtime/plugin/delegate/InputModel;
.super Lcom/alibaba/lightapp/runtime/Component$a;
.source "InputModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/lightapp/runtime/Component$a",
        "<",
        "Lcom/alibaba/lightapp/runtime/plugin/ui/Input;",
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
.method public callbackResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/InputModel;->getComponent()Lcom/alibaba/lightapp/runtime/Component;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/ui/Input;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Input;->callbackResult(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public abstract showInputBox(Ljava/lang/String;Ljava/lang/String;)V
.end method
