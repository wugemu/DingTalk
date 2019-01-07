.class final Lin/srain/cube/views/ptr/PtrFrameLayout$a;
.super Ljava/lang/Object;
.source "PtrFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/srain/cube/views/ptr/PtrFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lin/srain/cube/views/ptr/PtrFrameLayout;

.field private b:I

.field private c:Landroid/widget/Scroller;

.field private d:Z

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 2

    .prologue
    .line 962
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 958
    const/4 v0, 0x0

    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->d:Z

    .line 963
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->c:Landroid/widget/Scroller;

    .line 964
    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/PtrFrameLayout$a;)V
    .locals 2
    .param p0, "x0"    # Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    .prologue
    .line 954
    .line 6001
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->b()V

    .line 6002
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6003
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->c:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 954
    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 995
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->d:Z

    .line 996
    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->b:I

    .line 997
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v0, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 998
    return-void
.end method

.method static synthetic b(Lin/srain/cube/views/ptr/PtrFrameLayout$a;)Z
    .locals 1
    .param p0, "x0"    # Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    .prologue
    .line 954
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->d:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 1008
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->d:Z

    if-eqz v0, :cond_2

    .line 1009
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->c:Landroid/widget/Scroller;

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1012
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    .line 3562
    iget-object v1, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    invoke-virtual {v1}, Lkfe;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3566
    invoke-virtual {v0, v2}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Z)V

    .line 1013
    :cond_1
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->b()V

    .line 1015
    :cond_2
    return-void
.end method

.method public final a(II)V
    .locals 7
    .param p1, "to"    # I
    .param p2, "duration"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1018
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;)Lkfe;

    move-result-object v0

    .line 4181
    iget v0, v0, Lkfe;->e:I

    if-ne v0, p1, :cond_0

    move v0, v6

    .line 1018
    :goto_0
    if-eqz v0, :cond_1

    .line 1038
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 4181
    goto :goto_0

    .line 1021
    :cond_1
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;)Lkfe;

    move-result-object v0

    .line 5101
    iget v0, v0, Lkfe;->e:I

    .line 1021
    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->e:I

    .line 1022
    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->f:I

    .line 1023
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->e:I

    sub-int v4, p1, v0

    .line 1024
    .local v4, "distance":I
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Z

    .line 1027
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v0, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1029
    iput v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->b:I

    .line 1032
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1033
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->c:Landroid/widget/Scroller;

    invoke-virtual {v0, v6}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1035
    :cond_2
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->c:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1036
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v0, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 1037
    iput-boolean v6, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->d:Z

    goto :goto_1
.end method

.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 967
    iget-object v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->c:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->c:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 968
    .local v2, "finish":Z
    :goto_0
    iget-object v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->c:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 969
    .local v0, "curY":I
    iget v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->b:I

    sub-int v1, v0, v4

    .line 970
    .local v1, "deltaY":I
    sget-boolean v4, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Z

    .line 977
    if-nez v2, :cond_3

    .line 978
    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->b:I

    .line 979
    iget-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    int-to-float v4, v1

    invoke-static {v3, v4}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;F)V

    .line 980
    iget-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v3, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 984
    :cond_1
    :goto_1
    return-void

    .line 967
    .end local v0    # "curY":I
    .end local v1    # "deltaY":I
    .end local v2    # "finish":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1987
    .restart local v0    # "curY":I
    .restart local v1    # "deltaY":I
    .restart local v2    # "finish":Z
    :cond_3
    sget-boolean v4, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Z

    .line 1990
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->b()V

    .line 1991
    iget-object v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    .line 2571
    iget-object v5, v4, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    invoke-virtual {v5}, Lkfe;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2575
    invoke-virtual {v4, v3}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Z)V

    goto :goto_1
.end method
