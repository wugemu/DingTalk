.class final Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$1;
.super Landroid/content/BroadcastReceiver;
.source "VoiceRecordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$1;->a:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$1;->a:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)Lcom/alibaba/doraemon/audio/AudioMagician;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$1;->a:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a()V

    .line 185
    :cond_0
    return-void
.end method
