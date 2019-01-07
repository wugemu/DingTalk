.class public Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;
.super Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;
.source "DTControlContainerLayout.java"


# instance fields
.field protected b:Landroid/view/LayoutInflater;

.field public c:Z

.field protected d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

.field protected e:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

.field protected f:Landroid/widget/RelativeLayout;

.field protected g:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;

.field private k:Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

.field private l:Landroid/view/View;

.field private m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private n:Landroid/widget/FrameLayout;

.field private o:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;

.field private p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

.field private q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

.field private r:Lbqv;

.field private s:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v5, 0x8

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    sget-object v1, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;->TypeDoc:Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->k:Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    .line 1099
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 1104
    :cond_0
    :try_start_0
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->b:Landroid/view/LayoutInflater;

    .line 1105
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->b:Landroid/view/LayoutInflater;

    sget v2, Lbqt$e;->doc_view_keyboard:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1106
    if-nez v2, :cond_1

    .line 1107
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 91
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->setVisibility(I)V

    goto :goto_0

    .line 1110
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :try_start_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1112
    invoke-virtual {p0, v2, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1115
    sget v1, Lbqt$d;->toolbar_view_layout:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->g:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;

    .line 1116
    sget v1, Lbqt$d;->toolbar_view_container_layout:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->f:Landroid/widget/RelativeLayout;

    .line 1119
    sget v1, Lbqt$d;->floating_bar_item_keyboard_icon:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1121
    sget v1, Lbqt$d;->toolbar_view_keyboard_layout:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1122
    new-instance v3, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout$1;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1130
    sget v1, Lbqt$d;->main_panel_container_ll:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    .line 1133
    sget v1, Lbqt$d;->popup_panel_container_ll:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->e:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1136
    :try_start_2
    new-instance v1, Lbqv;

    invoke-direct {v1, p0}, Lbqv;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->r:Lbqv;
    :try_end_2
    .catch Ljava/security/InvalidParameterException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    return-object v0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->e:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->e:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 510
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->a()V

    .line 511
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->c:Z

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->e()V

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 516
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->e()V

    .line 518
    :cond_2
    return-void
.end method

.method public final a(I)V
    .locals 4
    .param p1, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 491
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->a(I)V

    .line 492
    sget-object v2, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;->TypeDoc:Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->getPageType()Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    move-result-object v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->f:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 493
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 494
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5154
    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->c:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->g:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->g:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;->getCurrentPosition()I

    move-result v2

    if-ltz v2, :cond_2

    :cond_1
    move v0, v1

    .line 498
    :cond_2
    if-nez v0, :cond_3

    .line 499
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->setKeyboardItemCheck(Z)V

    .line 502
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    if-eqz v0, :cond_4

    .line 503
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->setVisible(Z)V

    .line 504
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->getFuncHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->setPropertyPanelHeight(I)V

    .line 506
    :cond_4
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .param p1, "panelView"    # Landroid/view/View;
    .param p2, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 261
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->setKeyboardItemCheck(Z)V

    .line 266
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    .line 4054
    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->setVisible(Z)V

    .line 267
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->getFuncHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->setPropertyPanelHeight(I)V

    .line 269
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    if-nez v1, :cond_2

    .line 270
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lbqt$e;->sub_panel_container:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->o:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;

    .line 271
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->o:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;

    new-instance v2, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout$2;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->getFuncHeight()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->g:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;->getHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 281
    .local v0, "height":I
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .line 282
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->o:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setContentView(Landroid/view/View;)V

    .line 283
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setWidth(I)V

    .line 284
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setHeight(I)V

    .line 285
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setTouchable(Z)V

    .line 287
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setFocusable(Z)V

    .line 288
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setInputMethodMode(I)V

    .line 289
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setSoftInputMode(I)V

    .line 290
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->update()V

    .line 293
    .end local v0    # "height":I
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->o:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;

    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;->setTitle(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->o:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;->setContentView(Landroid/view/View;)V

    .line 296
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;)V
    .locals 1
    .param p1, "l"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->setOnKeyBoardListener(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;)V

    .line 486
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->s:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;

    .line 487
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "toolbarToggle"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 555
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->f:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    if-eqz p1, :cond_2

    .line 560
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 564
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 565
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 568
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 569
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->l:Landroid/view/View;

    if-nez v0, :cond_5

    .line 570
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbrr;->c(Landroid/content/Context;)V

    .line 575
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->e()V

    goto :goto_0

    .line 572
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->l:Landroid/view/View;

    invoke-static {v0}, Lbrr;->b(Landroid/view/View;)V

    goto :goto_1
.end method

.method public final b(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 477
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->a(I)V

    .line 480
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 305
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->setKeyboardItemCheck(Z)V

    .line 306
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 307
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->s:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->s:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->getFuncHeight()I

    invoke-interface {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;->a()V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 331
    :cond_1
    :goto_0
    return-void

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->l:Landroid/view/View;

    if-nez v0, :cond_3

    .line 314
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbrr;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->l:Landroid/view/View;

    invoke-static {v0}, Lbrr;->b(Landroid/view/View;)V

    goto :goto_0

    .line 320
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 321
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->s:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    if-eqz v0, :cond_5

    .line 322
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->s:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->getFuncHeight()I

    invoke-interface {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;->a()V

    .line 324
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 327
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->r:Lbqv;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->r:Lbqv;

    const-string/jumbo v1, "focus"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbqv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->g:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;

    if-nez v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->g:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;->a()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 522
    const/4 v0, 0x0

    .line 524
    .local v0, "isConsumer":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 530
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    .line 5536
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 526
    :goto_1
    goto :goto_0

    .line 5538
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->i()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->b()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->h()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5540
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->e()V

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1

    .line 524
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 381
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->setKeyboardItemCheck(Z)V

    .line 382
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 385
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    .line 4076
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->removeAllViews()V

    .line 4077
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 4078
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->setVisible(Z)V

    .line 391
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->e:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->setVisibility(I)V

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->g:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;

    if-eqz v0, :cond_4

    .line 395
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->g:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;->setCurrentItem(I)V

    .line 398
    :cond_4
    sget-object v0, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;->TypeDoc:Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->getPageType()Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 399
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->f:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 400
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 403
    :cond_5
    return-void
.end method

.method public final f()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 437
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->f()V

    .line 438
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->b:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    .line 439
    iput-object v4, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->b:Landroid/view/LayoutInflater;

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->a()V

    .line 444
    iput-object v4, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->e:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    if-eqz v0, :cond_2

    .line 448
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->e:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->a()V

    .line 449
    iput-object v4, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->e:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    if-eqz v0, :cond_4

    .line 453
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 454
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 456
    :cond_3
    iput-object v4, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .line 459
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    if-eqz v0, :cond_6

    .line 460
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 461
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 463
    :cond_5
    iput-object v4, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .line 466
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->r:Lbqv;

    if-eqz v0, :cond_a

    .line 467
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->r:Lbqv;

    .line 4192
    iget-object v0, v1, Lbqv;->a:Lbqw;

    if-eqz v0, :cond_a

    .line 4195
    iget-object v0, v1, Lbqv;->a:Lbqw;

    invoke-interface {v0}, Lbqw;->a()Ljava/util/List;

    move-result-object v0

    .line 4196
    if-eqz v0, :cond_a

    .line 4199
    iget-object v2, v1, Lbqv;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_9

    .line 4200
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqy;

    .line 4201
    if-eqz v0, :cond_7

    .line 4202
    iget-object v3, v1, Lbqv;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;

    .line 4203
    if-eqz v0, :cond_7

    .line 4204
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;->a()V

    goto :goto_0

    .line 4208
    :cond_8
    iget-object v0, v1, Lbqv;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 4210
    :cond_9
    iput-object v4, v1, Lbqv;->a:Lbqw;

    .line 470
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->s:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;

    if-eqz v0, :cond_b

    .line 471
    iput-object v4, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->s:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;

    .line 473
    :cond_b
    return-void
.end method

.method public getPageType()Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->k:Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    return-object v0
.end method

.method public getToolbarController()Lbqv;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->r:Lbqv;

    return-object v0
.end method

.method public setCurrentPopupPropertyPanel(Landroid/view/View;)V
    .locals 1
    .param p1, "panelView"    # Landroid/view/View;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->e:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->setKeyboardItemCheck(Z)V

    .line 208
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->e:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->setCurrentPropertyPanel(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setCurrentPropertyPanel(Landroid/view/View;)V
    .locals 7
    .param p1, "panelView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 215
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    if-nez v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->e:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->setVisibility(I)V

    .line 223
    :cond_2
    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->setKeyboardItemCheck(Z)V

    .line 224
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    .line 3054
    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->setVisible(Z)V

    .line 225
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->getFuncHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->setPropertyPanelHeight(I)V

    .line 227
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    if-nez v1, :cond_3

    .line 228
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->n:Landroid/widget/FrameLayout;

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->n:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbqt$a;->doc_tool_panel_bg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_1
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .line 236
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setWidth(I)V

    .line 237
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->getFuncHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setHeight(I)V

    .line 238
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setTouchable(Z)V

    .line 239
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setFocusable(Z)V

    .line 240
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setInputMethodMode(I)V

    .line 241
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setSoftInputMode(I)V

    .line 242
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setContentView(Landroid/view/View;)V

    .line 243
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->update()V

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 247
    if-eqz p1, :cond_4

    .line 248
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v5, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 250
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 252
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public setFocusView(Landroid/view/View;)V
    .locals 0
    .param p1, "focusWebView"    # Landroid/view/View;

    .prologue
    .line 583
    if-nez p1, :cond_0

    .line 587
    :goto_0
    return-void

    .line 586
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->l:Landroid/view/View;

    goto :goto_0
.end method

.method public setKeyboardItemCheck(Z)V
    .locals 3
    .param p1, "check"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 337
    if-eqz p1, :cond_2

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->c:Z

    .line 339
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lbqt$f;->icon_wd_expandkeyboa:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 341
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbqt$a;->ui_common_theme_icon_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->g:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->g:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;->setCurrentItem(I)V

    .line 353
    :cond_1
    :goto_0
    return-void

    .line 347
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->c:Z

    .line 348
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lbqt$f;->icon_wd_packupkeyboa:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 350
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbqt$a;->doc_tool_item_icon_default_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setOnDispatchListener(Lbqu;)V
    .locals 1
    .param p1, "dispatchListener"    # Lbqu;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->r:Lbqv;

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->r:Lbqv;

    .line 2055
    iput-object p1, v0, Lbqv;->e:Lbqu;

    goto :goto_0
.end method

.method public setOnTooBarItemSelectListener(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$a;)V
    .locals 1
    .param p1, "onTooBarItemSelectListener"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$a;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->g:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->g:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;

    .line 1159
    iput-object p1, v0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$a;

    goto :goto_0
.end method

.method public setPageType(Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;)V
    .locals 2
    .param p1, "pageType"    # Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 409
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->k:Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    .line 411
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->r:Lbqv;

    if-eqz v0, :cond_0

    .line 412
    sget-object v0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout$3;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 414
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->r:Lbqv;

    new-instance v1, Lbre;

    invoke-direct {v1}, Lbre;-><init>()V

    invoke-virtual {v0, v1}, Lbqv;->a(Lbqw;)V

    goto :goto_0

    .line 418
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->r:Lbqv;

    new-instance v1, Lbrl;

    invoke-direct {v1}, Lbrl;-><init>()V

    invoke-virtual {v0, v1}, Lbqv;->a(Lbqw;)V

    goto :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setPropertyPanelHeight(I)V
    .locals 2
    .param p1, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 359
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 361
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 362
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->a(I)V

    .line 365
    return-void
.end method

.method public setToolDescriptorItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbqy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lbqy;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->g:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->g:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/DTHorizontalToolBarScrollView;->setItems(Ljava/util/List;)V

    goto :goto_0
.end method
