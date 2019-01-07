.class final Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$4;
.super Ljava/lang/Object;
.source "ConfCallTranslationAnimView.java"

# interfaces
.implements Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$4;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 161
    invoke-static {}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->a()Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$4;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$4;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->i(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->a(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;Landroid/view/View;)Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$4;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->i(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$4;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->d(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 164
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$4;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->j(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$4;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->c(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$4;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->c(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$4;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$4;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->c(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->b(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;Landroid/view/View;)Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$4;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->c(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$4;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->g(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 169
    :cond_0
    return-void
.end method
