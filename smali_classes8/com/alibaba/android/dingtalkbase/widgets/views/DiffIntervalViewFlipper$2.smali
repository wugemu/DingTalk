.class final Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper$2;
.super Ljava/lang/Object;
.source "DiffIntervalViewFlipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->showNext()V

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->getNextInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    :cond_0
    return-void
.end method
