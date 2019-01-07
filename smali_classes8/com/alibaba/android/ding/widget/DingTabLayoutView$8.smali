.class final Lcom/alibaba/android/ding/widget/DingTabLayoutView$8;
.super Ljava/lang/Object;
.source "DingTabLayoutView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingTabLayoutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:J

.field final synthetic d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingTabLayoutView;Ljava/lang/String;Ljava/util/List;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$8;->d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    iput-object p2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$8;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$8;->b:Ljava/util/List;

    iput-wide p4, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$8;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v12, 0x0

    const-wide/16 v0, 0x0

    const/4 v8, 0x0

    .line 424
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$8;->d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->c(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a()V

    .line 425
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$8;->d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->c(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$8;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$8;->b:Ljava/util/List;

    iget-wide v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$8;->c:J

    .line 1561
    invoke-static {v5}, Lcom/alibaba/doraemon/utils/FileUtils;->isExist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1562
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->j:Z

    .line 1563
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, v4, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->c:Ljava/io/File;

    .line 1564
    iget-object v5, v4, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->c:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->d:Ljava/lang/String;

    .line 1565
    iput-object v6, v4, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->f:Ljava/util/List;

    .line 1566
    cmp-long v5, v2, v0

    if-lez v5, :cond_0

    move-wide v0, v2

    :cond_0
    iput-wide v0, v4, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->e:J

    .line 1567
    iget-object v0, v4, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1568
    iget-object v0, v4, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    iget-wide v8, v4, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->e:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v1, v8

    invoke-static {v1}, Lcpu;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1570
    :cond_1
    iget-object v0, v4, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    if-eqz v0, :cond_2

    .line 1571
    iget-object v0, v4, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    .line 2160
    invoke-virtual {v0, v6, v2, v3, v12}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a(Ljava/util/List;JZ)V

    .line 1573
    :cond_2
    sget-object v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_READY:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    invoke-virtual {v4, v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;)V

    .line 426
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$8;->d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->e()V

    .line 427
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$8;->d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->h(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)V

    .line 428
    return-void

    .line 1576
    :cond_3
    iput-boolean v12, v4, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->j:Z

    .line 1577
    iput-object v8, v4, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->c:Ljava/io/File;

    .line 1578
    iput-object v8, v4, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->d:Ljava/lang/String;

    .line 1579
    iput-object v8, v4, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->f:Ljava/util/List;

    .line 1580
    iput-wide v0, v4, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->e:J

    .line 1581
    iget-object v2, v4, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 1582
    iget-object v2, v4, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1584
    :cond_4
    iget-object v2, v4, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    if-eqz v2, :cond_5

    .line 1585
    iget-object v2, v4, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    .line 3160
    invoke-virtual {v2, v8, v0, v1, v12}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a(Ljava/util/List;JZ)V

    .line 1587
    :cond_5
    sget-object v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_INIT:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    invoke-virtual {v4, v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;)V

    goto :goto_0
.end method
