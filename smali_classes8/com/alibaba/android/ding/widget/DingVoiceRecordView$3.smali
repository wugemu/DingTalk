.class final Lcom/alibaba/android/ding/widget/DingVoiceRecordView$3;
.super Ljava/lang/Object;
.source "DingVoiceRecordView.java"

# interfaces
.implements Lciu$b;


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
    .line 432
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$3;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lciu$a;)V
    .locals 2
    .param p1, "newStatus"    # Lciu$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 435
    invoke-static {}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b()Ljava/lang/String;

    move-result-object v0

    .line 1048
    iget-object v1, p1, Lciu$a;->a:Ljava/lang/String;

    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$3;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Lcom/alibaba/doraemon/audio/AudioMagician;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/doraemon/audio/AudioMagician;->stopRecord()V

    .line 437
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$3;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Lcom/alibaba/doraemon/audio/AudioMagician;

    move-result-object v0

    const/16 v1, 0x32

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/audio/AudioMagician;->setRecordSampleCounts(I)Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 438
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$3;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Z)V

    .line 440
    :cond_0
    return-void
.end method

.method public final b(Lciu$a;)V
    .locals 1
    .param p1, "oldInfo"    # Lciu$a;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$3;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->i(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$3;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$3;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$3;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lciu;->a(Lciu$a;)Z

    .line 449
    :cond_0
    return-void
.end method
