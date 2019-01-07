.class public final Ldkp$1;
.super Ljava/lang/Object;
.source "TouchUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldkp;
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

.field final synthetic f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IIIILandroid/view/View;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Ldkp$1;->a:Landroid/view/View;

    iput p2, p0, Ldkp$1;->b:I

    iput p3, p0, Ldkp$1;->c:I

    iput p4, p0, Ldkp$1;->d:I

    iput p5, p0, Ldkp$1;->e:I

    iput-object p6, p0, Ldkp$1;->f:Landroid/view/View;

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
    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Ldkp$1;->a:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 32
    iget-object v2, p0, Ldkp$1;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 34
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Ldkp$1;->b:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 35
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Ldkp$1;->c:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 36
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Ldkp$1;->d:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 37
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Ldkp$1;->e:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 39
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Ldkp$1;->a:Landroid/view/View;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 40
    .local v1, "touchDelegate":Landroid/view/TouchDelegate;
    iget-object v2, p0, Ldkp$1;->f:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 41
    return-void
.end method
