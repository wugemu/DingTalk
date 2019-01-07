.class public final Lcnd;
.super Ljava/lang/Object;
.source "KeyboardFitManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "targetView"    # Landroid/view/View;
    .param p3, "adjustView"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 30
    iput-object p1, p0, Lcnd;->a:Landroid/view/View;

    .line 31
    iput-object p2, p0, Lcnd;->b:Landroid/view/View;

    .line 32
    iput-object p3, p0, Lcnd;->c:Landroid/view/View;

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 45
    iget-object v3, p0, Lcnd;->a:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcnd;->b:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcnd;->c:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 46
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 47
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v3, p0, Lcnd;->a:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 48
    iget-object v3, p0, Lcnd;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 49
    .local v2, "screenHeight":I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 50
    .local v0, "heightDifference":I
    const/16 v3, 0x12c

    if-le v0, v3, :cond_1

    .line 51
    iget v3, p0, Lcnd;->d:I

    if-nez v3, :cond_0

    .line 52
    iget-object v3, p0, Lcnd;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcnd;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_0

    .line 53
    iget-object v3, p0, Lcnd;->c:Landroid/view/View;

    iget-object v4, p0, Lcnd;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcnd;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 56
    :cond_0
    iput v0, p0, Lcnd;->d:I

    .line 58
    :cond_1
    if-nez v0, :cond_3

    .line 59
    iget v3, p0, Lcnd;->d:I

    if-eqz v3, :cond_2

    .line 60
    iget-object v3, p0, Lcnd;->c:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 62
    :cond_2
    iput v0, p0, Lcnd;->d:I

    .line 65
    .end local v0    # "heightDifference":I
    .end local v1    # "r":Landroid/graphics/Rect;
    .end local v2    # "screenHeight":I
    :cond_3
    return-void
.end method
