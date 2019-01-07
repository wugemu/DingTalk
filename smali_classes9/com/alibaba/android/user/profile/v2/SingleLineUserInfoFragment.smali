.class public Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "SingleLineUserInfoFragment.java"

# interfaces
.implements Lfvk;


# instance fields
.field a:Ljava/util/Map;
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

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 244
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;ZI)Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 56
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->a(ZI)Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    move-result-object v0

    return-object v0
.end method

.method private a(ZI)Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;
    .locals 6
    .param p1, "isLast"    # Z
    .param p2, "colorRes"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x11

    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 302
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;-><init>(Landroid/content/Context;)V

    .line 303
    .local v0, "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;
    sget v1, Lezg$g;->ui_common_cell_bg:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setBackgroundResource(I)V

    .line 304
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_level1_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->a(II)V

    .line 305
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->user_info_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->c(II)V

    .line 307
    if-lez p2, :cond_0

    .line 308
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->b(II)V

    .line 313
    :goto_0
    if-eqz p1, :cond_1

    .line 314
    sget-object v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 318
    :goto_1
    return-object v0

    .line 310
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->uidic_global_color_6_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->b(II)V

    goto :goto_0

    .line 316
    :cond_1
    sget-object v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignContent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    goto :goto_1
.end method

.method private h()V
    .locals 18

    .prologue
    .line 127
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->c:Landroid/widget/LinearLayout;

    sget v15, Lezg$h;->user_info_tip_tv:I

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 128
    .local v5, "headerTipTv":Landroid/widget/TextView;
    const/16 v14, 0x8

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 130
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->e:Ljava/util/List;

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->e:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_f

    .line 131
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->e:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v11

    .line 132
    .local v11, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_f

    .line 133
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->e:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    .line 134
    .local v13, "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    if-eqz v13, :cond_0

    .line 137
    sget-object v14, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$2;->a:[I

    iget-object v15, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mType:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-virtual {v15}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 132
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 139
    :pswitch_0
    add-int/lit8 v14, v11, -0x1

    if-ne v6, v14, :cond_4

    const/4 v14, 0x1

    .line 2322
    :goto_2
    new-instance v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v1, v15}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;-><init>(Landroid/content/Context;)V

    .line 2323
    sget v15, Lezg$g;->ui_common_cell_bg:I

    invoke-virtual {v1, v15}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->setBackgroundResource(I)V

    .line 2324
    const/16 v15, 0x10

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcid;->c()Landroid/app/Application;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lezg$e;->user_info_tip:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->a(II)V

    .line 2329
    const/16 v15, 0x10

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcid;->c()Landroid/app/Application;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lezg$e;->uidic_global_color_6_1:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->b(II)V

    .line 2332
    if-eqz v14, :cond_5

    .line 2333
    const/4 v14, 0x0

    sget-object v15, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v1, v14, v15}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 140
    .local v1, "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;
    :goto_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->c()Landroid/app/Application;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lezg$e;->border:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->setDividerColor(I)V

    .line 141
    iget-object v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v14}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->setTitle(Ljava/lang/String;)V

    .line 142
    iget-object v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v14, :cond_6

    .line 143
    sget v14, Lezg$g;->right_arrow:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v14, v15, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->b(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 144
    iget-object v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v14}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :goto_4
    iget v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mResId:I

    if-gtz v14, :cond_1

    iget-object v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mMediaId:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 150
    :cond_1
    iget-object v12, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mMediaId:Ljava/lang/String;

    .line 151
    .local v12, "url":Ljava/lang/String;
    invoke-static {v12}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 153
    :try_start_0
    invoke-static {v12}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 158
    :cond_2
    :goto_5
    iget v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mResId:I

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v12, v15}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->a(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 161
    .end local v12    # "url":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 139
    .end local v1    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 2335
    :cond_5
    const/4 v14, 0x0

    sget-object v15, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignContent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v1, v14, v15}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    goto :goto_3

    .line 146
    .restart local v1    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;
    :cond_6
    new-instance v14, Lfvi;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15, v13}, Lfvi;-><init>(Landroid/content/Context;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    invoke-virtual {v1, v14}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 154
    .restart local v12    # "url":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 155
    .local v4, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v4}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_5

    .line 166
    .end local v1    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;
    .end local v4    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .end local v12    # "url":Ljava/lang/String;
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    sget v15, Lezg$j;->item_my_profile_avatar:I

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 167
    .local v7, "itemContainer":Landroid/view/View;
    sget v14, Lezg$h;->user_info_tip_tv:I

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 168
    .local v8, "myAvatarTipTv":Landroid/widget/TextView;
    sget v14, Lezg$h;->user_info_avatar:I

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 169
    .local v9, "myAvatarView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    sget v14, Lezg$h;->user_info_divider:I

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 170
    .local v10, "myPersonalDivider":Landroid/view/View;
    iget-object v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v14, :cond_7

    .line 171
    iget-object v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    :cond_7
    iget-object v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mSecondListener:Landroid/view/View$OnClickListener;

    if-eqz v14, :cond_8

    .line 174
    iget-object v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mSecondListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v14}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    :cond_8
    add-int/lit8 v14, v11, -0x1

    if-ne v6, v14, :cond_9

    .line 178
    const/16 v14, 0x8

    invoke-virtual {v10, v14}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :goto_6
    const/4 v14, 0x1

    const/high16 v15, 0x41800000    # 16.0f

    invoke-virtual {v8, v14, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 184
    iget-object v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    iget-object v15, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mMediaId:Ljava/lang/String;

    invoke-virtual {v9, v14, v15}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 180
    :cond_9
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 192
    .end local v7    # "itemContainer":Landroid/view/View;
    .end local v8    # "myAvatarTipTv":Landroid/widget/TextView;
    .end local v9    # "myAvatarView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .end local v10    # "myPersonalDivider":Landroid/view/View;
    :pswitch_2
    add-int/lit8 v14, v11, -0x1

    if-ne v6, v14, :cond_a

    const/4 v14, 0x1

    :goto_7
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->a(ZI)Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    move-result-object v1

    .line 193
    .local v1, "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->c()Landroid/app/Application;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lezg$e;->border:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setDividerColor(I)V

    .line 194
    iget-object v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v14, :cond_b

    .line 195
    sget v14, Lezg$g;->right_arrow:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v14, v15, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->a(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 196
    iget-object v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v14}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    :goto_8
    iget-object v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    invoke-virtual {v1, v14}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setTitle(Ljava/lang/String;)V

    .line 201
    iget-object v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v14}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setContent(Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 192
    .end local v1    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;
    :cond_a
    const/4 v14, 0x0

    goto :goto_7

    .line 198
    .restart local v1    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;
    :cond_b
    new-instance v14, Lfvi;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15, v13}, Lfvi;-><init>(Landroid/content/Context;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    invoke-virtual {v1, v14}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    .line 207
    .end local v1    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    sget v15, Lezg$j;->item_user_profile_work_mobile:I

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 208
    .restart local v7    # "itemContainer":Landroid/view/View;
    sget v14, Lezg$h;->cell_title:I

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 209
    .local v3, "cellTitle":Landroid/widget/TextView;
    sget v14, Lezg$h;->cell_subTitle:I

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 210
    .local v2, "cellContent":Landroid/widget/TextView;
    iget-object v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 211
    iget-object v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :cond_c
    iget-object v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 214
    iget-object v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :cond_d
    iget-object v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v14, :cond_e

    .line 217
    iget-object v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    :goto_9
    sget v14, Lezg$h;->iv_ding_simcard:I

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/alibaba/android/user/widget/DingSimCardView;

    iget-object v15, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDesc:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/alibaba/android/user/widget/DingSimCardView;->setClickUrl(Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 219
    :cond_e
    new-instance v14, Lfvi;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15, v13}, Lfvi;-><init>(Landroid/content/Context;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    invoke-virtual {v7, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9

    .line 227
    .end local v2    # "cellContent":Landroid/widget/TextView;
    .end local v3    # "cellTitle":Landroid/widget/TextView;
    .end local v7    # "itemContainer":Landroid/view/View;
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    sget v15, Lezg$j;->item_user_profile_qr_code:I

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 228
    .restart local v7    # "itemContainer":Landroid/view/View;
    iget-object v14, v13, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 249
    .end local v6    # "i":I
    .end local v7    # "itemContainer":Landroid/view/View;
    .end local v11    # "size":I
    .end local v13    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    :cond_f
    return-void

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
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
    .line 88
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    invoke-static {p0}, Lcms;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->e:Ljava/util/List;

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->h()V

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->b:Landroid/widget/LinearLayout;

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
    .locals 0
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
    .line 111
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    return-void
.end method

.method public final a(Ljava/util/List;J)V
    .locals 0
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
    .line 101
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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
    .line 84
    .local p1, "orgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "orgInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;>;"
    return-void
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
    .line 115
    .local p1, "orgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->a:Ljava/util/Map;

    .line 116
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->h()V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->e:Ljava/util/List;

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
    .line 352
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->e:Ljava/util/List;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 68
    .line 1078
    sget v0, Lezg$j;->fragment_user_info:I

    .line 68
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->c:Landroid/widget/LinearLayout;

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->c:Landroid/widget/LinearLayout;

    sget v1, Lezg$h;->user_info_fragment_container:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->b:Landroid/widget/LinearLayout;

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->c:Landroid/widget/LinearLayout;

    sget v1, Lezg$h;->user_info_personal_home:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->d:Landroid/widget/LinearLayout;

    .line 71
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->h()V

    .line 1252
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->a:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1254
    if-eqz v0, :cond_0

    .line 1255
    new-instance v1, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1;-><init>(Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;)V

    .line 1295
    const-class v2, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 1296
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2058
    if-eqz v1, :cond_0

    .line 2061
    const-class v0, Lcom/alibaba/android/user/idl/services/SWCommonIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/SWCommonIService;

    .line 2062
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lfvz$2;

    invoke-direct {v3, v1}, Lfvz$2;-><init>(Lcma;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/android/user/idl/services/SWCommonIService;->getUserSummaryByOrg(Ljava/lang/Long;Liyv;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lezg$j;->fragment_user_info:I

    return v0
.end method
