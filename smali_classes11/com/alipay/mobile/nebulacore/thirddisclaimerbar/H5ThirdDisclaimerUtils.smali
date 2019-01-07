.class public Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;
.super Ljava/lang/Object;
.source "H5ThirdDisclaimerUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "H5ThirdDisclaimerUtils"

    sput-object v0, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisclaimerView(Landroid/content/Context;Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerClickListener;)Landroid/widget/RelativeLayout;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "h5ThirdDisclaimerClickListener"    # Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerClickListener;

    .prologue
    .line 39
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->getInstance()Lcom/alipay/mobile/nebula/util/H5TypefaceCache;

    const-string/jumbo v9, "h5iconfont"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "h5iconfont"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "h5titlebar.ttf"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v9, v10}, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->getTypeface(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    .line 41
    .local v8, "typeface":Landroid/graphics/Typeface;
    const/high16 v9, 0x42100000    # 36.0f

    invoke-static {p0, v9}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 43
    .local v5, "size":I
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, "container":Landroid/widget/RelativeLayout;
    const v9, -0x44cccccd

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 46
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47
    .local v1, "leftBtn":Landroid/widget/TextView;
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    const-string/jumbo v9, "\ue7da"

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const/16 v9, 0x11

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 50
    const/4 v9, -0x1

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    const/4 v9, 0x1

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v1, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 52
    sget v9, Lcom/alipay/mobile/nebula/R$id;->h5_warningtips_left:I

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setId(I)V

    .line 53
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55
    .local v2, "leftBtnLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xf

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 56
    const/16 v9, 0x9

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 60
    .local v6, "text":Landroid/widget/TextView;
    const-string/jumbo v9, "\u6e29\u99a8\u63d0\u793a\uff1a\u6b64\u9875\u9762\u7531\u7b2c\u4e09\u65b9\u63d0\u4f9b"

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const/16 v9, 0x11

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 62
    const/4 v9, -0x1

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    const/4 v9, 0x1

    const/high16 v10, 0x41700000    # 15.0f

    invoke-virtual {v6, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 64
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v7, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v7, "textLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xf

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67
    const/4 v9, 0x1

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 68
    invoke-virtual {v0, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 71
    .local v3, "rightBtn":Landroid/widget/TextView;
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 72
    const-string/jumbo v9, "\ue71e"

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const/16 v9, 0x11

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 74
    const/4 v9, -0x1

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    new-instance v9, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils$1;

    invoke-direct {v9, p1}, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils$1;-><init>(Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerClickListener;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 84
    .local v4, "rightBtnLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xf

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 85
    const/16 v9, 0xb

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 86
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    return-object v0
.end method

.method public static getDisclaimerViewLayoutParams(Landroid/content/Context;Landroid/os/Bundle;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startParams"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 91
    const-string/jumbo v4, "transparentTitle"

    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "transparentTitle":Ljava/lang/String;
    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {p0, v4}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 93
    .local v2, "size":I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 95
    .local v0, "containerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const-string/jumbo v4, "always"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "auto"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "custom"

    .line 96
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 97
    :cond_0
    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {p0, v4}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 98
    .local v1, "offset":I
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->isSupport()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->isConfigSupport()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    add-int/2addr v1, v4

    .line 101
    :cond_1
    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 103
    .end local v1    # "offset":I
    :cond_2
    return-object v0
.end method

.method public static needShowDisclaimer(Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 21
    .param p0, "startParams"    # Landroid/os/Bundle;
    .param p1, "currentUrl"    # Ljava/lang/String;

    .prologue
    .line 112
    const-class v18, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 113
    .local v5, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-nez v5, :cond_0

    .line 114
    const/16 v18, 0x0

    .line 185
    :goto_0
    return v18

    .line 117
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    const-string/jumbo v18, "url"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 118
    .local v16, "url":Ljava/lang/String;
    :goto_1
    const/4 v7, 0x0

    .line 119
    .local v7, "host":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 120
    .local v15, "uri":Landroid/net/Uri;
    if-eqz v15, :cond_1

    .line 121
    invoke-virtual {v15}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 123
    :cond_1
    sget-object v18, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "needShowDisclaimer url "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", host "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAliDomains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 126
    sget-object v18, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "needShowDisclaimer bingo alidomains"

    invoke-static/range {v18 .. v19}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/16 v18, 0x0

    goto :goto_0

    .end local v7    # "host":Ljava/lang/String;
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v16    # "url":Ljava/lang/String;
    :cond_2
    move-object/from16 v16, p1

    .line 117
    goto :goto_1

    .line 130
    .restart local v7    # "host":Ljava/lang/String;
    .restart local v15    # "uri":Landroid/net/Uri;
    .restart local v16    # "url":Ljava/lang/String;
    :cond_3
    const-string/jumbo v18, "isTinyApp"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v10

    .line 131
    .local v10, "isTinyApp":Z
    if-eqz v10, :cond_4

    .line 132
    sget-object v18, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "needShowDisclaimer bingo isTinyApp"

    invoke-static/range {v18 .. v19}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/16 v18, 0x0

    goto :goto_0

    .line 136
    :cond_4
    const-string/jumbo v18, "h5_thirdDisclaimer_rules"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, "configStr":Ljava/lang/String;
    sget-object v18, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "needShowDisclaimer configStr "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 141
    .local v4, "configObj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v18, "whiteList"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v17

    .line 142
    .local v17, "whiteListArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 143
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_6

    .line 144
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 145
    .local v11, "item":Ljava/lang/String;
    invoke-static {v11, v7}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 146
    .local v13, "result":Z
    if-eqz v13, :cond_5

    .line 147
    sget-object v18, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "needShowDisclaimer bingo whiteList"

    invoke-static/range {v18 .. v19}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 143
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 154
    .end local v8    # "i":I
    .end local v11    # "item":Ljava/lang/String;
    .end local v13    # "result":Z
    :cond_6
    const-string/jumbo v18, "mode"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 156
    .local v12, "mode":Ljava/lang/String;
    const-string/jumbo v18, "showThirdDisclaimer"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v14

    .line 157
    .local v14, "showThirdDisclaimer":Z
    sget-object v18, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "needShowDisclaimer showThirdDisclaimer "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v9, 0x0

    .line 160
    .local v9, "isInBlackList":Z
    const-string/jumbo v18, "blackList"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 161
    .local v3, "blackListArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 162
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_7

    .line 163
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 164
    .restart local v11    # "item":Ljava/lang/String;
    invoke-static {v11, v7}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 165
    .restart local v13    # "result":Z
    if-eqz v13, :cond_9

    .line 166
    sget-object v18, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "needShowDisclaimer bingo blackList"

    invoke-static/range {v18 .. v19}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v9, 0x1

    .line 173
    .end local v8    # "i":I
    .end local v11    # "item":Ljava/lang/String;
    .end local v13    # "result":Z
    :cond_7
    if-nez v14, :cond_8

    if-eqz v9, :cond_c

    .line 174
    :cond_8
    const-string/jumbo v18, "ignoreoptionuseblacklist"

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 175
    if-eqz v9, :cond_c

    .line 176
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 162
    .restart local v8    # "i":I
    .restart local v11    # "item":Ljava/lang/String;
    .restart local v13    # "result":Z
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 178
    .end local v8    # "i":I
    .end local v11    # "item":Ljava/lang/String;
    .end local v13    # "result":Z
    :cond_a
    const-string/jumbo v18, "usetimeout"

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 179
    const/16 v18, 0x2

    goto/16 :goto_0

    .line 180
    :cond_b
    const-string/jumbo v18, "default"

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 181
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 185
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method public static spmMonitor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 192
    const-string/jumbo v2, "a248.b6262.c13709.d25269"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 193
    .local v1, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->newH5BehaviorLogConfig()Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    move-result-object v2

    const-string/jumbo v3, "H5Service"

    .line 194
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->setBehaviourPro(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->setActionId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    move-result-object v0

    .line 195
    .local v0, "config":Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->behaviorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;)V

    .line 196
    return-void
.end method
