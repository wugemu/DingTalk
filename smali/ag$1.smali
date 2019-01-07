.class final Lag$1;
.super Ljava/lang/Object;
.source "GhostViewApi14.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lag;


# direct methods
.method constructor <init>(Lag;)V
    .locals 0
    .param p1, "this$0"    # Lag;

    .prologue
    .line 121
    iput-object p1, p0, Lag$1;->a:Lag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lag$1;->a:Lag;

    iget-object v1, p0, Lag$1;->a:Lag;

    iget-object v1, v1, Lag;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, v0, Lag;->e:Landroid/graphics/Matrix;

    .line 127
    iget-object v0, p0, Lag$1;->a:Lag;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Lag$1;->a:Lag;

    iget-object v0, v0, Lag;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lag$1;->a:Lag;

    iget-object v0, v0, Lag;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lag$1;->a:Lag;

    iget-object v0, v0, Lag;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lag$1;->a:Lag;

    iget-object v1, v1, Lag;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 130
    iget-object v0, p0, Lag$1;->a:Lag;

    iget-object v0, v0, Lag;->b:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 131
    iget-object v0, p0, Lag$1;->a:Lag;

    iput-object v2, v0, Lag;->b:Landroid/view/ViewGroup;

    .line 132
    iget-object v0, p0, Lag$1;->a:Lag;

    iput-object v2, v0, Lag;->c:Landroid/view/View;

    .line 134
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
