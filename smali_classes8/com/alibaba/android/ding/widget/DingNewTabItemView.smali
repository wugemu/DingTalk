.class public Lcom/alibaba/android/ding/widget/DingNewTabItemView;
.super Landroid/widget/LinearLayout;
.source "DingNewTabItemView.java"


# instance fields
.field a:Landroid/widget/TextView;

.field private b:I

.field private c:Landroid/view/View;

.field private d:I

.field private e:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    sget-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->e:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->a()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    sget-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->e:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->a()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    sget-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->e:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->a()V

    .line 44
    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Laxp$g;->ding_item_ding_new_tab:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "view":Landroid/view/View;
    sget v1, Laxp$f;->tv_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->a:Landroid/widget/TextView;

    .line 49
    sget v1, Laxp$f;->v_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->c:Landroid/view/View;

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxp$c;->ui_common_level1_text_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->d:I

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->a:Landroid/widget/TextView;

    iget v2, p0, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->d:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->addView(Landroid/view/View;)V

    .line 54
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 5
    .param p1, "isSelected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 78
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->a:Landroid/widget/TextView;

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    sget v1, Lcjj;->s:I

    :goto_0
    int-to-float v1, v1

    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 79
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->c:Landroid/view/View;

    if-eqz p1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :goto_2
    return-void

    .line 78
    :cond_0
    sget v1, Lcjj;->p:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :cond_1
    const/16 v1, 0x8

    goto :goto_1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v3, "refreshSelected e="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getCurrentTabIndex()Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->e:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->b:I

    return v0
.end method

.method public setCurrentTabIndex(Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;)V
    .locals 0
    .param p1, "currentTabIndex"    # Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->e:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 70
    return-void
.end method

.method public setDefaultTextColor(I)V
    .locals 2
    .param p1, "defaultColor"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 94
    iput p1, p0, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->d:I

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 91
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->b:I

    .line 62
    return-void
.end method

.method public setSelectedState(Z)V
    .locals 0
    .param p1, "isSelected"    # Z

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->a(Z)V

    .line 87
    return-void
.end method
