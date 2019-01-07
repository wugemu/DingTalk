.class public Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;
.super Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;
.source "DTHorizontalToolBarScrollView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView",
        "<",
        "Lbqy;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "paramInt"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;I)V
    .locals 8
    .param p1, "itemView"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;
    .param p2, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 56
    if-eqz p1, :cond_3

    .line 57
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    if-nez v3, :cond_0

    .line 58
    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->getIconFontTextView()Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v1

    .line 62
    .local v1, "itemIconIv":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    if-eqz v1, :cond_3

    .line 63
    invoke-virtual {p0, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqy;

    .line 64
    .local v0, "descriptor":Lbqy;
    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {v0}, Lbqy;->c()Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;

    move-result-object v2

    .line 66
    .local v2, "toolbarIcon":Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;->getIconFontId()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 67
    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 68
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;->getIconFontId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 74
    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;->isShowRedDot()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "DEF_TOOL_ITEM_RED_DOT"

    invoke-static {v3, v4, v6}, Lhcy;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1079
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v3, :cond_2

    .line 1082
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->b:Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;

    if-nez v3, :cond_1

    .line 1083
    new-instance v3, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;-><init>(Landroid/content/Context;)V

    iput-object v3, p1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->b:Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;

    .line 1085
    :cond_1
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->b:Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lbqt$a;->text_color_red:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->a(I)Lbrt;

    .line 1086
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->b:Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lbqt$a;->common_white_alpha_72:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4, v5, v7}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->a(IFZ)Lbrt;

    .line 1087
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->b:Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->a(Landroid/view/View;)Lbrt;

    .line 1088
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->b:Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->a(Ljava/lang/String;)Lbrt;

    .line 84
    .end local v2    # "toolbarIcon":Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lbqy;->f()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 85
    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setEnabled(Z)V

    .line 91
    .end local v0    # "descriptor":Lbqy;
    .end local v1    # "itemIconIv":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    :cond_3
    :goto_2
    return-void

    .line 70
    .restart local v0    # "descriptor":Lbqy;
    .restart local v1    # "itemIconIv":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .restart local v2    # "toolbarIcon":Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;
    :cond_4
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_0

    .line 78
    :cond_5
    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;->setShowRedDot(Z)V

    .line 79
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->a()V

    goto :goto_1

    .line 87
    .end local v2    # "toolbarIcon":Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;
    :cond_6
    invoke-virtual {v1, v7}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setEnabled(Z)V

    goto :goto_2
.end method

.method public setCurrentItem(I)V
    .locals 10
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 95
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;->c:Landroid/widget/LinearLayout;

    if-nez v5, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 100
    .local v0, "childCount":I
    add-int/lit8 v5, v0, -0x1

    if-gt p1, v5, :cond_0

    .line 103
    iget v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;->b:I

    if-eq p1, v5, :cond_0

    .line 106
    iput p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;->b:I

    .line 107
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_6

    .line 108
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 109
    .local v1, "childView":Landroid/view/View;
    instance-of v5, v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;

    if-eqz v5, :cond_4

    .line 110
    iget v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;->b:I

    if-ne v5, v3, :cond_3

    .line 111
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbqy;

    .line 112
    .local v2, "descriptor":Lbqy;
    if-eqz v2, :cond_3

    .line 113
    invoke-virtual {v2}, Lbqy;->c()Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;

    move-result-object v4

    .line 114
    .local v4, "toolbarIcon":Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;
    if-eqz v4, :cond_3

    .line 115
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;->isShowRedDot()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 116
    invoke-virtual {v4, v7}, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;->setShowRedDot(Z)V

    move-object v5, v1

    .line 117
    check-cast v5, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->a()V

    .line 118
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v8, "DEF_TOOL_ITEM_RED_DOT"

    .line 2064
    const-string/jumbo v9, "PreferenceUtils"

    invoke-virtual {v5, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2065
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 2067
    invoke-interface {v5, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2068
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 121
    :cond_2
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;->getType()Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 122
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;->getType()Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;

    move-result-object v5

    sget-object v8, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;->TypeCommand:Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;

    if-eq v5, v8, :cond_4

    .line 128
    .end local v2    # "descriptor":Lbqy;
    .end local v4    # "toolbarIcon":Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;
    :cond_3
    check-cast v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;

    .end local v1    # "childView":Landroid/view/View;
    iget v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;->b:I

    if-ne v3, v5, :cond_5

    move v5, v6

    :goto_2
    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->setChecked(Z)V

    .line 107
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v5, v7

    .line 128
    goto :goto_2

    .line 131
    :cond_6
    iget v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;->b:I

    if-gtz v5, :cond_0

    .line 132
    invoke-virtual {p0, v7, v7}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;->scrollTo(II)V

    goto :goto_0
.end method
