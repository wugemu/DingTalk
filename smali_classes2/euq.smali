.class public final Leuq;
.super Leul;
.source "TeleConfFunctionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leuq$a;,
        Leuq$b;,
        Leuq$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leul",
        "<",
        "Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Lexi$b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lexi$b;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "listener"    # Lexi$b;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Leul;-><init>(Landroid/app/Activity;)V

    .line 49
    iput-object p2, p0, Leuq;->c:Lexi$b;

    .line 50
    return-void
.end method

.method private a(Landroid/widget/TextView;Z)V
    .locals 8
    .param p1, "destView"    # Landroid/widget/TextView;
    .param p2, "lightShow"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 578
    if-nez p1, :cond_0

    .line 598
    :goto_0
    return-void

    .line 583
    :cond_0
    if-eqz p2, :cond_1

    .line 584
    sget v0, Leuj$f;->pure_white:I

    .line 585
    .local v0, "colorResId":I
    const/high16 v5, 0x41700000    # 15.0f

    .line 586
    .local v5, "txtSize":F
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v6, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    .local v3, "paddingRight":I
    move v2, v3

    .line 587
    .local v2, "paddingLeft":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .local v1, "paddingBottom":I
    move v4, v1

    .line 588
    .local v4, "paddingTop":I
    sget v6, Leuj$h;->conf_corner_circle_red_shape:I

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 595
    :goto_1
    const/4 v6, 0x1

    invoke-virtual {p1, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 596
    invoke-virtual {p0}, Leuq;->b()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 597
    invoke-virtual {p1, v2, v4, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 590
    .end local v0    # "colorResId":I
    .end local v1    # "paddingBottom":I
    .end local v2    # "paddingLeft":I
    .end local v3    # "paddingRight":I
    .end local v4    # "paddingTop":I
    .end local v5    # "txtSize":F
    :cond_1
    sget v0, Leuj$f;->uidic_global_color_6_2:I

    .line 591
    .restart local v0    # "colorResId":I
    const/high16 v5, 0x41880000    # 17.0f

    .line 592
    .restart local v5    # "txtSize":F
    const/4 v4, 0x0

    .restart local v4    # "paddingTop":I
    move v3, v4

    .restart local v3    # "paddingRight":I
    move v1, v4

    .restart local v1    # "paddingBottom":I
    move v2, v4

    .line 593
    .restart local v2    # "paddingLeft":I
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;)V
    .locals 6
    .param p1, "detailModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;
    .param p2, "parentView"    # Landroid/view/View;
    .param p3, "title"    # Landroid/widget/TextView;
    .param p4, "value"    # Landroid/widget/TextView;
    .param p5, "unit"    # Landroid/widget/TextView;
    .param p6, "remarksView"    # Landroid/view/View;
    .param p7, "remarksValue"    # Landroid/widget/TextView;
    .param p8, "remarksSuffix"    # Landroid/widget/TextView;
    .param p9, "remarksSuffixIcon"    # Landroid/widget/ImageView;
    .param p10, "parentJumpModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 407
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->title:Ljava/lang/String;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->content:Ljava/lang/String;

    invoke-virtual {p4, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->label:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 350
    const/4 v4, 0x0

    invoke-virtual {p5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->label:Ljava/lang/String;

    invoke-virtual {p5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    :goto_1
    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->remarks:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;

    if-eqz v4, :cond_6

    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->remarks:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;->content:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 357
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->remarks:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;

    .line 359
    .local v1, "remarks":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;
    const/4 v4, 0x0

    invoke-virtual {p6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 360
    iget-object v4, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;->content:Ljava/lang/String;

    invoke-virtual {p7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v4, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;->contentColor:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 362
    iget-object v4, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;->contentColor:Ljava/lang/String;

    invoke-static {v4}, Leyq;->a(Ljava/lang/String;)I

    move-result v3

    .line 363
    .local v3, "txtColor":I
    invoke-virtual {p7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 366
    .end local v3    # "txtColor":I
    :cond_1
    iget-object v4, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;->suffixContent:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageSuffixModel;

    if-eqz v4, :cond_2

    .line 367
    iget-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;->suffixContent:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageSuffixModel;

    .line 368
    .local v2, "suffix":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageSuffixModel;
    iget-object v4, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageSuffixModel;->iconMediaId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 369
    const/4 v4, 0x0

    invoke-virtual {p9, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 370
    invoke-static {}, Levx;->a()Levx;

    move-result-object v4

    iget-object v5, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageSuffixModel;->iconMediaId:Ljava/lang/String;

    invoke-virtual {v4, p9, v5}, Levx;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 374
    :goto_2
    iget-object v4, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageSuffixModel;->content:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 375
    const/4 v4, 0x0

    invoke-virtual {p8, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    iget-object v4, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageSuffixModel;->content:Ljava/lang/String;

    invoke-virtual {p8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v4, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageSuffixModel;->contentColor:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 378
    iget-object v4, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageSuffixModel;->contentColor:Ljava/lang/String;

    invoke-static {v4}, Leyq;->a(Ljava/lang/String;)I

    move-result v3

    .line 379
    .restart local v3    # "txtColor":I
    invoke-virtual {p8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 388
    .end local v1    # "remarks":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;
    .end local v2    # "suffix":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageSuffixModel;
    .end local v3    # "txtColor":I
    :cond_2
    :goto_3
    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->jumpModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->jumpModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;->jumpUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 389
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->jumpModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    .line 390
    .local v0, "jumpModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;
    new-instance v4, Leuq$4;

    invoke-direct {v4, p0, v0}, Leuq$4;-><init>(Leuq;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 353
    .end local v0    # "jumpModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;
    :cond_3
    const/16 v4, 0x8

    invoke-virtual {p5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 372
    .restart local v1    # "remarks":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;
    .restart local v2    # "suffix":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageSuffixModel;
    :cond_4
    const/16 v4, 0x8

    invoke-virtual {p9, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 382
    :cond_5
    const/16 v4, 0x8

    invoke-virtual {p8, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 386
    .end local v1    # "remarks":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;
    .end local v2    # "suffix":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageSuffixModel;
    :cond_6
    const/16 v4, 0x8

    invoke-virtual {p6, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 396
    :cond_7
    if-eqz p10, :cond_8

    .line 397
    move-object/from16 v0, p10

    .line 398
    .restart local v0    # "jumpModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;
    new-instance v4, Leuq$5;

    invoke-direct {v4, p0, v0}, Leuq$5;-><init>(Leuq;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 405
    .end local v0    # "jumpModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;
    :cond_8
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private a(Leuq$c;Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;)V
    .locals 13
    .param p1, "card"    # Leuq$c;
    .param p2, "data"    # Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 167
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    if-nez v0, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p2, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 171
    iget-object v0, p1, Leuq$c;->A:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p1, Leuq$c;->B:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object v0, p1, Leuq$c;->B:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p2, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->changeOrgSwitch:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    iget-object v0, p2, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->changeOrgSwitch:Ljava/lang/Boolean;

    .line 176
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p2, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->changeOrgText:Ljava/lang/String;

    .line 177
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 178
    iget-object v0, p1, Leuq$c;->C:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p1, Leuq$c;->D:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 180
    iget-object v0, p1, Leuq$c;->C:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->changeOrgText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p1, Leuq$c;->C:Landroid/widget/TextView;

    new-instance v1, Leuq$1;

    invoke-direct {v1, p0, p2}, Leuq$1;-><init>(Leuq;Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    :goto_1
    iget-object v0, p2, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->topModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;

    .line 199
    .local v2, "topModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;
    if-eqz v2, :cond_11

    .line 200
    iget-object v0, p1, Leuq$c;->E:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v0, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->icon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 202
    iget-object v0, p1, Leuq$c;->F:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    invoke-static {}, Levx;->a()Levx;

    move-result-object v0

    iget-object v1, p1, Leuq$c;->F:Landroid/widget/ImageView;

    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Levx;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 208
    :goto_2
    iget-object v0, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 209
    iget-object v0, p1, Leuq$c;->G:Landroid/widget/TextView;

    iget-object v1, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :cond_2
    iget-object v0, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 212
    iget-object v0, p1, Leuq$c;->H:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p1, Leuq$c;->H:Landroid/widget/TextView;

    iget-object v1, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :goto_3
    iget-object v4, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->btnModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;

    .line 219
    .local v4, "btnModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;
    if-eqz v4, :cond_10

    iget-object v0, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;->btnTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 220
    iget-object v0, p1, Leuq$c;->I:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v0, p1, Leuq$c;->J:Landroid/widget/TextView;

    iget-object v1, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;->btnTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-static {v2}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 224
    iget-object v0, p1, Leuq$c;->K:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    :goto_4
    iget-object v0, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;->jumpModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    if-eqz v0, :cond_d

    iget-object v0, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;->jumpModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;->jumpUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v5, 0x1

    .line 229
    .local v5, "jumpValid":Z
    :goto_5
    iget-object v0, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;->alertModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;

    if-eqz v0, :cond_e

    iget-object v0, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;->alertModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;->alertContent:Ljava/lang/String;

    .line 230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;->alertModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;->alertTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_3
    const/4 v6, 0x1

    .line 231
    .local v6, "alertValid":Z
    :goto_6
    if-nez v5, :cond_4

    if-eqz v6, :cond_f

    .line 232
    :cond_4
    iget-object v0, p1, Leuq$c;->I:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 233
    iget-object v0, p1, Leuq$c;->I:Landroid/view/View;

    sget v1, Leuj$h;->conf_btn_blue_stroke_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 234
    iget-object v0, p1, Leuq$c;->J:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 235
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Leuj$f;->txt_color_blue_bg_selector:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 237
    .local v9, "colorList":Landroid/content/res/ColorStateList;
    iget-object v0, p1, Leuq$c;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 238
    iget-object v12, p1, Leuq$c;->I:Landroid/view/View;

    new-instance v0, Leuq$2;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Leuq$2;-><init>(Leuq;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;Leuq$c;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;ZZ)V

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    .end local v4    # "btnModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;
    .end local v5    # "jumpValid":Z
    .end local v6    # "alertValid":Z
    .end local v9    # "colorList":Landroid/content/res/ColorStateList;
    :goto_7
    iget-object v0, p2, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    iget-object v7, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->bottomModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;

    .line 270
    .local v7, "bottomModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;
    if-eqz v7, :cond_16

    iget-object v0, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 271
    iget-object v0, p1, Leuq$c;->L:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v0, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 273
    iget-object v0, p1, Leuq$c;->M:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :cond_5
    iget-object v0, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 276
    iget-object v0, p1, Leuq$c;->N:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    iget-object v0, p1, Leuq$c;->N:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :goto_8
    invoke-static {v7}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 283
    const/4 v11, 0x0

    .line 284
    .local v11, "lightShow":Z
    const/4 v10, 0x0

    .line 285
    .local v10, "lightContent":Ljava/lang/String;
    iget-object v0, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;->reddotContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;->content:Ljava/lang/String;

    .line 286
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 287
    :cond_6
    const/4 v11, 0x1

    .line 288
    iget-object v0, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    iget-object v10, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;->reddotContent:Ljava/lang/String;

    .line 289
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 290
    iget-object v10, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;->content:Ljava/lang/String;

    .line 293
    :cond_7
    if-eqz v11, :cond_13

    .line 294
    iget-object v0, p1, Leuq$c;->N:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v0, p1, Leuq$c;->N:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Leuq;->a(Landroid/widget/TextView;Z)V

    .line 296
    iget-object v0, p1, Leuq$c;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    .end local v10    # "lightContent":Ljava/lang/String;
    .end local v11    # "lightShow":Z
    :goto_9
    iget-object v0, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;->jumpModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    if-eqz v0, :cond_15

    iget-object v0, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;->jumpModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;->jumpUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 305
    iget-object v0, p1, Leuq$c;->L:Landroid/view/View;

    sget v1, Leuj$h;->list_selector_conf_record:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 306
    iget-object v0, p1, Leuq$c;->L:Landroid/view/View;

    new-instance v1, Leuq$3;

    invoke-direct {v1, p0, v7, p1}, Leuq$3;-><init>(Leuq;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;Leuq$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 188
    .end local v2    # "topModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;
    .end local v7    # "bottomModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;
    :cond_8
    iget-object v0, p1, Leuq$c;->C:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p1, Leuq$c;->C:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v0, p1, Leuq$c;->D:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 193
    :cond_9
    iget-object v0, p1, Leuq$c;->A:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p1, Leuq$c;->B:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object v0, p1, Leuq$c;->C:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v0, p1, Leuq$c;->D:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 205
    .restart local v2    # "topModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;
    :cond_a
    iget-object v0, p1, Leuq$c;->F:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 215
    :cond_b
    iget-object v0, p1, Leuq$c;->H:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 226
    .restart local v4    # "btnModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;
    :cond_c
    iget-object v0, p1, Leuq$c;->K:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 228
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 230
    .restart local v5    # "jumpValid":Z
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 254
    .restart local v6    # "alertValid":Z
    :cond_f
    iget-object v0, p1, Leuq$c;->I:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p1, Leuq$c;->I:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 256
    iget-object v0, p1, Leuq$c;->I:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    iget-object v0, p1, Leuq$c;->J:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 258
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Leuj$f;->uidic_global_color_c11_9:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 260
    .local v8, "color":I
    iget-object v0, p1, Leuq$c;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 264
    .end local v5    # "jumpValid":Z
    .end local v6    # "alertValid":Z
    .end local v8    # "color":I
    :cond_10
    iget-object v0, p1, Leuq$c;->I:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 267
    .end local v4    # "btnModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;
    :cond_11
    iget-object v0, p1, Leuq$c;->E:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 279
    .restart local v7    # "bottomModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;
    :cond_12
    iget-object v0, p1, Leuq$c;->N:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    .line 298
    .restart local v10    # "lightContent":Ljava/lang/String;
    .restart local v11    # "lightShow":Z
    :cond_13
    iget-object v0, p1, Leuq$c;->N:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 301
    .end local v10    # "lightContent":Ljava/lang/String;
    .end local v11    # "lightShow":Z
    :cond_14
    iget-object v0, p1, Leuq$c;->N:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Leuq;->a(Landroid/widget/TextView;Z)V

    goto/16 :goto_9

    .line 327
    :cond_15
    iget-object v0, p1, Leuq$c;->L:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v0, p1, Leuq$c;->L:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 331
    :cond_16
    iget-object v0, p1, Leuq$c;->L:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Leuq;JLcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;)V
    .locals 3
    .param p0, "x0"    # Leuq;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;

    .prologue
    .line 43
    .line 4561
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    if-nez p3, :cond_1

    .line 4562
    :cond_0
    :goto_0
    return-void

    .line 4564
    :cond_1
    iget-object v0, p0, Leuq;->c:Lexi$b;

    if-eqz v0, :cond_0

    .line 4565
    iget-object v0, p0, Leuq;->c:Lexi$b;

    invoke-virtual {p3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;->valueOf()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lexi$b;->a(JI)V

    goto :goto_0
.end method

.method static synthetic a(Leuq;Landroid/widget/TextView;Z)V
    .locals 1
    .param p0, "x0"    # Leuq;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Z

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Leuq;->a(Landroid/widget/TextView;Z)V

    return-void
.end method

.method static synthetic a(Leuq;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;)V
    .locals 4
    .param p0, "x0"    # Leuq;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;

    .prologue
    const/4 v3, 0x0

    .line 43
    .line 5516
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;->alertContent:Ljava/lang/String;

    .line 5517
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;->alertTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;->actionTitle:Ljava/lang/String;

    .line 5518
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;->cancelTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5519
    :cond_1
    :goto_0
    return-void

    .line 5521
    :cond_2
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Leuq;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5522
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;->alertContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;->alertTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 5524
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;->alertTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5525
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;->alertContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5533
    :cond_3
    :goto_1
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;->cancelTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5534
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;->cancelTitle:Ljava/lang/String;

    new-instance v2, Leuq$8;

    invoke-direct {v2, p0, v0}, Leuq$8;-><init>(Leuq;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5541
    :cond_4
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;->actionTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;->jumpModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;->jumpModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;->jumpUrl:Ljava/lang/String;

    .line 5543
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 5544
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;->actionTitle:Ljava/lang/String;

    new-instance v2, Leuq$9;

    invoke-direct {v2, p0, v0, p1}, Leuq$9;-><init>(Leuq;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5552
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 5554
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;->tag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5555
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;->tag:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 5526
    :cond_6
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;->alertContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 5528
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;->alertContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_1

    .line 5529
    :cond_7
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;->alertTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5531
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageAlertModel;->alertTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_1
.end method


# virtual methods
.method public final getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 54
    const/4 v0, -0x1

    .line 55
    .local v0, "type":I
    iget-object v1, p0, Leuq;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Leuq;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;->ordinal()I

    move-result v0

    .line 58
    :cond_0
    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 68
    const/16 v16, 0x0

    .line 69
    .local v16, "infoHolder":Leuq$b;
    const/4 v13, 0x0

    .line 71
    .local v13, "adHolder":Leuq$a;
    invoke-virtual/range {p0 .. p1}, Leuq;->getItemViewType(I)I

    move-result v14

    .line 72
    .local v14, "cardType":I
    if-nez p2, :cond_3

    .line 73
    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;->ItemAdCard:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;->ordinal()I

    move-result v2

    if-ne v14, v2, :cond_2

    .line 74
    move-object/from16 v0, p0

    iget-object v2, v0, Leuq;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1574
    sget v3, Leuj$j;->layout_conf_management_ad_item:I

    .line 74
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 75
    new-instance v13, Leuq$a;

    .end local v13    # "adHolder":Leuq$a;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2}, Leuq$a;-><init>(Leuq;B)V

    .line 77
    .restart local v13    # "adHolder":Leuq$a;
    sget v2, Leuj$i;->function_header:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v13, Leuq$a;->A:Landroid/view/View;

    .line 78
    sget v2, Leuj$i;->function_org_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Leuq$a;->B:Landroid/widget/TextView;

    .line 79
    sget v2, Leuj$i;->function_org_switch:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Leuq$a;->C:Landroid/widget/TextView;

    .line 80
    sget v2, Leuj$i;->function_org_switch_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, v13, Leuq$a;->D:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 82
    sget v2, Leuj$i;->function_title:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v13, Leuq$a;->E:Landroid/view/View;

    .line 83
    sget v2, Leuj$i;->function_title_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v13, Leuq$a;->F:Landroid/widget/ImageView;

    .line 84
    sget v2, Leuj$i;->function_title_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Leuq$a;->G:Landroid/widget/TextView;

    .line 85
    sget v2, Leuj$i;->function_title_number:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Leuq$a;->H:Landroid/widget/TextView;

    .line 86
    sget v2, Leuj$i;->function_title_action:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v13, Leuq$a;->I:Landroid/view/View;

    .line 87
    sget v2, Leuj$i;->function_title_action_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Leuq$a;->J:Landroid/widget/TextView;

    .line 88
    sget v2, Leuj$i;->function_title_action_red:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v13, Leuq$a;->K:Landroid/widget/ImageView;

    .line 89
    sget v2, Leuj$i;->activity_layout:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v13, Leuq$a;->L:Landroid/view/View;

    .line 90
    sget v2, Leuj$i;->activity_intro:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Leuq$a;->M:Landroid/widget/TextView;

    .line 91
    sget v2, Leuj$i;->activity_action:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Leuq$a;->N:Landroid/widget/TextView;

    .line 93
    sget v2, Leuj$i;->function_ad_layout:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v13, Leuq$a;->a:Landroid/view/View;

    .line 94
    sget v2, Leuj$i;->function_ad_content:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    iput-object v2, v13, Leuq$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    .line 96
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 155
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Leuq;->a:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;

    .line 156
    .local v15, "dataInfoObj":Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;
    if-eqz v15, :cond_1

    .line 157
    if-eqz v13, :cond_8

    .line 3490
    if-eqz v13, :cond_1

    if-eqz v15, :cond_1

    iget-object v2, v15, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    if-nez v2, :cond_5

    .line 164
    :cond_1
    :goto_1
    return-object p2

    .line 97
    .end local v15    # "dataInfoObj":Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;
    :cond_2
    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;->ItemInfoCard:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;->ordinal()I

    move-result v2

    if-ne v14, v2, :cond_0

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Leuq;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2570
    sget v3, Leuj$j;->layout_conf_management_info_item:I

    .line 98
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 99
    new-instance v16, Leuq$b;

    .end local v16    # "infoHolder":Leuq$b;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Leuq$b;-><init>(Leuq;B)V

    .line 101
    .restart local v16    # "infoHolder":Leuq$b;
    sget v2, Leuj$i;->function_header:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->A:Landroid/view/View;

    .line 102
    sget v2, Leuj$i;->function_org_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->B:Landroid/widget/TextView;

    .line 103
    sget v2, Leuj$i;->function_org_switch:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->C:Landroid/widget/TextView;

    .line 104
    sget v2, Leuj$i;->function_org_switch_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->D:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 106
    sget v2, Leuj$i;->function_title:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->E:Landroid/view/View;

    .line 107
    sget v2, Leuj$i;->function_title_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->F:Landroid/widget/ImageView;

    .line 108
    sget v2, Leuj$i;->function_title_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->G:Landroid/widget/TextView;

    .line 109
    sget v2, Leuj$i;->function_title_number:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->H:Landroid/widget/TextView;

    .line 110
    sget v2, Leuj$i;->function_title_action:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->I:Landroid/view/View;

    .line 111
    sget v2, Leuj$i;->function_title_action_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->J:Landroid/widget/TextView;

    .line 112
    sget v2, Leuj$i;->function_title_action_red:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->K:Landroid/widget/ImageView;

    .line 113
    sget v2, Leuj$i;->activity_layout:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->L:Landroid/view/View;

    .line 114
    sget v2, Leuj$i;->activity_intro:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->M:Landroid/widget/TextView;

    .line 115
    sget v2, Leuj$i;->activity_action:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->N:Landroid/widget/TextView;

    .line 117
    sget v2, Leuj$i;->function_info_layout:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->a:Landroid/view/View;

    .line 118
    sget v2, Leuj$i;->function_info_part_one:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->b:Landroid/view/View;

    .line 119
    sget v2, Leuj$i;->function_info_part_one_title:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->c:Landroid/widget/TextView;

    .line 120
    sget v2, Leuj$i;->function_info_part_one_value:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->d:Landroid/widget/TextView;

    .line 121
    sget v2, Leuj$i;->function_info_part_one_unit:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->e:Landroid/widget/TextView;

    .line 122
    sget v2, Leuj$i;->function_info_part_one_remarks_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->f:Landroid/view/View;

    .line 123
    sget v2, Leuj$i;->function_info_part_one_remarks:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->g:Landroid/widget/TextView;

    .line 124
    sget v2, Leuj$i;->function_info_part_one_remarks_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->h:Landroid/widget/ImageView;

    .line 125
    sget v2, Leuj$i;->function_info_part_one_remarks_suffix:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->i:Landroid/widget/TextView;

    .line 127
    sget v2, Leuj$i;->function_info_part_two:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->j:Landroid/view/View;

    .line 128
    sget v2, Leuj$i;->function_info_part_two_title:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->k:Landroid/widget/TextView;

    .line 129
    sget v2, Leuj$i;->function_info_part_two_value:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->l:Landroid/widget/TextView;

    .line 130
    sget v2, Leuj$i;->function_info_part_two_unit:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->m:Landroid/widget/TextView;

    .line 131
    sget v2, Leuj$i;->function_info_part_two_remarks_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->n:Landroid/view/View;

    .line 132
    sget v2, Leuj$i;->function_info_part_two_remarks:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->o:Landroid/widget/TextView;

    .line 133
    sget v2, Leuj$i;->function_info_part_two_remarks_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->p:Landroid/widget/ImageView;

    .line 134
    sget v2, Leuj$i;->function_info_part_two_remarks_suffix:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->q:Landroid/widget/TextView;

    .line 136
    sget v2, Leuj$i;->function_info_part_three:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->r:Landroid/view/View;

    .line 137
    sget v2, Leuj$i;->function_info_part_three_title:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->s:Landroid/widget/TextView;

    .line 138
    sget v2, Leuj$i;->function_info_part_three_value:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->t:Landroid/widget/TextView;

    .line 139
    sget v2, Leuj$i;->function_info_part_three_unit:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->u:Landroid/widget/TextView;

    .line 140
    sget v2, Leuj$i;->function_info_part_three_remarks_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->v:Landroid/view/View;

    .line 141
    sget v2, Leuj$i;->function_info_part_three_remarks:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->w:Landroid/widget/TextView;

    .line 142
    sget v2, Leuj$i;->function_info_part_three_remarks_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->x:Landroid/widget/ImageView;

    .line 143
    sget v2, Leuj$i;->function_info_part_three_remarks_suffix:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Leuq$b;->y:Landroid/widget/TextView;

    .line 145
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 148
    :cond_3
    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;->ItemAdCard:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;->ordinal()I

    move-result v2

    if-ne v14, v2, :cond_4

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "adHolder":Leuq$a;
    check-cast v13, Leuq$a;

    .restart local v13    # "adHolder":Leuq$a;
    goto/16 :goto_0

    .line 150
    :cond_4
    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;->ItemInfoCard:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;->ordinal()I

    move-result v2

    if-ne v14, v2, :cond_0

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "infoHolder":Leuq$b;
    check-cast v16, Leuq$b;

    .restart local v16    # "infoHolder":Leuq$b;
    goto/16 :goto_0

    .line 3493
    .restart local v15    # "dataInfoObj":Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Leuq;->a(Leuq$c;Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;)V

    .line 3495
    iget-object v2, v15, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->middleModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;

    .line 3496
    if-eqz v2, :cond_7

    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->mediaId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3497
    iget-object v3, v13, Leuq$a;->a:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3499
    invoke-static {}, Levx;->a()Levx;

    move-result-object v3

    iget-object v4, v13, Leuq$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    iget-object v5, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->mediaId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Levx;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 3500
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->jumpModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    if-eqz v3, :cond_6

    .line 3501
    iget-object v3, v13, Leuq$a;->a:Landroid/view/View;

    new-instance v4, Leuq$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Leuq$7;-><init>(Leuq;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 3508
    :cond_6
    iget-object v2, v13, Leuq$a;->a:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 3511
    :cond_7
    iget-object v2, v13, Leuq$a;->a:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 159
    :cond_8
    if-eqz v16, :cond_1

    .line 4410
    if-eqz v16, :cond_1

    if-eqz v15, :cond_1

    iget-object v2, v15, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    if-eqz v2, :cond_1

    .line 4413
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Leuq;->a(Leuq$c;Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;)V

    .line 4415
    iget-object v2, v15, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    iget-object v0, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->middleModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;

    move-object/from16 v18, v0

    .line 4416
    if-eqz v18, :cond_f

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->details:Ljava/util/List;

    if-eqz v2, :cond_f

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->details:Ljava/util/List;

    .line 4418
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 4419
    move-object/from16 v0, v16

    iget-object v2, v0, Leuq$b;->a:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4420
    const/4 v2, 0x0

    .line 4421
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->jumpModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    if-eqz v3, :cond_b

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->jumpModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;->jumpUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 4422
    move-object/from16 v0, v16

    iget-object v2, v0, Leuq$b;->a:Landroid/view/View;

    new-instance v3, Leuq$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Leuq$6;-><init>(Leuq;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4428
    const/4 v2, 0x1

    move/from16 v17, v2

    .line 4433
    :goto_2
    move-object/from16 v0, v16

    iget-object v2, v0, Leuq$b;->b:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4434
    move-object/from16 v0, v16

    iget-object v2, v0, Leuq$b;->j:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4435
    move-object/from16 v0, v16

    iget-object v2, v0, Leuq$b;->r:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4436
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->details:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;

    .line 4437
    if-eqz v3, :cond_9

    .line 4438
    move-object/from16 v0, v16

    iget-object v4, v0, Leuq$b;->b:Landroid/view/View;

    move-object/from16 v0, v16

    iget-object v5, v0, Leuq$b;->c:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-object v6, v0, Leuq$b;->d:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-object v7, v0, Leuq$b;->e:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-object v8, v0, Leuq$b;->f:Landroid/view/View;

    move-object/from16 v0, v16

    iget-object v9, v0, Leuq$b;->g:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-object v10, v0, Leuq$b;->i:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-object v11, v0, Leuq$b;->h:Landroid/widget/ImageView;

    if-eqz v17, :cond_c

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->jumpModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    :goto_3
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Leuq;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;)V

    .line 4449
    :cond_9
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->details:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v19

    .line 4450
    const/4 v2, 0x2

    move/from16 v0, v19

    if-lt v0, v2, :cond_1

    .line 4452
    move-object/from16 v0, v16

    iget-object v2, v0, Leuq$b;->j:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4453
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->details:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;

    .line 4454
    if-eqz v3, :cond_a

    .line 4455
    move-object/from16 v0, v16

    iget-object v4, v0, Leuq$b;->j:Landroid/view/View;

    move-object/from16 v0, v16

    iget-object v5, v0, Leuq$b;->k:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-object v6, v0, Leuq$b;->l:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-object v7, v0, Leuq$b;->m:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-object v8, v0, Leuq$b;->n:Landroid/view/View;

    move-object/from16 v0, v16

    iget-object v9, v0, Leuq$b;->o:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-object v10, v0, Leuq$b;->q:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-object v11, v0, Leuq$b;->p:Landroid/widget/ImageView;

    if-eqz v17, :cond_d

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->jumpModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    :goto_4
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Leuq;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;)V

    .line 4466
    :cond_a
    const/4 v2, 0x3

    move/from16 v0, v19

    if-lt v0, v2, :cond_1

    .line 4467
    move-object/from16 v0, v16

    iget-object v2, v0, Leuq$b;->r:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4468
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->details:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;

    .line 4469
    if-eqz v3, :cond_1

    .line 4470
    move-object/from16 v0, v16

    iget-object v4, v0, Leuq$b;->r:Landroid/view/View;

    move-object/from16 v0, v16

    iget-object v5, v0, Leuq$b;->s:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-object v6, v0, Leuq$b;->t:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-object v7, v0, Leuq$b;->u:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-object v8, v0, Leuq$b;->v:Landroid/view/View;

    move-object/from16 v0, v16

    iget-object v9, v0, Leuq$b;->w:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-object v10, v0, Leuq$b;->y:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-object v11, v0, Leuq$b;->x:Landroid/widget/ImageView;

    if-eqz v17, :cond_e

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->jumpModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    :goto_5
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Leuq;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;)V

    goto/16 :goto_1

    .line 4430
    :cond_b
    move-object/from16 v0, v16

    iget-object v3, v0, Leuq$b;->a:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move/from16 v17, v2

    goto/16 :goto_2

    .line 4438
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 4455
    :cond_d
    const/4 v12, 0x0

    goto :goto_4

    .line 4470
    :cond_e
    const/4 v12, 0x0

    goto :goto_5

    .line 4485
    :cond_f
    move-object/from16 v0, v16

    iget-object v2, v0, Leuq$b;->a:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;->values()[Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
