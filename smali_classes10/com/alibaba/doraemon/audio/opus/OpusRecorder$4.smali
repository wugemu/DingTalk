.class Lcom/alibaba/doraemon/audio/opus/OpusRecorder$4;
.super Ljava/lang/Object;
.source "OpusRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->postError(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

.field final synthetic val$extra:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$4;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    iput p2, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$4;->val$extra:I

    iput p3, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$4;->val$what:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 434
    iget v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$4;->val$extra:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 435
    invoke-static {}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->increaseOpusRecordErrorTimes()V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$4;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    invoke-static {v0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->access$800(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$4;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    invoke-static {v0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->access$800(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$4;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    iget v2, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$4;->val$what:I

    iget v3, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$4;->val$extra:I

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnErrorListener;->onError(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;II)V

    .line 440
    :cond_1
    return-void
.end method
