.class final Lcom/alibaba/android/ding/activity/DingCreateActivityV2$1;
.super Ljava/lang/Object;
.source "DingCreateActivityV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingCreateActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$1;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 306
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$1;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->a(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$1;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$1;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .line 307
    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->a(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 308
    invoke-static {}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->a()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 309
    invoke-static {}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->b()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 306
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setExpectedWidth(I)V

    .line 310
    return-void
.end method
