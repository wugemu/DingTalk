.class Lcom/alibaba/lightapp/runtime/plugin/AudioManager$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->access$000(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;)Lcom/alibaba/doraemon/audio/AudioMagician;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/doraemon/audio/AudioMagician;->stopRecord()V

    .line 80
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->access$100(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;)V

    .line 81
    return-void
.end method
