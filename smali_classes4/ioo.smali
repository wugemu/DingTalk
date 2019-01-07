.class public final Lioo;
.super Ljava/lang/Object;
.source "H5NavMenu.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/view/H5NavMenuView;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/view/H5NavMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 37
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 38
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 39
    .local v8, "inflater":Landroid/view/LayoutInflater;
    sget v14, Lcom/alipay/mobile/nebula/R$layout;->h5_nav_menu_item:I

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v8, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, "content":Landroid/view/View;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 43
    move-object/from16 v0, p0

    iget-object v14, v0, Lioo;->a:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 44
    .local v9, "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    sget v14, Lcom/alipay/mobile/nebula/R$id;->h5_tv_title:I

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 46
    .local v12, "tvTitle":Landroid/widget/TextView;
    iget-object v14, v9, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->name:Ljava/lang/String;

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    sget v14, Lcom/alipay/mobile/nebula/R$id;->h5_iv_icon:I

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 49
    .local v10, "ivIcon":Landroid/widget/ImageView;
    iget-object v14, v9, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_2

    .line 50
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-object v14, v9, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    :goto_0
    sget v14, Lcom/alipay/mobile/nebula/R$id;->h5_popmenu_dot:I

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 59
    .local v4, "dotContainer":Landroid/widget/RelativeLayout;
    sget v14, Lcom/alipay/mobile/nebula/R$id;->h5_popmenu_dot_bg:I

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 60
    .local v3, "dotBg":Landroid/widget/ImageView;
    sget v14, Lcom/alipay/mobile/nebula/R$id;->h5_popmenu_dot_num:I

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 61
    .local v6, "dotText":Landroid/widget/TextView;
    iget-object v11, v9, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->redDotNum:Ljava/lang/String;

    .line 62
    .local v11, "redDot":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 63
    const-string/jumbo v11, "-1"

    .line 65
    :cond_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 66
    const/4 v5, -0x1

    .line 68
    .local v5, "dotNum":I
    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 72
    :goto_1
    if-ltz v5, :cond_3

    const/4 v13, 0x0

    .line 73
    .local v13, "visibility":I
    :goto_2
    invoke-virtual {v4, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 75
    if-nez v5, :cond_4

    .line 76
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    const/16 v14, 0x8

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    .end local v5    # "dotNum":I
    .end local v13    # "visibility":I
    :cond_1
    :goto_3
    return-object v1

    .line 53
    .end local v3    # "dotBg":Landroid/widget/ImageView;
    .end local v4    # "dotContainer":Landroid/widget/RelativeLayout;
    .end local v6    # "dotText":Landroid/widget/TextView;
    .end local v11    # "redDot":Ljava/lang/String;
    :cond_2
    const/16 v14, 0x8

    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 72
    .restart local v3    # "dotBg":Landroid/widget/ImageView;
    .restart local v4    # "dotContainer":Landroid/widget/RelativeLayout;
    .restart local v5    # "dotNum":I
    .restart local v6    # "dotText":Landroid/widget/TextView;
    .restart local v11    # "redDot":Ljava/lang/String;
    :cond_3
    const/16 v13, 0x8

    goto :goto_2

    .line 78
    .restart local v13    # "visibility":I
    :cond_4
    if-lez v5, :cond_1

    .line 79
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    const/16 v14, 0x8

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    const/16 v14, 0x63

    if-le v5, v14, :cond_5

    const-string/jumbo v7, "\u00b7\u00b7\u00b7"

    .line 82
    .local v7, "dt":Ljava/lang/String;
    :goto_4
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 81
    .end local v7    # "dt":Ljava/lang/String;
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .end local v13    # "visibility":I
    :catch_0
    move-exception v14

    goto :goto_1
.end method

.method public final getListCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lioo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/view/H5NavMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "menuList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/view/H5NavMenuItem;>;"
    iput-object p1, p0, Lioo;->a:Ljava/util/List;

    .line 28
    return-void
.end method
