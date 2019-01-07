.class final Lcom/alibaba/android/ding/widget/DingVoiceRecordView$1;
.super Landroid/content/BroadcastReceiver;
.source "DingVoiceRecordView.java"


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
    .line 109
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$1;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$1;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Lcom/alibaba/doraemon/audio/AudioMagician;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/doraemon/audio/AudioMagician;->stopRecord()V

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$1;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Lcom/alibaba/doraemon/audio/AudioMagician;

    move-result-object v0

    const/16 v1, 0x32

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/audio/AudioMagician;->setRecordSampleCounts(I)Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$1;->a:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Z)V

    .line 115
    return-void
.end method
