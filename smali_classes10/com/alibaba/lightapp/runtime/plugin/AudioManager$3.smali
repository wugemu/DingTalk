.class Lcom/alibaba/lightapp/runtime/plugin/AudioManager$3;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/audio/OnPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->play(Ljava/lang/String;Lcom/alibaba/doraemon/audio/OnPlayListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

.field final synthetic val$onPlayListener:Lcom/alibaba/doraemon/audio/OnPlayListener;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;Lcom/alibaba/doraemon/audio/OnPlayListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$3;->val$onPlayListener:Lcom/alibaba/doraemon/audio/OnPlayListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayErrorListener(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "s1"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->access$700(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;)V

    .line 237
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->access$800(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;)V

    .line 239
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$3;->val$onPlayListener:Lcom/alibaba/doraemon/audio/OnPlayListener;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$3;->val$onPlayListener:Lcom/alibaba/doraemon/audio/OnPlayListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/doraemon/audio/OnPlayListener;->onPlayErrorListener(Ljava/lang/String;ILjava/lang/String;)V

    .line 242
    :cond_0
    return-void
.end method

.method public onPlayStateListener(Ljava/lang/String;I)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 203
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->access$700(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;)V

    .line 205
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->access$800(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$3;->val$onPlayListener:Lcom/alibaba/doraemon/audio/OnPlayListener;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$3;->val$onPlayListener:Lcom/alibaba/doraemon/audio/OnPlayListener;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/doraemon/audio/OnPlayListener;->onPlayStateListener(Ljava/lang/String;I)V

    .line 211
    :cond_1
    return-void
.end method

.method public onProgressListener(Ljava/lang/String;II)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$3;->val$onPlayListener:Lcom/alibaba/doraemon/audio/OnPlayListener;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$3;->val$onPlayListener:Lcom/alibaba/doraemon/audio/OnPlayListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/doraemon/audio/OnPlayListener;->onProgressListener(Ljava/lang/String;II)V

    .line 232
    :cond_0
    return-void
.end method

.method public onRequestFinsh(Ljava/lang/String;I)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$3;->val$onPlayListener:Lcom/alibaba/doraemon/audio/OnPlayListener;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$3;->val$onPlayListener:Lcom/alibaba/doraemon/audio/OnPlayListener;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/doraemon/audio/OnPlayListener;->onRequestFinsh(Ljava/lang/String;I)V

    .line 225
    :cond_0
    return-void
.end method

.method public onRequestStart(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$3;->val$onPlayListener:Lcom/alibaba/doraemon/audio/OnPlayListener;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$3;->val$onPlayListener:Lcom/alibaba/doraemon/audio/OnPlayListener;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/audio/OnPlayListener;->onRequestStart(Ljava/lang/String;)V

    .line 218
    :cond_0
    return-void
.end method
