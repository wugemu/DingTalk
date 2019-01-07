.class Lcom/alibaba/lightapp/runtime/plugin/device/Audio$8;
.super Ljava/lang/Object;
.source "Audio.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->translateVoice(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 413
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    const/4 v1, 0x3

    invoke-static {v1, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1700(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1800(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 405
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$8;->onProgress(Ljava/lang/Void;I)V

    return-void
.end method

.method public onProgress(Ljava/lang/Void;I)V
    .locals 0
    .param p1, "aVoid"    # Ljava/lang/Void;
    .param p2, "i"    # I

    .prologue
    .line 419
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 405
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$8;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1600(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)V

    .line 409
    return-void
.end method
