.class public Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
.super Ljava/lang/Object;
.source "H5ViewHolder.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ViewHolder"


# instance fields
.field private h5FontBar:Lcom/alipay/mobile/nebulacore/view/H5FontBar;

.field private h5NavBar:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

.field private h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field private h5Tabbar:Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

.field private h5TransWebContainer:Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

.field private h5WebContainer:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

.field private h5WebContent:Landroid/view/View;

.field private rootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private animateRootView(Landroid/view/View;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x12c

    const/4 v1, 0x0

    .line 235
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 236
    .local v0, "transparent":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 239
    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;Landroid/view/View;)V

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 247
    return-void
.end method


# virtual methods
.method public getH5FontBar()Lcom/alipay/mobile/nebulacore/view/H5FontBar;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h5FontBar:Lcom/alipay/mobile/nebulacore/view/H5FontBar;

    return-object v0
.end method

.method public getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h5NavBar:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    return-object v0
.end method

.method public getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    return-object v0
.end method

.method public getH5Tabbar()Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h5Tabbar:Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

    return-object v0
.end method

.method public getH5TransWebContainer()Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h5TransWebContainer:Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    return-object v0
.end method

.method public getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h5WebContainer:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    return-object v0
.end method

.method public getH5WebContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h5WebContent:Landroid/view/View;

    return-object v0
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->rootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public refreshView()V
    .locals 17

    .prologue
    .line 114
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->rootView:Landroid/view/ViewGroup;

    if-nez v14, :cond_1

    .line 115
    const-string/jumbo v14, "H5ViewHolder"

    const-string/jumbo v15, "root contentView is null"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v14}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v8

    .line 120
    .local v8, "startParams":Landroid/os/Bundle;
    const/4 v11, 0x0

    .line 121
    .local v11, "transActivityFlag":Z
    const-string/jumbo v14, "transparent"

    const/4 v15, 0x0

    invoke-static {v8, v14, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 122
    const/4 v11, 0x1

    .line 124
    :cond_2
    const-string/jumbo v14, "H5ViewHolder"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "transActivityFlag "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_1
    if-nez v11, :cond_e

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->getContent()Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 135
    const-string/jumbo v14, "H5ViewHolder"

    const-string/jumbo v15, "add nav bar"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v5, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 139
    .local v5, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v14, 0xa

    invoke-virtual {v5, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 140
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->getContent()Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 144
    .end local v5    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Tabbar()Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Tabbar()Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->getContent()Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 145
    const-string/jumbo v14, "H5ViewHolder"

    const-string/jumbo v15, "add tab bar"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/alipay/mobile/nebula/R$dimen;->h5_bottom_height_tab:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v4, v14

    .line 148
    .local v4, "heightBottom":I
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x1

    invoke-direct {v7, v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 150
    .local v7, "lpBottom":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v14, 0xc

    invoke-virtual {v7, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Tabbar()Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->getContent()Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->rootView:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 154
    .end local v4    # "heightBottom":I
    .end local v7    # "lpBottom":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->getContent()Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->getContent()Landroid/view/View;

    move-result-object v3

    .line 156
    .local v3, "h5WebContent":Landroid/view/View;
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v6, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v6, "lpAll":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v12, 0x0

    .line 161
    .local v12, "transTitle":Z
    if-eqz v8, :cond_7

    const-string/jumbo v14, "transparentTitle"

    .line 162
    invoke-virtual {v8, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 163
    const-string/jumbo v14, "transparentTitle"

    .line 164
    invoke-static {v8, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 165
    .local v13, "transparentTitle":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 166
    const-string/jumbo v14, "always"

    invoke-static {v14, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string/jumbo v14, "auto"

    .line 167
    invoke-static {v14, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    :cond_5
    const/4 v12, 0x1

    .line 168
    :goto_2
    const-string/jumbo v14, "custom"

    invoke-static {v14, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 169
    const-string/jumbo v14, "backBtnImage"

    invoke-virtual {v8, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string/jumbo v14, "backBtnTextColor"

    .line 170
    invoke-virtual {v8, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string/jumbo v14, "titleColor"

    .line 171
    invoke-virtual {v8, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 172
    const-string/jumbo v14, "backBtnImage"

    .line 173
    invoke-static {v8, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "bbi":Ljava/lang/String;
    const-string/jumbo v14, "backBtnTextColor"

    .line 175
    invoke-static {v8, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    .line 176
    .local v1, "bbc":I
    const-string/jumbo v14, "titleColor"

    invoke-static {v8, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v9

    .line 177
    .local v9, "tc":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    const-string/jumbo v14, "default"

    .line 178
    invoke-static {v2, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_c

    :cond_6
    const/high16 v14, -0x1000000

    if-ne v1, v14, :cond_c

    const/high16 v14, -0x1000000

    if-ne v9, v14, :cond_c

    .line 181
    const/4 v12, 0x0

    .line 189
    .end local v1    # "bbc":I
    .end local v2    # "bbi":Ljava/lang/String;
    .end local v9    # "tc":I
    .end local v13    # "transparentTitle":Ljava/lang/String;
    :cond_7
    :goto_3
    if-eqz v12, :cond_d

    .line 190
    const-string/jumbo v14, "H5ViewHolder"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "transTitle:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v14, 0x6

    invoke-virtual {v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v14

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/alipay/mobile/nebula/R$dimen;->h5_title_height:I

    .line 194
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    .line 193
    invoke-virtual {v14, v15}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->setUrlProviderMargin(I)V

    .line 205
    :cond_8
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Tabbar()Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

    move-result-object v14

    if-eqz v14, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Tabbar()Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->getContent()Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 206
    const/4 v14, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Tabbar()Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->getContent()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v15

    invoke-virtual {v6, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 210
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->rootView:Landroid/view/ViewGroup;

    const/4 v15, 0x0

    invoke-virtual {v14, v3, v15, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    :goto_5
    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/Nebula;->isDelayRender(Landroid/os/Bundle;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 217
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->rootView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->animateRootView(Landroid/view/View;)V

    .line 220
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v14}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->checkIfShowLoadingView()V

    goto/16 :goto_0

    .line 128
    .end local v3    # "h5WebContent":Landroid/view/View;
    .end local v6    # "lpAll":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "transTitle":Z
    :catch_0
    move-exception v10

    .line 129
    .local v10, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v14, "H5ViewHolder"

    invoke-static {v14, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 167
    .end local v10    # "throwable":Ljava/lang/Throwable;
    .restart local v3    # "h5WebContent":Landroid/view/View;
    .restart local v6    # "lpAll":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v12    # "transTitle":Z
    .restart local v13    # "transparentTitle":Ljava/lang/String;
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 183
    .restart local v1    # "bbc":I
    .restart local v2    # "bbi":Ljava/lang/String;
    .restart local v9    # "tc":I
    :cond_c
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 197
    .end local v1    # "bbc":I
    .end local v2    # "bbi":Ljava/lang/String;
    .end local v9    # "tc":I
    .end local v13    # "transparentTitle":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->getContent()Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 198
    const/4 v14, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->getContent()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v15

    invoke-virtual {v6, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->setUrlProviderMargin(I)V

    goto/16 :goto_4

    .line 211
    :catch_1
    move-exception v10

    .line 212
    .restart local v10    # "throwable":Ljava/lang/Throwable;
    const-string/jumbo v14, "H5ViewHolder"

    invoke-static {v14, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 223
    .end local v3    # "h5WebContent":Landroid/view/View;
    .end local v6    # "lpAll":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v10    # "throwable":Ljava/lang/Throwable;
    .end local v12    # "transTitle":Z
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5TransWebContainer()Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5TransWebContainer()Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->getContent()Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5TransWebContainer()Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->getContent()Landroid/view/View;

    move-result-object v3

    .line 225
    .restart local v3    # "h5WebContent":Landroid/view/View;
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v6, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 228
    .restart local v6    # "lpAll":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->rootView:Landroid/view/ViewGroup;

    const/4 v15, 0x0

    invoke-virtual {v14, v3, v15, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public setH5FontBar(Lcom/alipay/mobile/nebulacore/view/H5FontBar;)V
    .locals 0
    .param p1, "h5FontBar"    # Lcom/alipay/mobile/nebulacore/view/H5FontBar;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h5FontBar:Lcom/alipay/mobile/nebulacore/view/H5FontBar;

    .line 65
    return-void
.end method

.method public setH5NavBar(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)V
    .locals 0
    .param p1, "h5NavBar"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h5NavBar:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .line 48
    return-void
.end method

.method public setH5Page(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0
    .param p1, "h5Page"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 103
    return-void
.end method

.method public setH5Tabbar(Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;)V
    .locals 0
    .param p1, "h5Tabbar"    # Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h5Tabbar:Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

    .line 57
    return-void
.end method

.method public setH5TransWebContainer(Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;)V
    .locals 0
    .param p1, "h5TransWebContainer"    # Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h5TransWebContainer:Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    .line 87
    return-void
.end method

.method public setH5WebContainer(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V
    .locals 0
    .param p1, "h5WebContainer"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h5WebContainer:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 74
    return-void
.end method

.method public setH5WebContent(Landroid/view/View;)V
    .locals 0
    .param p1, "h5WebContent"    # Landroid/view/View;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h5WebContent:Landroid/view/View;

    .line 95
    return-void
.end method

.method public setRootView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->rootView:Landroid/view/ViewGroup;

    .line 111
    return-void
.end method
