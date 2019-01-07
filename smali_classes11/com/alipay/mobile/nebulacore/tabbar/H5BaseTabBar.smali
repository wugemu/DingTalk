.class public abstract Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;
.super Lipd;
.source "H5BaseTabBar.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5BaseTabBar"


# instance fields
.field public context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field pageViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

.field tabBarView:Landroid/widget/LinearLayout;

.field tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method private getNameWithLocale(Lcom/alibaba/fastjson/JSONObject;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .param p1, "item"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "startParams"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 336
    const-string/jumbo v3, "locale"

    invoke-static {p2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "locale":Ljava/lang/String;
    const-string/jumbo v3, "name"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 345
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 341
    .restart local v2    # "name":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "name_locale"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 342
    .local v1, "localeObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public abstract addTabBar()V
.end method

.method public createTabBadge(Lcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 13
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x8

    .line 167
    const-string/jumbo v8, "H5BaseTabBar"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "createTabBadge "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    if-eqz v8, :cond_0

    .line 169
    const-string/jumbo v8, "tag"

    invoke-static {p1, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, "tag":Ljava/lang/String;
    const-string/jumbo v8, "redDot"

    invoke-static {p1, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, "value":Ljava/lang/String;
    const-string/jumbo v8, "H5BaseTabBar"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "createTabBadge value is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->getChildCount()I

    move-result v4

    .line 173
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 174
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-virtual {v8, v1}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 175
    .local v3, "rootView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 176
    sget v8, Lcom/alipay/mobile/nebula/R$id;->h5_tabbaritem_badge:I

    .line 178
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 180
    .local v0, "badgeView":Landroid/widget/TextView;
    sget v8, Lcom/alipay/mobile/nebula/R$id;->h5_tabbaritem_badge_small:I

    .line 182
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 184
    .local v5, "smallBadgeView":Landroid/widget/ImageView;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 185
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    .end local v0    # "badgeView":Landroid/widget/TextView;
    .end local v1    # "i":I
    .end local v3    # "rootView":Landroid/view/View;
    .end local v4    # "size":I
    .end local v5    # "smallBadgeView":Landroid/widget/ImageView;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 188
    .restart local v0    # "badgeView":Landroid/widget/TextView;
    .restart local v1    # "i":I
    .restart local v3    # "rootView":Landroid/view/View;
    .restart local v4    # "size":I
    .restart local v5    # "smallBadgeView":Landroid/widget/ImageView;
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "realBadge":Ljava/lang/String;
    const-string/jumbo v8, "-1"

    invoke-static {v8, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 190
    const-string/jumbo v8, "0"

    invoke-static {v8, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 191
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 194
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 199
    :cond_3
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 173
    .end local v0    # "badgeView":Landroid/widget/TextView;
    .end local v2    # "realBadge":Ljava/lang/String;
    .end local v5    # "smallBadgeView":Landroid/widget/ImageView;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public createTabBar(Lcom/alibaba/fastjson/JSONObject;Liny;Landroid/os/Bundle;)V
    .locals 37
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "bridgeContext"    # Liny;
    .param p3, "startParams"    # Landroid/os/Bundle;

    .prologue
    .line 61
    const-string/jumbo v3, "H5BaseTabBar"

    const-string/jumbo v7, "createTabBar"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string/jumbo v3, "textColor"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v34

    .line 63
    .local v34, "textColor":I
    const-string/jumbo v3, "selectedColor"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v28

    .line 64
    .local v28, "selectedColor":I
    const-string/jumbo v3, "selectedIndex"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v29

    .line 65
    .local v29, "selectedIndex":I
    const-string/jumbo v3, "backgroundColor"

    const v7, -0x70707

    move-object/from16 v0, p1

    invoke-static {v0, v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v31

    .line 66
    .local v31, "tabBackgroundColor":I
    const/high16 v3, -0x1000000

    or-int v31, v31, v3

    .line 67
    const-string/jumbo v3, "shadowColor"

    const v7, -0x545452

    move-object/from16 v0, p1

    invoke-static {v0, v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v30

    .line 68
    .local v30, "shadowColor":I
    const-string/jumbo v3, "items"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v23

    .line 69
    .local v23, "items":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v23, :cond_4

    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 70
    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v7, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabBarView:Landroid/widget/LinearLayout;

    .line 71
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabBarView:Landroid/widget/LinearLayout;

    sget v7, Lcom/alipay/mobile/nebula/R$id;->h5_tabrootview:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setId(I)V

    .line 72
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabBarView:Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73
    new-instance v7, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v7, v3}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    .line 74
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    sget v7, Lcom/alipay/mobile/nebula/R$id;->h5_tabhost:I

    invoke-virtual {v3, v7}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->setId(I)V

    .line 75
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    new-instance v7, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$1;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;Liny;)V

    invoke-virtual {v3, v7}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->setTabListener(Lcom/alipay/mobile/nebula/view/H5TabbarLayout$H5TabListener;)V

    .line 94
    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v24

    .line 95
    .local v24, "itemsLength":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    .line 96
    const/4 v3, 0x5

    move/from16 v0, v20

    if-ge v0, v3, :cond_3

    .line 100
    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v22

    .line 101
    .local v22, "item":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v22, :cond_1

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->getNameWithLocale(Lcom/alibaba/fastjson/JSONObject;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v36

    .line 103
    .local v36, "title":Ljava/lang/String;
    const-string/jumbo v3, "tag"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 104
    .local v33, "tag":Ljava/lang/String;
    const-string/jumbo v3, "icon"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 105
    .local v21, "iconURL":Ljava/lang/String;
    const-string/jumbo v3, "activeIcon"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "activeIconURL":Ljava/lang/String;
    const-string/jumbo v3, "redDot"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 107
    .local v17, "badge":Ljava/lang/String;
    const-string/jumbo v3, "H5BaseTabBar"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "createTabBar badge value is "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v32, Lcom/alipay/mobile/nebula/view/H5TabbarItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Lcom/alipay/mobile/nebula/view/H5TabbarItem;-><init>(Landroid/content/Context;)V

    .line 109
    .local v32, "tabbarItem":Lcom/alipay/mobile/nebula/view/H5TabbarItem;
    invoke-virtual/range {v32 .. v33}, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->setTag(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {v32 .. v32}, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->getIconAreaView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 112
    .local v5, "iconArea":Landroid/widget/TextView;
    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    move/from16 v0, v34

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->generateTextColor(II)Landroid/content/res/ColorStateList;

    move-result-object v35

    .line 115
    .local v35, "textState":Landroid/content/res/ColorStateList;
    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 117
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->generateEmptyTopDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    .line 118
    .local v6, "drawableState":Landroid/graphics/drawable/StateListDrawable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/alipay/mobile/nebula/R$dimen;->h5_bottom_height_tab_icon:I

    .line 119
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 120
    .local v8, "drawableSize":I
    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7, v8, v8}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    const/4 v9, 0x1

    move-object/from16 v3, p0

    move-object/from16 v10, p3

    invoke-virtual/range {v3 .. v10}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->loadImageAsync(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Context;

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, v21

    move-object v11, v5

    move-object v12, v6

    move v14, v8

    move-object/from16 v16, p3

    invoke-virtual/range {v9 .. v16}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->loadImageAsync(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V

    .line 128
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    .line 130
    .local v25, "realBadge":Ljava/lang/String;
    const-string/jumbo v3, "-1"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    const-string/jumbo v3, "0"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    invoke-virtual/range {v32 .. v32}, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->getSmallBadgeAreaView()Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 135
    .local v18, "badgeArea":Landroid/widget/ImageView;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    .end local v18    # "badgeArea":Landroid/widget/ImageView;
    .end local v25    # "realBadge":Ljava/lang/String;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-virtual/range {v32 .. v32}, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->addTab(Landroid/view/View;)V

    .line 95
    .end local v4    # "activeIconURL":Ljava/lang/String;
    .end local v5    # "iconArea":Landroid/widget/TextView;
    .end local v6    # "drawableState":Landroid/graphics/drawable/StateListDrawable;
    .end local v8    # "drawableSize":I
    .end local v17    # "badge":Ljava/lang/String;
    .end local v21    # "iconURL":Ljava/lang/String;
    .end local v32    # "tabbarItem":Lcom/alipay/mobile/nebula/view/H5TabbarItem;
    .end local v33    # "tag":Ljava/lang/String;
    .end local v35    # "textState":Landroid/content/res/ColorStateList;
    .end local v36    # "title":Ljava/lang/String;
    :cond_1
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 138
    .restart local v4    # "activeIconURL":Ljava/lang/String;
    .restart local v5    # "iconArea":Landroid/widget/TextView;
    .restart local v6    # "drawableState":Landroid/graphics/drawable/StateListDrawable;
    .restart local v8    # "drawableSize":I
    .restart local v17    # "badge":Ljava/lang/String;
    .restart local v21    # "iconURL":Ljava/lang/String;
    .restart local v25    # "realBadge":Ljava/lang/String;
    .restart local v32    # "tabbarItem":Lcom/alipay/mobile/nebula/view/H5TabbarItem;
    .restart local v33    # "tag":Ljava/lang/String;
    .restart local v35    # "textState":Landroid/content/res/ColorStateList;
    .restart local v36    # "title":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {v32 .. v32}, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->getBadgeAreaView()Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 139
    .local v18, "badgeArea":Landroid/widget/TextView;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 149
    .end local v4    # "activeIconURL":Ljava/lang/String;
    .end local v5    # "iconArea":Landroid/widget/TextView;
    .end local v6    # "drawableState":Landroid/graphics/drawable/StateListDrawable;
    .end local v8    # "drawableSize":I
    .end local v17    # "badge":Ljava/lang/String;
    .end local v18    # "badgeArea":Landroid/widget/TextView;
    .end local v21    # "iconURL":Ljava/lang/String;
    .end local v22    # "item":Lcom/alibaba/fastjson/JSONObject;
    .end local v25    # "realBadge":Ljava/lang/String;
    .end local v32    # "tabbarItem":Lcom/alipay/mobile/nebula/view/H5TabbarItem;
    .end local v33    # "tag":Ljava/lang/String;
    .end local v35    # "textState":Landroid/content/res/ColorStateList;
    .end local v36    # "title":Ljava/lang/String;
    :cond_3
    new-instance v26, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v7, 0x1

    move-object/from16 v0, v26

    invoke-direct {v0, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 151
    .local v26, "rootLayoutParams4Line":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v19, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 152
    .local v19, "borderLine":Landroid/view/View;
    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabBarView:Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->selectTab(I)V

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->setBackgroundColor(I)V

    .line 157
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v7, -0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v27, "rootLayoutParams4Tab":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabBarView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    move-object/from16 v0, v27

    invoke-virtual {v3, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->addTabBar()V

    .line 163
    .end local v19    # "borderLine":Landroid/view/View;
    .end local v20    # "i":I
    .end local v24    # "itemsLength":I
    .end local v26    # "rootLayoutParams4Line":Landroid/widget/LinearLayout$LayoutParams;
    .end local v27    # "rootLayoutParams4Tab":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    return-void
.end method

.method public createTabIcon(Lcom/alibaba/fastjson/JSONObject;Liny;Landroid/os/Bundle;)V
    .locals 22
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "bridgeContext"    # Liny;
    .param p3, "startParams"    # Landroid/os/Bundle;

    .prologue
    .line 236
    const-string/jumbo v2, "H5BaseTabBar"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "createTabIcon "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    if-eqz v2, :cond_2

    .line 238
    const-string/jumbo v2, "tag"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 239
    .local v21, "tag":Ljava/lang/String;
    const-string/jumbo v2, "icon"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 240
    .local v18, "iconURL":Ljava/lang/String;
    const-string/jumbo v2, "activeIcon"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "activeIconURL":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 243
    .local v16, "bitmap":Landroid/graphics/Bitmap;
    if-nez v16, :cond_0

    .line 244
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 250
    .end local v16    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 251
    .restart local v16    # "bitmap":Landroid/graphics/Bitmap;
    if-nez v16, :cond_1

    .line 252
    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 257
    .end local v16    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    const-string/jumbo v2, "H5BaseTabBar"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "createTabIcon iconURL is "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", activeIconURL is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->getChildCount()I

    move-result v20

    .line 259
    .local v20, "size":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 261
    .local v19, "rootView":Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_tabbaritem_txticon:I

    .line 264
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 266
    .local v4, "iconArea":Landroid/widget/TextView;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->generateEmptyTopDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    .line 267
    .local v5, "drawableState":Landroid/graphics/drawable/StateListDrawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/alipay/mobile/nebula/R$dimen;->h5_bottom_height_tab_icon:I

    .line 268
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 269
    .local v7, "drawableSize":I
    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v7, v7}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->loadImageAsync(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Context;

    const/4 v14, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, v18

    move-object v10, v4

    move-object v11, v5

    move v13, v7

    move-object/from16 v15, p3

    invoke-virtual/range {v8 .. v15}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->loadImageAsync(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V

    .line 279
    .end local v3    # "activeIconURL":Ljava/lang/String;
    .end local v4    # "iconArea":Landroid/widget/TextView;
    .end local v5    # "drawableState":Landroid/graphics/drawable/StateListDrawable;
    .end local v7    # "drawableSize":I
    .end local v17    # "i":I
    .end local v18    # "iconURL":Ljava/lang/String;
    .end local v19    # "rootView":Landroid/view/View;
    .end local v20    # "size":I
    .end local v21    # "tag":Ljava/lang/String;
    :cond_2
    return-void

    .line 247
    .restart local v3    # "activeIconURL":Ljava/lang/String;
    .restart local v18    # "iconURL":Ljava/lang/String;
    .restart local v21    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_0

    .line 255
    :catch_1
    move-exception v2

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 259
    .restart local v17    # "i":I
    .restart local v19    # "rootView":Landroid/view/View;
    .restart local v20    # "size":I
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2
.end method

.method public createTabTextColor(Lcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 11
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 211
    const-string/jumbo v8, "H5BaseTabBar"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "createTabTextColor "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    if-eqz v8, :cond_0

    .line 213
    const-string/jumbo v8, "tag"

    invoke-static {p1, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 214
    .local v5, "tag":Ljava/lang/String;
    const-string/jumbo v8, "textColor"

    invoke-static {p1, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v6

    .line 215
    .local v6, "textColor":I
    const-string/jumbo v8, "selectedColor"

    invoke-static {p1, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v3

    .line 216
    .local v3, "selectedColor":I
    const-string/jumbo v8, "H5BaseTabBar"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "createTabTextColor textColor is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", selectedColor is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->getChildCount()I

    move-result v4

    .line 218
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 219
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-virtual {v8, v0}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 220
    .local v2, "rootView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 221
    sget v8, Lcom/alipay/mobile/nebula/R$id;->h5_tabbaritem_txticon:I

    .line 223
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 226
    .local v1, "iconArea":Landroid/widget/TextView;
    invoke-static {v6, v3}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->generateTextColor(II)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 227
    .local v7, "textState":Landroid/content/res/ColorStateList;
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 232
    .end local v0    # "i":I
    .end local v1    # "iconArea":Landroid/widget/TextView;
    .end local v2    # "rootView":Landroid/view/View;
    .end local v3    # "selectedColor":I
    .end local v4    # "size":I
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "textColor":I
    .end local v7    # "textState":Landroid/content/res/ColorStateList;
    :cond_0
    return-void

    .line 218
    .restart local v0    # "i":I
    .restart local v2    # "rootView":Landroid/view/View;
    .restart local v3    # "selectedColor":I
    .restart local v4    # "size":I
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "textColor":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabBarView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected loadImageAsync(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V
    .locals 13
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "iconArea"    # Landroid/widget/TextView;
    .param p3, "sd"    # Landroid/graphics/drawable/StateListDrawable;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "drawableSize"    # I
    .param p6, "isCheckedState"    # Z
    .param p7, "startParams"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 285
    const-string/jumbo v2, "onlineHost"

    move-object/from16 v0, p7

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 286
    .local v11, "onlineHost":Ljava/lang/String;
    const-string/jumbo v2, "cdnBaseUrl"

    move-object/from16 v0, p7

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 287
    .local v10, "cdnBaseUrl":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    invoke-virtual {p1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    invoke-virtual {p1, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 290
    const-string/jumbo v2, "H5BaseTabBar"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " after replace "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_0
    const-string/jumbo v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 295
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 296
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    if-nez v9, :cond_1

    .line 333
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 299
    .restart local v9    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v12, v2, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 300
    .local v12, "topDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p5

    move/from16 v1, p5

    invoke-virtual {v12, v2, v3, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 301
    if-eqz p6, :cond_2

    .line 302
    move-object/from16 v0, p3

    invoke-static {v0, v12}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->addCheckedState(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    .line 306
    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {p2, v2, v0, v3, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 304
    :cond_2
    move-object/from16 v0, p3

    invoke-static {v0, v12}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->addNormalState(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 311
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "topDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    new-instance v2, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;

    move-object v3, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p3

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;Landroid/content/Context;IZLandroid/graphics/drawable/StateListDrawable;Landroid/widget/TextView;)V

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebulacore/Nebula;->loadImage(Ljava/lang/String;Lioi;)V

    goto :goto_0
.end method

.method public abstract setPageViewHolder(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V
.end method
