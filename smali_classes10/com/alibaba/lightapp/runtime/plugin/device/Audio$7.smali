.class Lcom/alibaba/lightapp/runtime/plugin/device/Audio$7;
.super Ljava/lang/Object;
.source "Audio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->stopRecord(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$7;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$7;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->stopRecord()V

    .line 335
    return-void
.end method
