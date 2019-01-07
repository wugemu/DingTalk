.class Lcom/alibaba/lightapp/runtime/plugin/AudioManager$4;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Lifw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->uploadFile(Lifw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

.field final synthetic val$uploadObserver:Lifw;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;Lifw;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$4;->val$uploadObserver:Lifw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUploadFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "errorDesc"    # Ljava/lang/String;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$4;->val$uploadObserver:Lifw;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$4;->val$uploadObserver:Lifw;

    invoke-interface {v0, p1, p2, p3}, Lifw;->onUploadFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 355
    :cond_0
    return-void
.end method

.method public onUploadFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$4;->val$uploadObserver:Lifw;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$4;->val$uploadObserver:Lifw;

    invoke-interface {v0, p1, p2}, Lifw;->onUploadFinished(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_0
    return-void
.end method

.method public updateUploadProgress(Ljava/lang/String;III)V
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "totalSize"    # I
    .param p3, "uploadSize"    # I
    .param p4, "progress"    # I

    .prologue
    .line 335
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$4;->val$uploadObserver:Lifw;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$4;->val$uploadObserver:Lifw;

    invoke-interface {v0, p1, p2, p3, p4}, Lifw;->updateUploadProgress(Ljava/lang/String;III)V

    .line 338
    :cond_0
    return-void
.end method
