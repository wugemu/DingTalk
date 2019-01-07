.class final Lehx$3;
.super Ljava/lang/Object;
.source "FocusFloatingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lehx;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lehx;


# direct methods
.method constructor <init>(Lehx;)V
    .locals 0
    .param p1, "this$0"    # Lehx;

    .prologue
    .line 86
    iput-object p1, p0, Lehx$3;->a:Lehx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-object v0, p0, Lehx$3;->a:Lehx;

    invoke-static {v0}, Lehx;->b(Lehx;)Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    move-result-object v0

    .line 1123
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->d:Z

    .line 1124
    iget-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->c:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 1125
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->c:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1126
    iput-object v3, v0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->c:Ljava/lang/Runnable;

    .line 90
    :cond_0
    iget-object v0, p0, Lehx$3;->a:Lehx;

    invoke-static {v0}, Lehx;->b(Lehx;)Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->a()V

    .line 91
    iget-object v0, p0, Lehx$3;->a:Lehx;

    invoke-static {v0, v3}, Lehx;->a(Lehx;Lcom/alibaba/android/projection/widget/ProjectionFloatView;)Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    .line 92
    return-void
.end method
