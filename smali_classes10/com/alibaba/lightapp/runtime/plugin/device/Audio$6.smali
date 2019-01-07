.class Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;
.super Ljava/lang/Object;
.source "Audio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->startRecord(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
    .line 282
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 285
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->startRecord(Lcom/alibaba/doraemon/audio/OnRecordListener;)V

    .line 321
    return-void
.end method
