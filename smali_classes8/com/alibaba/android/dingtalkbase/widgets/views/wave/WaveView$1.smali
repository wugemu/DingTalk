.class final Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView$1;
.super Ljava/lang/Object;
.source "WaveView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->invalidate()V

    .line 90
    return-void
.end method
