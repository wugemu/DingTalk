.class final Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;
.super Ljava/lang/Object;
.source "IMRobotTemplateActivity.java"

# interfaces
.implements Lcom/alibaba/android/user/contact/view/NotifyingScrollView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;->a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 10
    .param p1, "t"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 228
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;->a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;->a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->h(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;->a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->i(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;->a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->j(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/view/View;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->a(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 230
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;->a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->f(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Lcom/alibaba/android/user/contact/view/NotifyingScrollView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/view/NotifyingScrollView;->getHeight()I

    move-result v2

    .line 231
    .local v2, "height":I
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;->a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->f(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Lcom/alibaba/android/user/contact/view/NotifyingScrollView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/contact/view/NotifyingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 232
    .local v1, "childView":I
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;->a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v4, v1, v2}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->a(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;II)V

    .line 235
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;->a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->b(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/view/View;

    move-result-object v4

    neg-int v5, p1

    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;->a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->e(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 237
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;->a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;->a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->b(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;->a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->e(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5, v9, v8}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->a(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;FFF)F

    move-result v3

    .line 240
    .local v3, "ratio":F
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;->a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    sub-float v5, v8, v3

    invoke-static {v4, v5, v9, v8}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->a(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;FFF)F

    move-result v0

    .line 241
    .local v0, "alpha":F
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;->a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->k(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 242
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;->a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->l(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 243
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;->a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->m(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 244
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;->a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->n(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 245
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;->a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->o(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 247
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;->a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;->a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->h(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;->a:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->j(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/view/View;

    move-result-object v6

    invoke-static {v4, v5, v6, v3}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->a(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;Landroid/view/View;Landroid/view/View;F)V

    .line 248
    return-void
.end method
