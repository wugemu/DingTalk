.class Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;
.super Ljava/lang/Object;
.source "Audio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->play(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

.field final synthetic val$localPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;->val$localPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;->val$localPath:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->play(Ljava/lang/String;Lcom/alibaba/doraemon/audio/OnPlayListener;)V

    .line 176
    return-void
.end method
