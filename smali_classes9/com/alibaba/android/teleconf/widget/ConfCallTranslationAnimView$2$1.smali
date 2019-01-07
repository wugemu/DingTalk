.class final Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2$1;
.super Ljava/lang/Object;
.source "ConfCallTranslationAnimView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->c(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->a(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;Landroid/view/View;)Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->c(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->d(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->e(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->f(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->f(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->f(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->b(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;Landroid/view/View;)Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->f(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->g(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 123
    :cond_0
    return-void
.end method
