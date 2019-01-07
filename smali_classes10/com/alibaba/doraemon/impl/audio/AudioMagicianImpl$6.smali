.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$6;
.super Ljava/lang/Object;
.source "AudioMagicianImpl.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->initCommonRecord(Lcom/alibaba/doraemon/audio/OnRecordListener;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$6;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 4
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 427
    invoke-static {}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "MediaRecorder error type:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 428
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " extra-code:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 427
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->outLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->stop()V

    .line 430
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    .line 431
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$6;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$300(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)V

    .line 432
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$6;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$400(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 433
    new-instance v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$6$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$6$1;-><init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$6;II)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 443
    return-void
.end method
