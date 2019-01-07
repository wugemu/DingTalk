.class public Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;
.super Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;
.source "WMLTabFragment.java"


# instance fields
.field private c:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

.field private d:Landroid/widget/FrameLayout;

.field private e:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

.field private f:Ljava/lang/String;

.field private g:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

.field private h:I

.field private i:Ljqe;

.field private j:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->h:I

    return-void
.end method

.method static synthetic a(Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->h:I

    return p1
.end method

.method static synthetic a(Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->k:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 17
    .param p1, "contentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 71
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->c:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->c:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    iget-object v7, v7, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabs:Ljava/util/List;

    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->c:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    iget-object v7, v7, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabs:Ljava/util/List;

    .line 72
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 74
    new-instance v7, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->e:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    .line 75
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->e:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    sget v8, Ljrg$b;->rap_tabbar_id:I

    invoke-virtual {v7, v8}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->setId(I)V

    .line 76
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->e:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    new-instance v8, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment$1;-><init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;)V

    invoke-virtual {v7, v8}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->setOnTabChangeListener(Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$a;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->e:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->c:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    .line 1054
    const/4 v9, 0x0

    .line 1056
    iput-object v7, v11, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->a:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    .line 1058
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v8

    .line 1157
    iget-object v8, v8, Ljpo;->c:Ljpo$a;

    iget-object v8, v8, Ljpo$a;->i:Ljps;

    .line 1058
    iput-object v8, v11, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->c:Ljps;

    .line 1060
    invoke-virtual {v7}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljqy;->a(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v11, v7}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->setBackgroundColor(I)V

    .line 1062
    iget-object v7, v11, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->a:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    if-eqz v7, :cond_1

    iget-object v7, v11, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->a:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    iget-object v7, v7, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabs:Ljava/util/List;

    if-eqz v7, :cond_1

    iget-object v7, v11, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->a:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    iget-object v7, v7, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabs:Ljava/util/List;

    .line 1063
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1064
    iget-object v7, v11, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->a:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    iget-object v7, v7, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    .line 1065
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, v11, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->b:Ljava/util/List;

    .line 1066
    const/4 v7, 0x0

    move v10, v7

    :goto_0
    if-ge v10, v12, :cond_1

    .line 1067
    iget-object v7, v11, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->a:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    iget-object v7, v7, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabs:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;

    .line 1069
    new-instance v8, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;

    invoke-virtual {v11}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v8, v11, v13}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;-><init>(Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;Landroid/content/Context;)V

    .line 2144
    iget-object v13, v8, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->c:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    invoke-static {v13}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->d(Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;)Ljps;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 2145
    new-instance v13, Landroid/widget/ImageView;

    invoke-virtual {v8}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v13, v8, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->b:Landroid/widget/ImageView;

    .line 2146
    iget-object v13, v8, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->c:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    invoke-static {v13}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->d(Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;)Ljps;

    move-result-object v13

    iget-object v14, v8, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v7}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;->getIconPath()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljps;->setImageUrl(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 2151
    new-instance v13, Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v13, v8, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->a:Landroid/widget/TextView;

    .line 2152
    iget-object v13, v8, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->a:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;->getItemText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2153
    iget-object v7, v8, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->a:Landroid/widget/TextView;

    iget-object v13, v8, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->c:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    invoke-static {v13}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->c(Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;)Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    move-result-object v13

    invoke-virtual {v13}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->getTextColor()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljqy;->a(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2154
    iget-object v7, v8, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->a:Landroid/widget/TextView;

    const/4 v13, 0x1

    const/high16 v14, 0x41400000    # 12.0f

    invoke-virtual {v7, v13, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2155
    iget-object v7, v8, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->a:Landroid/widget/TextView;

    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2157
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v7, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2159
    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static {v14}, Ljqy;->a(I)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v13, v14, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2160
    iget-object v13, v8, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->b:Landroid/widget/ImageView;

    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    const/16 v15, 0x18

    invoke-static {v15}, Ljqy;->a(I)I

    move-result v15

    const/16 v16, 0x18

    invoke-static/range {v16 .. v16}, Ljqy;->a(I)I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v13, v14}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2161
    iget-object v13, v8, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->a:Landroid/widget/TextView;

    invoke-virtual {v8, v13, v7}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1070
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v7, v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v8, v7}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1075
    new-instance v7, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$1;

    invoke-direct {v7, v11}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$1;-><init>(Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;)V

    invoke-virtual {v8, v7}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1092
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->setTag(Ljava/lang/Object;)V

    .line 1093
    iget-object v7, v11, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->b:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    if-nez v10, :cond_4

    move-object v7, v8

    .line 1066
    :goto_1
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    move-object v9, v7

    goto/16 :goto_0

    .line 2148
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "com.taobao.windmill.bundle.WML.Config.imageAdapter must be initialed"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1100
    :cond_1
    if-eqz v9, :cond_2

    .line 1101
    invoke-virtual {v9}, Landroid/view/View;->callOnClick()Z

    .line 105
    :cond_2
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    const/16 v8, 0x30

    .line 106
    invoke-static {v8}, Ljqy;->a(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v3, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 107
    .local v3, "bottomBarParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v7, 0x50

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 109
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 110
    .local v2, "bottomBarContainer":Landroid/widget/LinearLayout;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 112
    new-instance v5, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 113
    .local v5, "lineView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->c:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    .line 114
    invoke-virtual {v7}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->getBorderColor()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljqy;->a(Ljava/lang/String;)I

    move-result v7

    .line 113
    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 116
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 118
    .local v4, "lineParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/16 v8, 0x30

    .line 120
    invoke-static {v8}, Ljqy;->a(I)I

    move-result v8

    invoke-direct {v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 121
    .local v1, "barParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->e:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    invoke-virtual {v2, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->d:Landroid/widget/FrameLayout;

    .line 124
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 125
    .local v6, "pageParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x30

    invoke-static {v10}, Ljqy;->a(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 127
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    .end local v1    # "barParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "bottomBarContainer":Landroid/widget/LinearLayout;
    .end local v3    # "bottomBarParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "lineParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "lineView":Landroid/view/View;
    .end local v6    # "pageParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    return-void

    :cond_4
    move-object v7, v9

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;

    .prologue
    .line 40
    iget v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->h:I

    return v0
.end method

.method static synthetic c(Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;)Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->e:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    return-object v0
.end method


# virtual methods
.method public final a()Ljqe;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->i:Ljqe;

    return-object v0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 217
    invoke-super {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->b()V

    .line 218
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->getChildFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->f()Ljava/util/List;

    move-result-object v0

    .line 219
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 221
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v3

    if-nez v3, :cond_0

    instance-of v3, v1, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;

    if-eqz v3, :cond_0

    .line 222
    check-cast v1, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->b()V

    goto :goto_0

    .line 226
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 279
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 281
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->getChildFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->f()Ljava/util/List;

    move-result-object v0

    .line 282
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 283
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 284
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v3

    if-nez v3, :cond_0

    .line 285
    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 289
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "key_page_tab_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    iput-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->c:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    .line 65
    const-string/jumbo v1, "key_page_tab_start_index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->f:Ljava/lang/String;

    .line 66
    const-string/jumbo v1, "key_page_window_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    iput-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->g:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    .line 67
    const-string/jumbo v1, "key_page_tab_query"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->k:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->d()Ljqd;

    move-result-object v1

    if-nez v1, :cond_0

    .line 136
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 147
    :goto_0
    return-object v1

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->d()Ljqd;

    move-result-object v1

    invoke-interface {v1}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->j:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    .line 140
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->j:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->frameTempType:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/taobao/windmill/bundle/container/frame/FrameType;->a(Ljava/lang/String;Z)Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    move-result-object v0

    .line 142
    .local v0, "type":Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Ljqf;->a(Landroid/app/Activity;Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;)Ljqe;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->i:Ljqe;

    .line 144
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->d:Landroid/widget/FrameLayout;

    .line 145
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->d:Landroid/widget/FrameLayout;

    sget v2, Ljrg$b;->tab_page_container:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 147
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->i:Ljqe;

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->d:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Ljqe;->getView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public onHiddenChanged(Z)V
    .locals 4
    .param p1, "hidden"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onHiddenChanged(Z)V

    .line 242
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->i:Ljqe;

    if-eqz v2, :cond_0

    .line 243
    if-nez p1, :cond_2

    .line 244
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->i:Ljqe;

    invoke-interface {v2}, Ljqe;->onResume()V

    .line 250
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->getChildFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->f()Ljava/util/List;

    move-result-object v0

    .line 251
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 252
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 253
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v3

    if-nez v3, :cond_1

    .line 254
    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    goto :goto_1

    .line 246
    .end local v0    # "children":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_2
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->i:Ljqe;

    invoke-interface {v2}, Ljqe;->onPause()V

    goto :goto_0

    .line 258
    .restart local v0    # "children":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 262
    invoke-super {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onPause()V

    .line 264
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->i:Ljqe;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->i:Ljqe;

    invoke-interface {v0}, Ljqe;->onPause()V

    .line 267
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 271
    invoke-super {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onResume()V

    .line 272
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->i:Ljqe;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->i:Ljqe;

    invoke-interface {v0}, Ljqe;->onResume()V

    .line 275
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 236
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->d()Ljqd;

    move-result-object v6

    if-nez v6, :cond_1

    .line 213
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 158
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->i:Ljqe;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->j:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    iget-object v9, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->g:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    iget-object v10, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    invoke-interface {v6, v7, v8, v9, v10}, Ljqe;->setData(ZLcom/taobao/windmill/bundle/container/core/AppInfoModel;Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)V

    .line 160
    new-instance v4, Ljqq;

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 161
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->getChildFragmentManager()Lcn;

    move-result-object v7

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->d()Ljqd;

    move-result-object v8

    invoke-interface {v8}, Ljqd;->getManifest()Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    move-result-object v8

    invoke-direct {v4, v6, v7, v8}, Ljqq;-><init>(Landroid/app/Activity;Lcn;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;)V

    .line 163
    .local v4, "tabManager":Ljqq;
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->d()Ljqd;

    move-result-object v6

    invoke-interface {v6}, Ljqd;->getRouter()Ljqr;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3064
    iget-object v6, v6, Ljqr;->b:Ljqp;

    invoke-virtual {v6, v7, v4}, Ljqp;->a(Ljava/util/ArrayList;Ljqn;)V

    .line 166
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->a(Landroid/view/ViewGroup;)V

    .line 168
    iget-object v6, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->i:Ljqe;

    new-instance v7, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment$2;

    invoke-direct {v7, p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment$2;-><init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;)V

    invoke-interface {v6, v7}, Ljqe;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v6, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->i:Ljqe;

    new-instance v7, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment$3;

    invoke-direct {v7, p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment$3;-><init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;)V

    invoke-interface {v6, v7}, Ljqe;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->d()Ljqd;

    move-result-object v6

    invoke-interface {v6}, Ljqd;->getRouter()Ljqr;

    move-result-object v0

    .line 190
    .local v0, "WMLRouter":Ljqr;
    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->f:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 191
    iget-object v6, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->c:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    iget-object v7, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->isPathInTabs(Ljava/lang/String;)I

    move-result v2

    .line 192
    .local v2, "index":I
    if-lez v2, :cond_0

    .line 193
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->f:Ljava/lang/String;

    .line 194
    .local v1, "enterUrl":Ljava/lang/String;
    iget-object v6, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->k:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 195
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 196
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->k:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 197
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-virtual {v0, v1}, Ljqr;->b(Ljava/lang/String;)Z

    move-result v3

    .line 200
    .local v3, "success":Z
    if-nez v3, :cond_3

    .line 201
    invoke-virtual {v0, v1}, Ljqr;->a(Ljava/lang/String;)Z

    .line 203
    iget v6, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->h:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 204
    iget-object v6, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->e:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    iget v7, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->h:I

    invoke-virtual {v6, v7}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->setSelected(I)V

    goto/16 :goto_0

    .line 207
    :cond_3
    iput v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->h:I

    .line 208
    iget-object v6, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->e:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    invoke-virtual {v6, v2}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->setSelected(I)V

    goto/16 :goto_0
.end method
