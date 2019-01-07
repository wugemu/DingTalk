.class final Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView$a;
.super Ljava/lang/Object;
.source "WaveView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;)V
    .locals 1
    .param p1, "view"    # Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView$a;->a:Ljava/lang/ref/WeakReference;

    .line 141
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 144
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    .line 147
    .local v0, "view":Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->invalidate()V

    .line 152
    .end local v0    # "view":Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v1, p0, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    return-void
.end method
