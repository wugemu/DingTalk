.class final Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$3;
.super Ljava/lang/Object;
.source "BreadCrumbsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$3;->a:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 145
    const/4 v3, 0x0

    .line 146
    .local v3, "width":I
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$3;->a:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->a(Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 147
    .local v1, "breadCrumbCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 148
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$3;->a:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->a(Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$3;->a:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    const-string/jumbo v5, "scrollX"

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v3, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 151
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$3;->a:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->c(Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit16 v4, v4, 0xfa

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 152
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 153
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 154
    return-void
.end method
