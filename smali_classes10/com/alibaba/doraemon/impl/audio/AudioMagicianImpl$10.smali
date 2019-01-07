.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10;
.super Ljava/lang/Object;
.source "AudioMagicianImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->initOpusRecord(Lcom/alibaba/doraemon/audio/OnRecordListener;)Ljava/lang/String;
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
    .line 531
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;II)V
    .locals 2
    .param p1, "or"    # Lcom/alibaba/doraemon/audio/opus/OpusRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 535
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$600(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)V

    .line 536
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->stopRecord()V

    .line 537
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$702(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Ljava/io/File;)Ljava/io/File;

    .line 538
    new-instance v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10$1;-><init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10;II)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 548
    return-void
.end method
