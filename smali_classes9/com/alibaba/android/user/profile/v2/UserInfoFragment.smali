.class public Lcom/alibaba/android/user/profile/v2/UserInfoFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "UserInfoFragment.java"

# interfaces
.implements Lfvk;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lcom/alibaba/doraemon/image/ImageMagician;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Handler;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 77
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment$1;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->f:Landroid/os/Handler;

    .line 222
    iput v2, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->g:I

    .line 223
    iput v2, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->h:I

    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;Ljava/util/List;)V
    .locals 11
    .param p1, "labelLayout"    # Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "labels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;>;"
    const/16 v10, 0x10

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 685
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->removeAllViews()V

    .line 686
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 687
    :cond_0
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 688
    .local v5, "textView":Landroid/widget/TextView;
    const/high16 v6, 0x41880000    # 17.0f

    invoke-virtual {v5, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 689
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lezg$e;->uidic_global_color_6_1:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 690
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Lezg$l;->dt_user_none:I

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 692
    invoke-virtual {p1, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->addView(Landroid/view/View;)V

    .line 717
    .end local v5    # "textView":Landroid/widget/TextView;
    :cond_1
    return-void

    .line 694
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 695
    .local v0, "dataCount":I
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v6, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 696
    .local v4, "padding":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 697
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    .line 698
    .local v3, "labelObject":Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
    if-eqz v3, :cond_3

    .line 702
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;-><init>(Landroid/content/Context;)V

    .line 703
    .local v2, "label":Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;
    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v2, v9, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setTextSize(IF)V

    .line 704
    invoke-virtual {v2, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setLines(I)V

    .line 705
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 706
    invoke-virtual {v2, v4, v8, v4, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setPadding(IIII)V

    .line 707
    invoke-virtual {v2, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setGravity(I)V

    .line 708
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {v6, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setMaxWidth(I)V

    .line 710
    invoke-virtual {v2, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setVisibility(I)V

    .line 711
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    iget v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->color:I

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setTextColor(I)V

    .line 714
    invoke-virtual {p1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->addView(Landroid/view/View;)V

    .line 696
    .end local v2    # "label":Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/UserInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserInfoFragment;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->i()V

    return-void
.end method

.method private h()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 231
    return-void
.end method

.method private i()V
    .locals 58

    .prologue
    .line 234
    invoke-static/range {p0 .. p0}, Lcms;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v48

    if-nez v48, :cond_1

    .line 625
    :cond_0
    return-void

    .line 242
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->c:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    sget v49, Lezg$h;->user_info_tip_tv:I

    invoke-virtual/range {v48 .. v49}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 243
    .local v18, "headerTipTv":Landroid/widget/TextView;
    const/16 v48, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->a:Ljava/util/List;

    move-object/from16 v48, v0

    if-eqz v48, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->a:Ljava/util/List;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Ljava/util/List;->isEmpty()Z

    move-result v48

    if-nez v48, :cond_0

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->a:Ljava/util/List;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Ljava/util/List;->size()I

    move-result v30

    .line 251
    .local v30, "size":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v30

    if-ge v0, v1, :cond_0

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->a:Ljava/util/List;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    .line 254
    .local v36, "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    if-eqz v36, :cond_2

    .line 258
    sget-object v48, Lcom/alibaba/android/user/profile/v2/UserInfoFragment$5;->a:[I

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mType:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->ordinal()I

    move-result v49

    aget v48, v48, v49

    packed-switch v48, :pswitch_data_0

    .line 251
    :cond_2
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 263
    :pswitch_0
    add-int/lit8 v48, v30, -0x1

    move/from16 v0, v19

    move/from16 v1, v48

    if-ne v0, v1, :cond_5

    const/16 v48, 0x1

    .line 2647
    :goto_2
    new-instance v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-direct {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;-><init>(Landroid/content/Context;)V

    .line 2648
    sget v49, Lezg$g;->user_water_list_item_selector:I

    move/from16 v0, v49

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setBackgroundResource(I)V

    .line 2649
    const/16 v49, 0xd

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcid;->c()Landroid/app/Application;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    sget v51, Lezg$e;->uidic_global_color_6_2:I

    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getColor(I)I

    move-result v50

    move/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->a(II)V

    .line 2654
    const/16 v49, 0x11

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcid;->c()Landroid/app/Application;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    sget v51, Lezg$e;->uidic_global_color_6_1:I

    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getColor(I)I

    move-result v50

    move/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->b(II)V

    .line 2657
    if-eqz v48, :cond_6

    .line 2658
    const/16 v48, 0x8

    sget-object v49, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    move/from16 v0, v48

    move-object/from16 v1, v49

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 264
    .local v11, "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;
    :goto_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcid;->c()Landroid/app/Application;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    sget v49, Lezg$e;->border:I

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getColor(I)I

    move-result v48

    move/from16 v0, v48

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setDividerColor(I)V

    .line 265
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    if-eqz v48, :cond_7

    .line 266
    sget v48, Lezg$g;->right_arrow:I

    const/16 v49, 0x0

    const/16 v50, 0x0

    move/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v11, v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->a(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 267
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    :goto_4
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setTitle(Ljava/lang/String;)V

    .line 272
    sget-object v48, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserPersonalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mType:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-ne v0, v1, :cond_3

    .line 273
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setSubTitleSingleLine(Z)V

    .line 275
    :cond_3
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setSubTitle(Ljava/lang/String;)V

    .line 276
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDesc:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setContent(Ljava/lang/String;)V

    .line 278
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mViewObject:Lcry;

    move-object/from16 v48, v0

    if-eqz v48, :cond_4

    .line 279
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mViewObject:Lcry;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setIndicator(Lcry;)V

    .line 282
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 263
    .end local v11    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;
    :cond_5
    const/16 v48, 0x0

    goto/16 :goto_2

    .line 2660
    :cond_6
    const/16 v48, 0x0

    sget-object v49, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignContent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    move/from16 v0, v48

    move-object/from16 v1, v49

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    goto/16 :goto_3

    .line 269
    .restart local v11    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;
    :cond_7
    new-instance v48, Lfvi;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v49

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lfvi;-><init>(Landroid/content/Context;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    move-object/from16 v0, v48

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 286
    .end local v11    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;
    :pswitch_1
    add-int/lit8 v48, v30, -0x1

    move/from16 v0, v19

    move/from16 v1, v48

    if-ne v0, v1, :cond_f

    const/16 v48, 0x1

    .line 3628
    :goto_5
    new-instance v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-direct {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;-><init>(Landroid/content/Context;)V

    .line 3629
    sget v49, Lezg$g;->user_water_list_item_selector:I

    move/from16 v0, v49

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setBackgroundResource(I)V

    .line 3630
    const/16 v49, 0xd

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcid;->c()Landroid/app/Application;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    sget v51, Lezg$e;->uidic_global_color_6_2:I

    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getColor(I)I

    move-result v50

    move/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(II)V

    .line 3635
    const/16 v49, 0x11

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcid;->c()Landroid/app/Application;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    sget v51, Lezg$e;->uidic_global_color_6_1:I

    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getColor(I)I

    move-result v50

    move/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->b(II)V

    .line 3638
    if-eqz v48, :cond_10

    .line 3639
    const/16 v48, 0x8

    sget-object v49, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    move/from16 v0, v48

    move-object/from16 v1, v49

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 287
    .local v11, "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;
    :goto_6
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcid;->c()Landroid/app/Application;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    sget v49, Lezg$e;->border:I

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getColor(I)I

    move-result v48

    move/from16 v0, v48

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setDividerColor(I)V

    .line 288
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    if-eqz v48, :cond_11

    .line 289
    sget v48, Lezg$g;->right_arrow:I

    const/16 v49, 0x0

    const/16 v50, 0x0

    move/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v11, v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 290
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    :goto_7
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setTitle(Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setSubTitle(Ljava/lang/String;)V

    .line 297
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setSubTitleSingleLine(Z)V

    .line 299
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDescClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    if-eqz v48, :cond_8

    .line 300
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDescClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setSubTitleRightClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    :cond_8
    const/16 v48, 0x11

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    sget v50, Lezg$e;->contact_view_document:I

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getColor(I)I

    move-result v49

    move/from16 v0, v48

    move/from16 v1, v49

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->c(II)V

    .line 303
    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHrmEnable:Z

    move/from16 v48, v0

    if-eqz v48, :cond_12

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHrmTitle:Ljava/lang/String;

    move-object/from16 v48, v0

    :goto_8
    move-object/from16 v0, v48

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setSubTitleRight(Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mViewObject:Lcry;

    move-object/from16 v48, v0

    if-eqz v48, :cond_9

    .line 306
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mViewObject:Lcry;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setIndicator(Lcry;)V

    .line 309
    :cond_9
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mBadgeList:Ljava/util/List;

    move-object/from16 v48, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v49, v0

    if-nez v49, :cond_13

    const/16 v49, 0x0

    move/from16 v50, v49

    .line 3721
    :goto_9
    if-eqz v11, :cond_16

    if-eqz v48, :cond_16

    invoke-interface/range {v48 .. v48}, Ljava/util/List;->isEmpty()Z

    move-result v49

    if-nez v49, :cond_16

    .line 3722
    invoke-interface/range {v48 .. v48}, Ljava/util/List;->size()I

    move-result v49

    const/16 v51, 0x5

    move/from16 v0, v49

    move/from16 v1, v51

    if-le v0, v1, :cond_14

    const/16 v49, 0x0

    const/16 v51, 0x5

    move-object/from16 v0, v48

    move/from16 v1, v49

    move/from16 v2, v51

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v48

    move-object/from16 v49, v48

    .line 3723
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v48, v0

    if-nez v48, :cond_a

    .line 3724
    const-string/jumbo v48, "IMAGE"

    invoke-static/range {v48 .. v48}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 3726
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcms;->a(Landroid/content/Context;)I

    move-result v48

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v51

    const/high16 v52, 0x41a00000    # 20.0f

    const/high16 v53, 0x41500000    # 13.0f

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    mul-float v50, v50, v53

    add-float v50, v50, v52

    move-object/from16 v0, v51

    move/from16 v1, v50

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v50

    sub-int v48, v48, v50

    .line 3727
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v50

    const/high16 v51, 0x40400000    # 3.0f

    invoke-static/range {v50 .. v51}, Lcms;->c(Landroid/content/Context;F)I

    move-result v51

    .line 3728
    invoke-interface/range {v49 .. v49}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v52

    move/from16 v49, v48

    :cond_b
    :goto_b
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_16

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;

    .line 3729
    if-eqz v48, :cond_b

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;->expireDate:Ljava/lang/Long;

    move-object/from16 v50, v0

    if-eqz v50, :cond_c

    invoke-static {}, Lfwy;->a()J

    move-result-wide v54

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;->expireDate:Ljava/lang/Long;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Long;->longValue()J

    move-result-wide v56

    cmp-long v50, v54, v56

    if-gtz v50, :cond_b

    .line 3732
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v53

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;->title:Ljava/lang/String;

    move-object/from16 v50, v0

    if-nez v50, :cond_15

    const/16 v50, 0x0

    :goto_c
    add-int/lit8 v50, v50, 0x24

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    move-object/from16 v0, v53

    move/from16 v1, v50

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v50

    sub-int v50, v49, v50

    .line 3733
    if-ltz v50, :cond_16

    .line 3736
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v49

    sget v53, Lezg$j;->profile_name_info:I

    const/16 v54, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v53

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v53

    .line 3737
    new-instance v49, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v54, 0x8

    move/from16 v0, v54

    new-array v0, v0, [F

    move-object/from16 v54, v0

    const/16 v55, 0x0

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v56, v0

    aput v56, v54, v55

    const/16 v55, 0x1

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v56, v0

    aput v56, v54, v55

    const/16 v55, 0x2

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v56, v0

    aput v56, v54, v55

    const/16 v55, 0x3

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v56, v0

    aput v56, v54, v55

    const/16 v55, 0x4

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v56, v0

    aput v56, v54, v55

    const/16 v55, 0x5

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v56, v0

    aput v56, v54, v55

    const/16 v55, 0x6

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v56, v0

    aput v56, v54, v55

    const/16 v55, 0x7

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v56, v0

    aput v56, v54, v55

    const/16 v55, 0x0

    const/16 v56, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    move-object/from16 v3, v56

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 3739
    new-instance v54, Landroid/graphics/drawable/ShapeDrawable;

    move-object/from16 v0, v54

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 3740
    invoke-virtual/range {v54 .. v54}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v49

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;->bgColor:Ljava/lang/String;

    move-object/from16 v55, v0

    .line 4043
    const/16 v56, 0x0

    invoke-static/range {v55 .. v56}, Lcpz;->a(Ljava/lang/String;I)I

    move-result v55

    .line 3740
    move-object/from16 v0, v49

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3741
    sget v49, Lezg$h;->badge_title:I

    move-object/from16 v0, v53

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/TextView;

    .line 3742
    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcqc;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 3743
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;->title:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3744
    sget v49, Lezg$h;->badge_icon:I

    move-object/from16 v0, v53

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/ImageView;

    .line 3746
    :try_start_0
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;->badgeMediaId:Ljava/lang/String;

    move-object/from16 v54, v0

    invoke-static/range {v54 .. v54}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 3747
    invoke-static/range {v54 .. v54}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v55

    if-nez v55, :cond_d

    .line 3748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    move-object/from16 v0, v55

    move-object/from16 v1, v49

    move-object/from16 v2, v54

    move-object/from16 v3, v56

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3753
    :cond_d
    :goto_d
    const/16 v49, 0x0

    move-object/from16 v0, v53

    move-object/from16 v1, v49

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 3754
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;->url:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v49

    if-nez v49, :cond_e

    .line 3755
    new-instance v49, Lcom/alibaba/android/user/profile/v2/UserInfoFragment$4;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment$4;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoFragment;Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    move/from16 v49, v50

    .line 3762
    goto/16 :goto_b

    .line 286
    .end local v11    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;
    :cond_f
    const/16 v48, 0x0

    goto/16 :goto_5

    .line 3641
    :cond_10
    const/16 v48, 0x0

    sget-object v49, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignContent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    move/from16 v0, v48

    move-object/from16 v1, v49

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    goto/16 :goto_6

    .line 292
    .restart local v11    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;
    :cond_11
    new-instance v48, Lfvi;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v49

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lfvi;-><init>(Landroid/content/Context;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    move-object/from16 v0, v48

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 303
    :cond_12
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDesc:Ljava/lang/String;

    move-object/from16 v48, v0

    goto/16 :goto_8

    .line 309
    :cond_13
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->length()I

    move-result v49

    move/from16 v50, v49

    goto/16 :goto_9

    :cond_14
    move-object/from16 v49, v48

    .line 3722
    goto/16 :goto_a

    .line 3732
    :cond_15
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;->title:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->length()I

    move-result v50

    mul-int/lit8 v50, v50, 0xa

    goto/16 :goto_c

    .line 3750
    :catch_0
    move-exception v49

    .line 3751
    invoke-virtual/range {v49 .. v49}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto/16 :goto_d

    .line 310
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 314
    .end local v11    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v48

    sget v49, Lezg$j;->item_user_profile_follow_records:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-virtual/range {v48 .. v51}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 316
    .local v17, "followRecordView":Landroid/view/View;
    sget v48, Lezg$h;->tv_follow_tip:I

    move-object/from16 v0, v17

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v48

    check-cast v48, Landroid/widget/TextView;

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    sget v48, Lezg$h;->tv_follow_des:I

    move-object/from16 v0, v17

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v48

    check-cast v48, Landroid/widget/TextView;

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    if-eqz v48, :cond_17

    .line 320
    sget v48, Lezg$h;->if_next_arrow:I

    move-object/from16 v0, v17

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v48

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setVisibility(I)V

    .line 321
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 328
    .end local v17    # "followRecordView":Landroid/view/View;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v48

    sget v49, Lezg$j;->item_my_profile_avatar:I

    const/16 v50, 0x0

    invoke-virtual/range {v48 .. v50}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 329
    .local v21, "itemContainer":Landroid/view/View;
    sget v48, Lezg$h;->user_info_tip_tv:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 330
    .local v23, "myAvatarTipTv":Landroid/widget/TextView;
    sget v48, Lezg$h;->user_info_avatar:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 331
    .local v24, "myAvatarView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    sget v48, Lezg$h;->user_info_divider:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 332
    .local v25, "myPersonalDivider":Landroid/view/View;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    if-eqz v48, :cond_18

    .line 333
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    :cond_18
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mSecondListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    if-eqz v48, :cond_19

    .line 336
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mSecondListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    :cond_19
    add-int/lit8 v48, v30, -0x1

    move/from16 v0, v19

    move/from16 v1, v48

    if-ne v0, v1, :cond_1a

    .line 340
    const/16 v48, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    :goto_e
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mMediaId:Ljava/lang/String;

    move-object/from16 v49, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 342
    :cond_1a
    const/16 v48, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e

    .line 352
    .end local v21    # "itemContainer":Landroid/view/View;
    .end local v23    # "myAvatarTipTv":Landroid/widget/TextView;
    .end local v24    # "myAvatarView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .end local v25    # "myPersonalDivider":Landroid/view/View;
    :pswitch_4
    add-int/lit8 v48, v30, -0x1

    move/from16 v0, v19

    move/from16 v1, v48

    if-ne v0, v1, :cond_1e

    const/16 v48, 0x1

    .line 4666
    :goto_f
    new-instance v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-direct {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;-><init>(Landroid/content/Context;)V

    .line 4667
    sget v49, Lezg$g;->user_water_list_item_selector:I

    move/from16 v0, v49

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->setBackgroundResource(I)V

    .line 4668
    const/16 v49, 0xd

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcid;->c()Landroid/app/Application;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    sget v51, Lezg$e;->uidic_global_color_6_2:I

    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getColor(I)I

    move-result v50

    move/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->a(II)V

    .line 4673
    const/16 v49, 0x11

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcid;->c()Landroid/app/Application;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    sget v51, Lezg$e;->uidic_global_color_6_1:I

    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getColor(I)I

    move-result v50

    move/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->b(II)V

    .line 4676
    if-eqz v48, :cond_1f

    .line 4677
    const/16 v48, 0x8

    sget-object v49, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    move/from16 v0, v48

    move-object/from16 v1, v49

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 353
    .local v11, "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;
    :goto_10
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcid;->c()Landroid/app/Application;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    sget v49, Lezg$e;->border:I

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getColor(I)I

    move-result v48

    move/from16 v0, v48

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->setDividerColor(I)V

    .line 354
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->setTitle(Ljava/lang/String;)V

    .line 355
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->setSubTitle(Ljava/lang/String;)V

    .line 357
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    if-eqz v48, :cond_20

    .line 358
    sget v48, Lezg$g;->right_arrow:I

    const/16 v49, 0x0

    const/16 v50, 0x0

    move/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v11, v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->b(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 359
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    :goto_11
    move-object/from16 v0, v36

    iget v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mResId:I

    move/from16 v48, v0

    if-gtz v48, :cond_1b

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mMediaId:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v48

    if-nez v48, :cond_1d

    .line 365
    :cond_1b
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mMediaId:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 366
    .local v34, "url":Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_1c

    .line 368
    :try_start_1
    invoke-static/range {v34 .. v34}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v34

    .line 373
    :cond_1c
    :goto_12
    move-object/from16 v0, v36

    iget v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mResId:I

    move/from16 v48, v0

    const/16 v49, 0x0

    move/from16 v0, v48

    move-object/from16 v1, v34

    move-object/from16 v2, v49

    invoke-virtual {v11, v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->a(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 376
    .end local v34    # "url":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 352
    .end local v11    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;
    :cond_1e
    const/16 v48, 0x0

    goto/16 :goto_f

    .line 4679
    :cond_1f
    const/16 v48, 0x0

    sget-object v49, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignContent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    move/from16 v0, v48

    move-object/from16 v1, v49

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    goto/16 :goto_10

    .line 361
    .restart local v11    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;
    :cond_20
    new-instance v48, Lfvi;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v49

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lfvi;-><init>(Landroid/content/Context;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    move-object/from16 v0, v48

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_11

    .line 369
    .restart local v34    # "url":Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 370
    .local v15, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v15}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_12

    .line 380
    .end local v11    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;
    .end local v15    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .end local v34    # "url":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    move-object/from16 v48, v0

    if-eqz v48, :cond_2

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v48

    sget v49, Lezg$j;->item_user_profile_name_info:I

    const/16 v50, 0x0

    invoke-virtual/range {v48 .. v50}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 385
    .restart local v21    # "itemContainer":Landroid/view/View;
    sget v48, Lezg$h;->tv_user_info_work_status_desc:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    .line 386
    .local v37, "userInfoWorkStatusDescTv":Landroid/widget/TextView;
    sget v48, Lezg$h;->tv_user_info_work_status_title:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 387
    .local v39, "userInfoWorkStatusTitleTv":Landroid/widget/TextView;
    sget v48, Lezg$h;->tv_user_info_work_status_time:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 388
    .local v38, "userInfoWorkStatusTimeTv":Landroid/widget/TextView;
    sget v48, Lezg$h;->user_info_divider:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 389
    .local v14, "divider":Landroid/view/View;
    add-int/lit8 v48, v30, -0x1

    move/from16 v0, v19

    move/from16 v1, v48

    if-ne v0, v1, :cond_22

    .line 390
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Landroid/widget/RelativeLayout$LayoutParams;

    .line 391
    .local v28, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v28, :cond_21

    .line 392
    new-instance v28, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v28    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v48, -0x1

    const/16 v49, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 394
    .restart local v28    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_21
    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v48

    move/from16 v2, v49

    move/from16 v3, v50

    move/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 395
    const/16 v48, 0xc

    move-object/from16 v0, v28

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 396
    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    .end local v28    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_22
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mDesc:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v48

    if-nez v48, :cond_23

    .line 400
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mDesc:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    :cond_23
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mTitle:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mBegTime:J

    move-wide/from16 v48, v0

    invoke-static/range {v48 .. v49}, Lfwy;->a(J)Ljava/lang/String;

    move-result-object v7

    .line 404
    .local v7, "begin":Ljava/lang/String;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mEndTime:J

    move-wide/from16 v48, v0

    invoke-static/range {v48 .. v49}, Lfwy;->a(J)Ljava/lang/String;

    move-result-object v16

    .line 405
    .local v16, "end":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcid;->c()Landroid/app/Application;

    move-result-object v48

    sget v49, Lezg$l;->dt_user_profile_time_to:I

    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aput-object v7, v50, v51

    const/16 v51, 0x1

    aput-object v16, v50, v51

    invoke-virtual/range {v48 .. v50}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v38

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 411
    .end local v7    # "begin":Ljava/lang/String;
    .end local v14    # "divider":Landroid/view/View;
    .end local v16    # "end":Ljava/lang/String;
    .end local v21    # "itemContainer":Landroid/view/View;
    .end local v37    # "userInfoWorkStatusDescTv":Landroid/widget/TextView;
    .end local v38    # "userInfoWorkStatusTimeTv":Landroid/widget/TextView;
    .end local v39    # "userInfoWorkStatusTitleTv":Landroid/widget/TextView;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v48

    sget v49, Lezg$j;->item_profile_mobile_info:I

    const/16 v50, 0x0

    invoke-virtual/range {v48 .. v50}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 412
    .restart local v21    # "itemContainer":Landroid/view/View;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    if-eqz v48, :cond_2a

    .line 413
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    :goto_13
    sget v48, Lezg$h;->ll_call_actions:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 419
    .local v10, "callActionsLayout":Landroid/widget/LinearLayout;
    sget v48, Lezg$h;->icon_ding_simcard_biz_call:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 420
    .local v8, "bizCallView":Landroid/widget/LinearLayout;
    sget v48, Lezg$h;->icon_ding_simcard_normal_call:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    .line 422
    .local v26, "normalCallView":Landroid/widget/LinearLayout;
    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->isSelf:Z

    move/from16 v48, v0

    if-eqz v48, :cond_2b

    .line 423
    const/16 v48, 0x8

    move/from16 v0, v48

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 424
    const/16 v48, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 451
    :goto_14
    sget v48, Lezg$h;->ding_simcard_guide_layout:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    .line 452
    .local v29, "simcardGuideView":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;
    sget v48, Lezg$h;->user_mobile_info_tip_tv:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/TextView;

    .line 453
    .local v42, "userMobileTipTv":Landroid/widget/TextView;
    sget v48, Lezg$h;->user_mobile_info_content_tv:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 454
    .local v41, "userMobileContentTv":Landroid/widget/TextView;
    sget v48, Lezg$h;->user_mobile_info_ll:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    .line 455
    .local v40, "userMobileBtn":Landroid/view/View;
    sget v48, Lezg$h;->user_info_divider:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v44

    .line 456
    .local v44, "userNameDivider":Landroid/view/View;
    add-int/lit8 v48, v30, -0x1

    move/from16 v0, v19

    move/from16 v1, v48

    if-ne v0, v1, :cond_25

    .line 457
    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout$LayoutParams;

    .line 458
    .local v28, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v28, :cond_24

    .line 459
    new-instance v28, Landroid/widget/LinearLayout$LayoutParams;

    .end local v28    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v48, -0x1

    const/16 v49, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 461
    .restart local v28    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_24
    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v48

    move/from16 v2, v49

    move/from16 v3, v50

    move/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 462
    move-object/from16 v0, v44

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    .end local v28    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_25
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    sget v48, Lezg$h;->iv_ding_simcard:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/alibaba/android/user/widget/DingSimCardView;

    .line 468
    .local v13, "dingIcon":Lcom/alibaba/android/user/widget/DingSimCardView;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDesc:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v13, v0}, Lcom/alibaba/android/user/widget/DingSimCardView;->setClickUrl(Ljava/lang/String;)V

    .line 469
    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->isDingCardUser:Z

    move/from16 v48, v0

    if-eqz v48, :cond_30

    const/16 v48, 0x0

    :goto_15
    move/from16 v0, v48

    invoke-virtual {v13, v0}, Lcom/alibaba/android/user/widget/DingSimCardView;->setVisibility(I)V

    .line 471
    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHidden:Z

    move/from16 v48, v0

    if-eqz v48, :cond_31

    .line 472
    const/16 v48, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 517
    :cond_26
    const/16 v48, 0x8

    move-object/from16 v0, v29

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    .line 521
    :cond_27
    :goto_16
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->getVisibility()I

    move-result v48

    const/16 v49, 0x8

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_29

    .line 522
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout$LayoutParams;

    .line 523
    .restart local v28    # "params":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v28, :cond_28

    .line 524
    new-instance v28, Landroid/widget/LinearLayout$LayoutParams;

    .end local v28    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v48, -0x2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v49

    const/high16 v50, 0x42700000    # 60.0f

    invoke-static/range {v49 .. v50}, Lcms;->c(Landroid/content/Context;F)I

    move-result v49

    move-object/from16 v0, v28

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 526
    .restart local v28    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_28
    const/16 v48, 0x0

    const/16 v49, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v50

    const/high16 v51, 0x41200000    # 10.0f

    invoke-static/range {v50 .. v51}, Lcms;->c(Landroid/content/Context;F)I

    move-result v50

    const/16 v51, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v48

    move/from16 v2, v49

    move/from16 v3, v50

    move/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 527
    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    .end local v28    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 415
    .end local v8    # "bizCallView":Landroid/widget/LinearLayout;
    .end local v10    # "callActionsLayout":Landroid/widget/LinearLayout;
    .end local v13    # "dingIcon":Lcom/alibaba/android/user/widget/DingSimCardView;
    .end local v26    # "normalCallView":Landroid/widget/LinearLayout;
    .end local v29    # "simcardGuideView":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;
    .end local v40    # "userMobileBtn":Landroid/view/View;
    .end local v41    # "userMobileContentTv":Landroid/widget/TextView;
    .end local v42    # "userMobileTipTv":Landroid/widget/TextView;
    .end local v44    # "userNameDivider":Landroid/view/View;
    :cond_2a
    new-instance v48, Lfvi;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v49

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lfvi;-><init>(Landroid/content/Context;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_13

    .line 426
    .restart local v8    # "bizCallView":Landroid/widget/LinearLayout;
    .restart local v10    # "callActionsLayout":Landroid/widget/LinearLayout;
    .restart local v26    # "normalCallView":Landroid/widget/LinearLayout;
    :cond_2b
    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->isOrgUser:Z

    move/from16 v48, v0

    if-eqz v48, :cond_2e

    .line 427
    sget v48, Lezg$h;->view_biz_call:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 428
    .local v9, "bizCallViewBtn":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTelBizNumInfo:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-object/from16 v48, v0

    if-eqz v48, :cond_2d

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    sget v49, Lezg$e;->ui_common_theme_text_color:I

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getColor(I)I

    move-result v48

    move/from16 v0, v48

    invoke-virtual {v9, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 430
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mSecondListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    sget-object v49, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a:Ljava/lang/String;

    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v50, v0

    const/16 v48, 0x0

    const-string/jumbo v51, "userInfoItemObject.mSecondListener-1:"

    aput-object v51, v50, v48

    const/16 v51, 0x1

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mSecondListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    if-nez v48, :cond_2c

    const/16 v48, 0x1

    .line 433
    :goto_17
    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v48

    aput-object v48, v50, v51

    .line 432
    invoke-static/range {v50 .. v50}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    const/16 v50, 0x0

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    .line 431
    move-object/from16 v0, v49

    move-object/from16 v1, v48

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    :goto_18
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 444
    .end local v9    # "bizCallViewBtn":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    :goto_19
    const/16 v48, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 445
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mSecondListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    sget-object v49, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a:Ljava/lang/String;

    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v50, v0

    const/16 v48, 0x0

    const-string/jumbo v51, "userInfoItemObject.mSecondListener-2:"

    aput-object v51, v50, v48

    const/16 v51, 0x1

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mSecondListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    if-nez v48, :cond_2f

    const/16 v48, 0x1

    .line 448
    :goto_1a
    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v48

    aput-object v48, v50, v51

    .line 447
    invoke-static/range {v50 .. v50}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    const/16 v50, 0x0

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    .line 446
    move-object/from16 v0, v49

    move-object/from16 v1, v48

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 431
    .restart local v9    # "bizCallViewBtn":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    :cond_2c
    const/16 v48, 0x0

    goto :goto_17

    .line 435
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    sget v49, Lezg$e;->ui_common_level1_icon_bg_color:I

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getColor(I)I

    move-result v48

    move/from16 v0, v48

    invoke-virtual {v9, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 436
    const/16 v48, 0x8

    move/from16 v0, v48

    invoke-virtual {v9, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_18

    .line 441
    .end local v9    # "bizCallViewBtn":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    :cond_2e
    const/16 v48, 0x8

    move/from16 v0, v48

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_19

    .line 446
    :cond_2f
    const/16 v48, 0x0

    goto :goto_1a

    .line 469
    .restart local v13    # "dingIcon":Lcom/alibaba/android/user/widget/DingSimCardView;
    .restart local v29    # "simcardGuideView":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;
    .restart local v40    # "userMobileBtn":Landroid/view/View;
    .restart local v41    # "userMobileContentTv":Landroid/widget/TextView;
    .restart local v42    # "userMobileTipTv":Landroid/widget/TextView;
    .restart local v44    # "userNameDivider":Landroid/view/View;
    :cond_30
    const/16 v48, 0x8

    goto/16 :goto_15

    .line 475
    :cond_31
    const/16 v48, 0x8

    move-object/from16 v0, v40

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 476
    const-string/jumbo v48, "pref_show_ding_sim_card_guide_tip"

    invoke-static/range {v48 .. v48}, Lcpk;->b(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_26

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->showDingCardGuideTip:Z

    move/from16 v48, v0

    if-eqz v48, :cond_26

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->isSelf:Z

    move/from16 v48, v0

    if-nez v48, :cond_26

    .line 478
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v46

    .line 479
    .local v46, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v46, :cond_27

    invoke-virtual/range {v46 .. v46}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDingSimCard()Z

    move-result v48

    if-eqz v48, :cond_27

    .line 480
    const/16 v48, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    .line 482
    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->isDingCardUser:Z

    move/from16 v48, v0

    if-eqz v48, :cond_32

    .line 483
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcid;->c()Landroid/app/Application;

    move-result-object v48

    sget v49, Lezg$l;->dt_contact_profile_ding_simcard_tip:I

    invoke-virtual/range {v48 .. v49}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v29

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setContent(Ljava/lang/String;)V

    .line 488
    :goto_1b
    new-instance v48, Lcom/alibaba/android/user/profile/v2/UserInfoFragment$2;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment$2;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    new-instance v49, Lcom/alibaba/android/user/profile/v2/UserInfoFragment$3;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment$3;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;Landroid/widget/LinearLayout;)V

    invoke-virtual/range {v48 .. v49}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_16

    .line 485
    :cond_32
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcid;->c()Landroid/app/Application;

    move-result-object v48

    sget v49, Lezg$l;->dt_contact_profile_ding_simcard_normal_call_tip:I

    invoke-virtual/range {v48 .. v49}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v29

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setContent(Ljava/lang/String;)V

    goto :goto_1b

    .line 534
    .end local v8    # "bizCallView":Landroid/widget/LinearLayout;
    .end local v10    # "callActionsLayout":Landroid/widget/LinearLayout;
    .end local v13    # "dingIcon":Lcom/alibaba/android/user/widget/DingSimCardView;
    .end local v21    # "itemContainer":Landroid/view/View;
    .end local v26    # "normalCallView":Landroid/widget/LinearLayout;
    .end local v29    # "simcardGuideView":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;
    .end local v40    # "userMobileBtn":Landroid/view/View;
    .end local v41    # "userMobileContentTv":Landroid/widget/TextView;
    .end local v42    # "userMobileTipTv":Landroid/widget/TextView;
    .end local v44    # "userNameDivider":Landroid/view/View;
    .end local v46    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v48

    sget v49, Lezg$j;->item_profile_address_info:I

    const/16 v50, 0x0

    invoke-virtual/range {v48 .. v50}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 536
    .restart local v21    # "itemContainer":Landroid/view/View;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    if-eqz v48, :cond_33

    .line 537
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    :goto_1c
    sget v48, Lezg$h;->user_address_info_tip_tv:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 543
    .local v31, "title":Landroid/widget/TextView;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    sget v48, Lezg$h;->user_address_info_content_tv:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 546
    .local v12, "content":Landroid/widget/TextView;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHasRightIcon:Z

    move/from16 v48, v0

    if-eqz v48, :cond_34

    .line 549
    sget v48, Lezg$h;->ll_icon_address:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    .line 550
    .local v47, "v":Landroid/view/View;
    const/16 v48, 0x0

    invoke-virtual/range {v47 .. v48}, Landroid/view/View;->setVisibility(I)V

    .line 551
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mSecondListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    .end local v47    # "v":Landroid/view/View;
    :goto_1d
    sget v48, Lezg$h;->user_info_divider:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    .line 557
    .local v35, "userInfoDivider":Landroid/view/View;
    add-int/lit8 v48, v30, -0x1

    move/from16 v0, v19

    move/from16 v1, v48

    if-ne v0, v1, :cond_35

    const/16 v20, 0x1

    .line 558
    .local v20, "isLast":Z
    :goto_1e
    if-eqz v20, :cond_36

    const/16 v48, 0x8

    :goto_1f
    move-object/from16 v0, v35

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 539
    .end local v12    # "content":Landroid/widget/TextView;
    .end local v20    # "isLast":Z
    .end local v31    # "title":Landroid/widget/TextView;
    .end local v35    # "userInfoDivider":Landroid/view/View;
    :cond_33
    new-instance v48, Lfvi;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v49

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lfvi;-><init>(Landroid/content/Context;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1c

    .line 553
    .restart local v12    # "content":Landroid/widget/TextView;
    .restart local v31    # "title":Landroid/widget/TextView;
    :cond_34
    sget v48, Lezg$h;->ll_icon_address:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v48

    const/16 v49, 0x8

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1d

    .line 557
    .restart local v35    # "userInfoDivider":Landroid/view/View;
    :cond_35
    const/16 v20, 0x0

    goto :goto_1e

    .line 558
    .restart local v20    # "isLast":Z
    :cond_36
    const/16 v48, 0x0

    goto :goto_1f

    .line 563
    .end local v12    # "content":Landroid/widget/TextView;
    .end local v20    # "isLast":Z
    .end local v21    # "itemContainer":Landroid/view/View;
    .end local v31    # "title":Landroid/widget/TextView;
    .end local v35    # "userInfoDivider":Landroid/view/View;
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v48

    sget v49, Lezg$j;->item_profile_mail_info:I

    const/16 v50, 0x0

    invoke-virtual/range {v48 .. v50}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 565
    .restart local v21    # "itemContainer":Landroid/view/View;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    if-eqz v48, :cond_37

    .line 566
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    :goto_20
    sget v48, Lezg$h;->user_mail_info_tip_tv:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 572
    .local v33, "tvMailTitle":Landroid/widget/TextView;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    sget v48, Lezg$h;->user_mail_info_content_tv:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 575
    .local v32, "tvMailContent":Landroid/widget/TextView;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    sget v48, Lezg$h;->user_info_divider:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    .line 578
    .restart local v35    # "userInfoDivider":Landroid/view/View;
    add-int/lit8 v48, v30, -0x1

    move/from16 v0, v19

    move/from16 v1, v48

    if-ne v0, v1, :cond_38

    const/16 v20, 0x1

    .line 579
    .restart local v20    # "isLast":Z
    :goto_21
    if-eqz v20, :cond_39

    const/16 v48, 0x8

    :goto_22
    move-object/from16 v0, v35

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 568
    .end local v20    # "isLast":Z
    .end local v32    # "tvMailContent":Landroid/widget/TextView;
    .end local v33    # "tvMailTitle":Landroid/widget/TextView;
    .end local v35    # "userInfoDivider":Landroid/view/View;
    :cond_37
    new-instance v48, Lfvi;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v49

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lfvi;-><init>(Landroid/content/Context;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_20

    .line 578
    .restart local v32    # "tvMailContent":Landroid/widget/TextView;
    .restart local v33    # "tvMailTitle":Landroid/widget/TextView;
    .restart local v35    # "userInfoDivider":Landroid/view/View;
    :cond_38
    const/16 v20, 0x0

    goto :goto_21

    .line 579
    .restart local v20    # "isLast":Z
    :cond_39
    const/16 v48, 0x0

    goto :goto_22

    .line 585
    .end local v20    # "isLast":Z
    .end local v21    # "itemContainer":Landroid/view/View;
    .end local v32    # "tvMailContent":Landroid/widget/TextView;
    .end local v33    # "tvMailTitle":Landroid/widget/TextView;
    .end local v35    # "userInfoDivider":Landroid/view/View;
    :pswitch_9
    const/16 v48, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 590
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v48

    sget v49, Lezg$j;->item_user_profile_class_label:I

    const/16 v50, 0x0

    invoke-virtual/range {v48 .. v50}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 591
    .restart local v21    # "itemContainer":Landroid/view/View;
    sget v48, Lezg$h;->label_list_layout:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    .line 592
    .local v22, "labelLayout":Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;
    sget v48, Lezg$h;->user_info_tip_tv:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/TextView;

    .line 593
    .local v45, "userNameTipTv":Landroid/widget/TextView;
    sget v48, Lezg$h;->user_info_desc:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/TextView;

    .line 594
    .local v43, "userNameDescTv":Landroid/widget/TextView;
    sget v48, Lezg$h;->iv_arrow:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 595
    .local v6, "arrowIv":Landroid/view/View;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mLabelsList:Ljava/util/List;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;Ljava/util/List;)V

    .line 597
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    if-eqz v48, :cond_3a

    .line 598
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 599
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDesc:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 604
    :goto_23
    const/16 v48, 0x8

    move-object/from16 v0, v43

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    const/16 v48, 0x8

    move/from16 v0, v48

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 602
    :cond_3a
    const/16 v48, 0x8

    move/from16 v0, v48

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_23

    .line 610
    .end local v6    # "arrowIv":Landroid/view/View;
    .end local v21    # "itemContainer":Landroid/view/View;
    .end local v22    # "labelLayout":Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;
    .end local v43    # "userNameDescTv":Landroid/widget/TextView;
    .end local v45    # "userNameTipTv":Landroid/widget/TextView;
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v48

    sget v49, Lezg$j;->item_user_profile_org_info_footer:I

    const/16 v50, 0x0

    invoke-virtual/range {v48 .. v50}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 611
    .restart local v21    # "itemContainer":Landroid/view/View;
    sget v48, Lezg$h;->user_profile_org_info_footer_tv_orgs:I

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 612
    .local v27, "orgsTv":Landroid/widget/TextView;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    if-nez v48, :cond_3b

    const/16 v48, 0x0

    :goto_24
    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 613
    :cond_3b
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    goto :goto_24

    .line 618
    .end local v21    # "itemContainer":Landroid/view/View;
    .end local v27    # "orgsTv":Landroid/widget/TextView;
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v48

    sget v49, Lezg$j;->item_user_profile_external_follow_log:I

    const/16 v50, 0x0

    invoke-virtual/range {v48 .. v50}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 619
    .restart local v21    # "itemContainer":Landroid/view/View;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    if-nez v48, :cond_3c

    const/16 v48, 0x0

    :goto_25
    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 619
    :cond_3c
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    goto :goto_25

    .line 258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 129
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    invoke-static {p0}, Lcms;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->a:Ljava/util/List;

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->h()V

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->uidic_global_color_6_5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;IJ)V
    .locals 1
    .param p2, "position"    # I
    .param p3, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    invoke-virtual {p0, p1, p3, p4}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->a(Ljava/util/List;J)V

    .line 159
    return-void
.end method

.method public final a(Ljava/util/List;J)V
    .locals 6
    .param p2, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    const-wide/16 v2, 0x0

    .line 141
    invoke-static {p0}, Lcms;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->a:Ljava/util/List;

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 146
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->h()V

    .line 1167
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    cmp-long v0, p2, v2

    if-lez v0, :cond_5

    .line 1169
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lccr;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    move-result-object v0

    .line 1170
    if-eqz v0, :cond_4

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->contactWaterMark:Z

    if-eqz v0, :cond_4

    .line 1171
    const/16 v0, 0x10

    invoke-static {v0}, Lcms;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1172
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;-><init>(Landroid/content/Context;)V

    .line 1173
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->f()Ljava/lang/String;

    move-result-object v1

    .line 1217
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->c:Ljava/lang/String;

    .line 1174
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a(Ljava/lang/String;)V

    .line 1175
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->color_water_font_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 2142
    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a:I

    .line 1176
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1178
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->color_water_font_white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcrf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1179
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1180
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 1181
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1184
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->uidic_global_color_6_5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 1186
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    cmp-long v0, p2, v2

    if-nez v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->uidic_global_color_6_5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "orgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "orgInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;>;"
    invoke-static {p0}, Lcms;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "orgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->e:Ljava/util/Map;

    .line 164
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->h()V

    goto :goto_0
.end method

.method public final d()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 202
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->a:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    .line 204
    .local v0, "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->showDingCardGuideTip:Z

    if-eqz v2, :cond_0

    .line 205
    const/4 v1, 0x1

    .line 209
    .end local v0    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->a:Ljava/util/List;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 100
    .line 1114
    sget v0, Lezg$j;->fragment_user_info:I

    .line 100
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->c:Landroid/widget/LinearLayout;

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->c:Landroid/widget/LinearLayout;

    sget v1, Lezg$h;->user_info_fragment_container:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->b:Landroid/widget/LinearLayout;

    .line 102
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->i()V

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 108
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroyView()V

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onPause()V

    .line 96
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onResume()V

    .line 91
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 114
    sget v0, Lezg$j;->fragment_user_info:I

    return v0
.end method
