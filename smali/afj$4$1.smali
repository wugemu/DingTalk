.class final Lafj$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafj$4;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafj$4;


# direct methods
.method constructor <init>(Lafj$4;)V
    .locals 0
    .param p1, "this$1"    # Lafj$4;

    .prologue
    .line 395
    iput-object p1, p0, Lafj$4$1;->a:Lafj$4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 398
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 399
    iget-object v0, p0, Lafj$4$1;->a:Lafj$4;

    iget-object v0, v0, Lafj$4;->a:Lafj;

    invoke-static {v0}, Lafj;->c(Lafj;)Lcom/alibaba/alimei/mail/widget/DragContainer;

    move-result-object v0

    iget-object v1, p0, Lafj$4$1;->a:Lafj$4;

    iget-object v1, v1, Lafj$4;->a:Lafj;

    invoke-static {v1}, Lafj;->a(Lafj;)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/DragContainer;->removeView(Landroid/view/View;)V

    .line 400
    return-void
.end method
