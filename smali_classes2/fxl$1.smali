.class public final Lfxl$1;
.super Ljava/lang/Object;
.source "TouchDelegateUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfxl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I


# direct methods
.method public constructor <init>(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lfxl$1;->a:Landroid/view/View;

    iput p2, p0, Lfxl$1;->b:I

    iput p3, p0, Lfxl$1;->c:I

    iput p4, p0, Lfxl$1;->d:I

    iput p5, p0, Lfxl$1;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 28
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lfxl$1;->a:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 29
    iget-object v2, p0, Lfxl$1;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 31
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lfxl$1;->b:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 32
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lfxl$1;->c:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 33
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lfxl$1;->d:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 34
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lfxl$1;->e:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 36
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lfxl$1;->a:Landroid/view/View;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 38
    .local v1, "touchDelegate":Landroid/view/TouchDelegate;
    const-class v2, Landroid/view/View;

    iget-object v3, p0, Lfxl$1;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lfxl$1;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 41
    :cond_0
    return-void
.end method
