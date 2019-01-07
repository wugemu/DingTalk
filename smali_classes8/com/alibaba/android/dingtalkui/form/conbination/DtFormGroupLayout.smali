.class public Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;
.super Lcom/alibaba/android/dingtalkui/form/conbination/AbstractFormGroup;
.source "DtFormGroupLayout.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/form/conbination/AbstractFormGroup;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->a()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/form/conbination/AbstractFormGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->a()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/form/conbination/AbstractFormGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->a()V

    .line 51
    return-void
.end method

.method private a(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, -0x2

    .line 95
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 98
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lecj$c;->dp8:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 99
    .local v2, "marginVertical":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lecj$c;->dp16:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 100
    .local v1, "marginHorizontal":I
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 101
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 102
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 103
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-object p1
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lecj$c;->dp16:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 55
    .local v0, "padding":I
    invoke-virtual {p0, v3, v3, v3, v0}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->setPadding(IIII)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->setOrientation(I)V

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lecj$d;->ui_common_util_divider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->setShowDividers(I)V

    .line 61
    new-instance v1, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout$1;-><init>(Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;)V

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;

    .prologue
    .line 33
    .line 1075
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->a:Landroid/view/View;

    .line 1076
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->b:Landroid/view/View;

    .line 1078
    if-eqz v0, :cond_0

    .line 1079
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1080
    if-eqz v2, :cond_0

    .line 1081
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->removeView(Landroid/view/View;)V

    .line 1082
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->addView(Landroid/view/View;I)V

    .line 1085
    :cond_0
    if-eqz v1, :cond_1

    .line 1086
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1087
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1088
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->removeView(Landroid/view/View;)V

    .line 1089
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->getChildCount()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->addView(Landroid/view/View;I)V

    .line 33
    :cond_1
    return-void
.end method


# virtual methods
.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    return-void
.end method

.method public setFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->b:Landroid/view/View;

    .line 117
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->addView(Landroid/view/View;I)V

    .line 118
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->a:Landroid/view/View;

    .line 111
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkui/form/conbination/DtFormGroupLayout;->addView(Landroid/view/View;I)V

    .line 112
    return-void
.end method
