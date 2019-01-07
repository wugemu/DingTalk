.class final Lgr$a;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Lgs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lgr;

.field b:Z


# direct methods
.method constructor <init>(Lgr;)V
    .locals 0
    .param p1, "vpa"    # Lgr;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lgr$a;->a:Lgr;

    .line 47
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 100
    const/high16 v2, 0x7e000000

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 101
    .local v1, "listenerTag":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 102
    .local v0, "listener":Lgs;
    instance-of v2, v1, Lgs;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 103
    check-cast v0, Lgs;

    .line 105
    :cond_0
    if-eqz v0, :cond_1

    .line 106
    invoke-interface {v0, p1}, Lgs;->onAnimationCancel(Landroid/view/View;)V

    .line 108
    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 74
    iget-object v2, p0, Lgr$a;->a:Lgr;

    iget v2, v2, Lgr;->d:I

    if-ltz v2, :cond_0

    .line 75
    iget-object v2, p0, Lgr$a;->a:Lgr;

    iget v2, v2, Lgr;->d:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 76
    iget-object v2, p0, Lgr$a;->a:Lgr;

    const/4 v3, -0x1

    iput v3, v2, Lgr;->d:I

    .line 78
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    iget-boolean v2, p0, Lgr$a;->b:Z

    if-nez v2, :cond_4

    .line 86
    :cond_1
    const/high16 v2, 0x7e000000

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 87
    .local v1, "listenerTag":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 88
    .local v0, "listener":Lgs;
    instance-of v2, v1, Lgs;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 89
    check-cast v0, Lgs;

    .line 91
    :cond_2
    if-eqz v0, :cond_3

    .line 92
    invoke-interface {v0, p1}, Lgs;->onAnimationEnd(Landroid/view/View;)V

    .line 94
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lgr$a;->b:Z

    .line 96
    .end local v0    # "listener":Lgs;
    .end local v1    # "listenerTag":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 52
    const/4 v2, 0x0

    iput-boolean v2, p0, Lgr$a;->b:Z

    .line 54
    iget-object v2, p0, Lgr$a;->a:Lgr;

    iget v2, v2, Lgr;->d:I

    if-ltz v2, :cond_0

    .line 55
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 62
    :cond_0
    const/high16 v2, 0x7e000000

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 63
    .local v1, "listenerTag":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 64
    .local v0, "listener":Lgs;
    instance-of v2, v1, Lgs;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 65
    check-cast v0, Lgs;

    .line 67
    :cond_1
    if-eqz v0, :cond_2

    .line 68
    invoke-interface {v0, p1}, Lgs;->onAnimationStart(Landroid/view/View;)V

    .line 70
    :cond_2
    return-void
.end method
