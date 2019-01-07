.class Lcom/alibaba/doraemon/audio/opus/OpusRecorder$6;
.super Ljava/lang/Object;
.source "OpusRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->postCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$6;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$6;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    invoke-static {v0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->access$900(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnCompletedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$6;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    invoke-static {v0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->access$900(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnCompletedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnCompletedListener;->onCompleted()V

    .line 464
    :cond_0
    return-void
.end method
