.class final Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2$1;
.super Ljava/lang/Object;
.source "DingVoiceRecordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2;->onProgressListener(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2$1;->c:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2;

    iput p2, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2$1;->a:I

    iput p3, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 401
    iget v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2$1;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2$1;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 402
    .local v0, "pb":I
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2$1;->c:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2;

    iget-object v1, v1, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2$1;->c:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2;

    iget-object v1, v1, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setMax(I)V

    .line 404
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2$1;->c:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2;

    iget-object v1, v1, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setProgress(I)V

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2$1;->c:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2;

    iget-object v1, v1, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->f(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 407
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2$1;->c:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2;

    iget-object v1, v1, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->f(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    int-to-long v4, v0

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2$1;->c:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2;

    iget-object v6, v6, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v6}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->g(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)J

    move-result-wide v6

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Lcpu;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "\""

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    :cond_1
    return-void
.end method
