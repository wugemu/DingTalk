.class public Lcom/alibaba/android/search/widget/MsgSearchFilterHideMenuView;
.super Lcom/alibaba/android/search/widget/MsgSearchFilterView;
.source "MsgSearchFilterHideMenuView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterHideMenuView;->c()V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterHideMenuView;->c()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterHideMenuView;->c()V

    .line 26
    return-void
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterHideMenuView;->b:Landroid/widget/TextView;

    sget v1, Lemt$g;->dt_search_im_filter_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 30
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterHideMenuView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 31
    sget v0, Lemt$e;->rl_filter_conditions:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterHideMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method
