.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10$1;
.super Ljava/lang/Object;
.source "AudioMagicianImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10;->onError(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10;

.field final synthetic val$extra:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10;

    iput p2, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10$1;->val$what:I

    iput p3, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10$1;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x3

    .line 541
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$500(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/OnRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$500(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/OnRecordListener;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "MediaRecorder.OnErrorListener what="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10$1;->val$what:I

    .line 543
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " extra-code:"

    aput-object v3, v1, v2

    iget v2, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10$1;->val$extra:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-interface {v0, v4, v1}, Lcom/alibaba/doraemon/audio/OnRecordListener;->onRecordErrorListener(ILjava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$10;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$502(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Lcom/alibaba/doraemon/audio/OnRecordListener;)Lcom/alibaba/doraemon/audio/OnRecordListener;

    .line 546
    :cond_0
    return-void
.end method
