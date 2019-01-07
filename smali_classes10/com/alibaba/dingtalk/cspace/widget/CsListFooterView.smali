.class public Lcom/alibaba/dingtalk/cspace/widget/CsListFooterView;
.super Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;
.source "CsListFooterView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v5, 0x42c00000    # 96.0f

    const/4 v4, 0x0

    .line 21
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;-><init>(Landroid/content/Context;)V

    .line 1026
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/CsListFooterView;->g:Ljava/lang/String;

    .line 1027
    iput-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/widget/CsListFooterView;->d:Z

    .line 1030
    sget v0, Lfzs$f;->ll_root_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/CsListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1031
    if-eqz v0, :cond_0

    .line 1032
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1033
    if-nez v1, :cond_1

    .line 1034
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    .line 1035
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/CsListFooterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1039
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1040
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/CsListFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 23
    :cond_0
    return-void

    .line 1037
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/CsListFooterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method
