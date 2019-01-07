.class final Lfuf$1$1;
.super Ljava/lang/Object;
.source "CenterTopAndBottomStyle.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfuf$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfuf$1;


# direct methods
.method constructor <init>(Lfuf$1;)V
    .locals 0
    .param p1, "this$1"    # Lfuf$1;

    .prologue
    .line 68
    iput-object p1, p0, Lfuf$1$1;->a:Lfuf$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lfuf$1$1;->a:Lfuf$1;

    iget-object v0, v0, Lfuf$1;->c:Lfuf;

    iget-object v0, v0, Lfuf;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 76
    :goto_0
    iget-object v0, p0, Lfuf$1$1;->a:Lfuf$1;

    iget-object v0, v0, Lfuf$1;->c:Lfuf;

    iget-object v0, v0, Lfuf;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lfuf$1$1;->a:Lfuf$1;

    iget-object v0, v0, Lfuf$1;->c:Lfuf;

    iget-object v0, v0, Lfuf;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lfuf$1$1;->a:Lfuf$1;

    iget-object v0, v0, Lfuf$1;->c:Lfuf;

    iget-object v0, v0, Lfuf;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
