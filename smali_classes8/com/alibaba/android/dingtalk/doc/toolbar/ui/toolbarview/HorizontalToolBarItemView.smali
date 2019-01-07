.class public Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;
.super Landroid/widget/LinearLayout;
.source "HorizontalToolBarItemView.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field protected a:I

.field b:Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;

.field c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private d:Z

.field private e:Z

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->a:I

    .line 1061
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbqt$e;->floating_toolbar_item_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->f:Landroid/view/View;

    .line 1062
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->f:Landroid/view/View;

    sget v1, Lbqt$d;->floating_bar_item_split:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->g:Landroid/view/View;

    .line 1063
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->f:Landroid/view/View;

    sget v1, Lbqt$d;->floating_bar_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 57
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->b:Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->b:Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->b()V

    goto :goto_0
.end method

.method public getIconFontTextView()Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->d:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->d:Z

    .line 101
    if-eqz p1, :cond_1

    .line 102
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->e:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->g:Landroid/view/View;

    iget v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbqt$a;->ui_common_theme_icon_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setSelected(Z)V

    .line 111
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->g:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setItemSplit(Z)V
    .locals 0
    .param p1, "itemSplit"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->e:Z

    .line 68
    return-void
.end method

.method public setItemSplitColor(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->a:I

    .line 72
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->setChecked(Z)V

    .line 121
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
