.class final Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$3$1;
.super Ljava/lang/Object;
.source "VoiceRecordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$3;->onRecordCompleted(Ljava/lang/String;Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$3;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$3$1;->a:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$3$1;->a:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$3;->a:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$3$1;->a:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$3;->a:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$3$1;->a:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$3;->a:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->p(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)V

    .line 429
    :cond_0
    return-void
.end method
