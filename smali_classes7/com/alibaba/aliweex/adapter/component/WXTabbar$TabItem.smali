.class Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;
.super Ljava/lang/Object;
.source "WXTabbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/aliweex/adapter/component/WXTabbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TabItem"
.end annotation


# static fields
.field public static final DEFAULT_FONTSIZE:I = 0x18

.field public static final DEFAULT_ICON_SIZE:I = 0x44

.field public static final FONT_SIZE:Ljava/lang/String; = "fontSize"

.field public static final ICON_SIZE:Ljava/lang/String; = "iconSize"


# instance fields
.field mBadge:Landroid/widget/TextView;

.field mIcon:Ljava/lang/String;

.field mImage:Landroid/widget/ImageView;

.field mInstance:Lcom/taobao/weex/WXSDKInstance;

.field mItemId:Ljava/lang/String;

.field mSelectedIcon:Ljava/lang/String;

.field mText:Landroid/widget/TextView;

.field mTitleColor:I

.field mTitleSelectedColor:I

.field mView:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    return-void
.end method

.method public static create(Lcom/alibaba/fastjson/JSONObject;Landroid/content/Context;Lcom/taobao/weex/WXSDKInstance;)Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;
    .locals 27
    .param p0, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 243
    new-instance v15, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;

    invoke-direct {v15}, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;-><init>()V

    .line 246
    .local v15, "item":Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;
    :try_start_0
    move-object/from16 v0, p2

    iput-object v0, v15, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 247
    const-string/jumbo v24, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 248
    .local v21, "title":Ljava/lang/String;
    const-string/jumbo v24, "titleColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v22

    .line 249
    .local v22, "titleColor":I
    const-string/jumbo v24, "titleSelectedColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v23

    .line 250
    .local v23, "titleSelectedColor":I
    const-string/jumbo v24, "image"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 251
    .local v13, "imageSrc":Ljava/lang/String;
    const-string/jumbo v24, "selectedImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 252
    .local v18, "selectedImageSrc":Ljava/lang/String;
    const-string/jumbo v24, "badge"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    .line 254
    .local v4, "badgeCount":I
    const/16 v10, 0x44

    .line 255
    .local v10, "iconSize":I
    const-string/jumbo v24, "iconSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 256
    const-string/jumbo v24, "iconSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v10

    .line 258
    :cond_0
    const/16 v9, 0x18

    .line 259
    .local v9, "fontSize":I
    const-string/jumbo v24, "fontSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 260
    const-string/jumbo v24, "fontSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    .line 262
    :cond_1
    const-string/jumbo v24, "itemId"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 264
    .local v16, "itemId":Ljava/lang/String;
    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->mItemId:Ljava/lang/String;

    .line 265
    move/from16 v0, v22

    iput v0, v15, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->mTitleColor:I

    .line 266
    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->mTitleSelectedColor:I

    .line 267
    iput-object v13, v15, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->mIcon:Ljava/lang/String;

    .line 268
    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->mSelectedIcon:Ljava/lang/String;

    .line 269
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 270
    .local v17, "layout":Landroid/widget/LinearLayout;
    const/16 v24, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 271
    const/16 v24, 0x11

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 272
    const/16 v24, 0x30

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 274
    new-instance v24, Landroid/view/ViewGroup$LayoutParams;

    const/16 v25, -0x1

    const/16 v26, -0x1

    invoke-direct/range {v24 .. v26}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    new-instance v7, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 277
    .local v7, "fl":Landroid/widget/RelativeLayout;
    const/16 v24, 0x11

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 278
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v8, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 280
    .local v8, "flLp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v11, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 281
    .local v11, "image":Landroid/widget/ImageView;
    sget v24, Lhdn$h;->tabbar_image:I

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 282
    int-to-float v0, v10

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(F)F

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 283
    .local v14, "imgSize":I
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v12, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 284
    .local v12, "imageLP":Landroid/widget/RelativeLayout$LayoutParams;
    iput v14, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 285
    const/16 v24, 0xe

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 286
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 288
    const/4 v3, 0x0

    .line 289
    .local v3, "badge":Landroid/widget/TextView;
    if-lez v4, :cond_2

    .line 290
    new-instance v3, Landroid/widget/TextView;

    .end local v3    # "badge":Landroid/widget/TextView;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 291
    .restart local v3    # "badge":Landroid/widget/TextView;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 292
    .local v5, "badgeLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0x1

    sget v25, Lhdn$h;->tabbar_image:I

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 293
    const/16 v24, 0x1

    const/high16 v25, -0x3f600000    # -5.0f

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    invoke-static/range {v24 .. v26}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 295
    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    const/16 v24, 0x1

    const/high16 v25, 0x41200000    # 10.0f

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 298
    const/16 v24, 0x11

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 299
    sget v24, Lhdn$g;->badge:I

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 300
    invoke-virtual {v7, v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    .end local v5    # "badgeLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 305
    .local v19, "text":Landroid/widget/TextView;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    const/16 v24, 0x0

    int-to-float v0, v9

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(F)F

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 307
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 308
    .local v20, "textLp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 309
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 310
    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->mText:Landroid/widget/TextView;

    .line 316
    iput-object v11, v15, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->mImage:Landroid/widget/ImageView;

    .line 317
    iput-object v3, v15, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->mBadge:Landroid/widget/TextView;

    .line 318
    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->mView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v3    # "badge":Landroid/widget/TextView;
    .end local v4    # "badgeCount":I
    .end local v7    # "fl":Landroid/widget/RelativeLayout;
    .end local v8    # "flLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "fontSize":I
    .end local v10    # "iconSize":I
    .end local v11    # "image":Landroid/widget/ImageView;
    .end local v12    # "imageLP":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v13    # "imageSrc":Ljava/lang/String;
    .end local v14    # "imgSize":I
    .end local v16    # "itemId":Ljava/lang/String;
    .end local v17    # "layout":Landroid/widget/LinearLayout;
    .end local v18    # "selectedImageSrc":Ljava/lang/String;
    .end local v19    # "text":Landroid/widget/TextView;
    .end local v20    # "textLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v21    # "title":Ljava/lang/String;
    .end local v22    # "titleColor":I
    .end local v23    # "titleSelectedColor":I
    :goto_0
    return-object v15

    .line 319
    :catch_0
    move-exception v6

    .line 320
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private loadIcon(Z)V
    .locals 5
    .param p1, "isSelected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 236
    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    .line 237
    .local v0, "imgLoaderAdapter":Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;
    if-eqz v0, :cond_0

    .line 238
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->mSelectedIcon:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->mImage:Landroid/widget/ImageView;

    sget-object v3, Lcom/taobao/weex/dom/WXImageQuality;->ORIGINAL:Lcom/taobao/weex/dom/WXImageQuality;

    new-instance v4, Lcom/taobao/weex/common/WXImageStrategy;

    invoke-direct {v4}, Lcom/taobao/weex/common/WXImageStrategy;-><init>()V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V

    .line 240
    :cond_0
    return-void

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->mIcon:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->mItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setSelectedState(Z)V
    .locals 2
    .param p1, "isSelected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 227
    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->mText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->mTitleSelectedColor:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    invoke-direct {p0, p1}, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->loadIcon(Z)V

    .line 229
    return-void

    .line 227
    :cond_0
    iget v0, p0, Lcom/alibaba/aliweex/adapter/component/WXTabbar$TabItem;->mTitleColor:I

    goto :goto_0
.end method
