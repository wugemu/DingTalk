.class final Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;
.super Ljava/lang/Object;
.source "DingVoiceRecordView.java"

# interfaces
.implements Lcom/alibaba/doraemon/audio/OnRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingVoiceRecordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifySampleResult(JLjava/util/List;)V
    .locals 5
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 648
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 649
    .local v0, "seconds":I
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->i(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v1, v0, p3}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;ILjava/util/List;)V

    .line 653
    :cond_0
    const/16 v1, 0x3c

    if-lt v0, v1, :cond_1

    .line 654
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Lcom/alibaba/doraemon/audio/AudioMagician;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/doraemon/audio/AudioMagician;->stopRecord()V

    .line 655
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Lcom/alibaba/doraemon/audio/AudioMagician;

    move-result-object v1

    const/16 v2, 0x32

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/audio/AudioMagician;->setRecordSampleCounts(I)Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 657
    :cond_1
    return-void
.end method

.method public final onRecordCompleted(Ljava/lang/String;Ljava/util/List;J)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-wide/16 v6, 0x3e8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 605
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->c(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 606
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v0, v3}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;Z)Z

    .line 607
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;Ljava/io/File;)Ljava/io/File;

    .line 608
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->k(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;Ljava/lang/String;)Ljava/lang/String;

    .line 609
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    const/16 v1, 0x32

    invoke-static {p2, v1}, Lcom/alibaba/doraemon/utils/MathUtil;->selectQuadraticList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;Ljava/util/List;)Ljava/util/List;

    .line 611
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->f(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->f(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxp$c;->ui_common_level1_button_bg_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 614
    :cond_0
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lciu;->a(Ljava/lang/String;I)V

    .line 615
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v0, p3, p4}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;J)J

    .line 617
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->g(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-gez v0, :cond_2

    .line 618
    sget v0, Laxp$i;->ding_voice_too_short:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 619
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Z)V

    .line 644
    :cond_1
    :goto_0
    return-void

    .line 622
    :cond_2
    invoke-static {}, Lhcs;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 623
    sget v0, Laxp$i;->sdcard_unavailable:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 624
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Z)V

    .line 625
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->k(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->k(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3

    .line 627
    const-string/jumbo v0, "delete file failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v0, v4}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 634
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->f(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 635
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->f(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->g(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)J

    move-result-wide v2

    div-long/2addr v2, v6

    long-to-int v1, v2

    invoke-static {v1}, Lcpu;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 638
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    move-result-object v0

    .line 1160
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a(Ljava/util/List;JZ)V

    .line 640
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    sget-object v1, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_READY:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;)V

    .line 641
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->k(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->k(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 642
    sget v0, Laxp$i;->ding_record_access_denied:I

    invoke-static {v0}, Lcms;->a(I)V

    goto/16 :goto_0
.end method

.method public final onRecordErrorListener(ILjava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 661
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v0, v3}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;Z)Z

    .line 662
    if-ne v3, p1, :cond_1

    .line 663
    sget v0, Laxp$i;->sdcard_unavailable:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 668
    :cond_0
    :goto_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "voice record error :"

    aput-object v2, v0, v1

    const-string/jumbo v1, "errorCode="

    aput-object v1, v0, v3

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, " errorMsg="

    aput-object v1, v0, v4

    const/4 v1, 0x4

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 669
    return-void

    .line 664
    :cond_1
    if-ne v4, p1, :cond_0

    .line 665
    sget v0, Laxp$i;->ding_record_access_denied:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final onRecordStart(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 598
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;Z)Z

    .line 599
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->c(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 600
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v0

    new-instance v1, Lciu$a;

    invoke-static {}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->j(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Lciu$b;

    move-result-object v3

    invoke-direct {v1, v2, v4, v4, v3}, Lciu$a;-><init>(Ljava/lang/String;IILciu$b;)V

    invoke-virtual {v0, v1}, Lciu;->a(Lciu$a;)Z

    .line 601
    return-void
.end method
