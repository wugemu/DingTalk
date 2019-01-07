.class final Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$4;
.super Liei$a;
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
    .line 623
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$4;->a:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    invoke-direct {p0}, Liei$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .param p1, "focusChange"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 627
    packed-switch p1, :pswitch_data_0

    .line 635
    :goto_0
    return-void

    .line 629
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$4;->a:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->j(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setProgress(I)V

    goto :goto_0

    .line 627
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
