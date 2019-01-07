.class Lcom/alibaba/doraemon/audio/opus/OpusRecorder$2;
.super Ljava/lang/Object;
.source "OpusRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->startRecording(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

.field final synthetic val$audioSource:I

.field final synthetic val$file:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$2;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    iput-object p2, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$2;->val$file:Ljava/lang/String;

    iput p3, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$2;->val$audioSource:I

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
    .line 181
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$2;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$2;->val$file:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$2;->val$audioSource:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->access$600(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;Ljava/lang/String;I)V

    .line 182
    return-void
.end method
