.class final Lfue$1$1;
.super Ljava/lang/Object;
.source "CenterBottomStyle.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfue$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfue$1;


# direct methods
.method constructor <init>(Lfue$1;)V
    .locals 0
    .param p1, "this$1"    # Lfue$1;

    .prologue
    .line 58
    iput-object p1, p0, Lfue$1$1;->a:Lfue$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lfue$1$1;->a:Lfue$1;

    iget-object v0, v0, Lfue$1;->c:Lfue;

    iget-object v0, v0, Lfue;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 66
    :goto_0
    iget-object v0, p0, Lfue$1$1;->a:Lfue$1;

    iget-object v0, v0, Lfue$1;->c:Lfue;

    iget-object v0, v0, Lfue;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lfue$1$1;->a:Lfue$1;

    iget-object v0, v0, Lfue$1;->c:Lfue;

    iget-object v0, v0, Lfue;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
