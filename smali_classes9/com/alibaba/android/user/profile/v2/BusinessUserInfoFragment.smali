.class public Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;
.super Lcom/alibaba/android/user/profile/v2/BaseUserInfoSectionFragment;
.source "BusinessUserInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$ExtendedC1T4TextCell;
    }
.end annotation


# instance fields
.field public a:Z

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alibaba/doraemon/image/ImageMagician;

.field private f:Ljava/util/Map;
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

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Landroid/os/Handler;

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/BaseUserInfoSectionFragment;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->a:Z

    .line 94
    iput-boolean v2, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->g:Z

    .line 95
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->h:Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$1;-><init>(Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->i:Landroid/os/Handler;

    .line 267
    iput v2, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->j:I

    .line 268
    iput v2, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->k:I

    .line 1086
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;Ljava/util/List;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "labelLayout"    # Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "labels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;>;"
    const/16 v9, 0x10

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1005
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->removeAllViews()V

    .line 1006
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1007
    :cond_0
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1008
    .local v5, "textView":Landroid/widget/TextView;
    const/high16 v6, 0x41880000    # 17.0f

    invoke-virtual {v5, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1009
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

    .line 1010
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Lezg$l;->dt_user_none:I

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1012
    invoke-virtual {p1, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->addView(Landroid/view/View;)V

    .line 1037
    .end local v5    # "textView":Landroid/widget/TextView;
    :cond_1
    return-void

    .line 1014
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 1015
    .local v0, "dataCount":I
    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {p0, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 1016
    .local v4, "padding":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1017
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    .line 1018
    .local v3, "labelObject":Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
    if-eqz v3, :cond_3

    .line 1022
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;-><init>(Landroid/content/Context;)V

    .line 1023
    .local v2, "label":Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;
    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v2, v8, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setTextSize(IF)V

    .line 1024
    invoke-virtual {v2, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setLines(I)V

    .line 1025
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1026
    invoke-virtual {v2, v4, v7, v4, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setPadding(IIII)V

    .line 1027
    invoke-virtual {v2, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setGravity(I)V

    .line 1028
    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {p0, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setMaxWidth(I)V

    .line 1030
    invoke-virtual {v2, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setVisibility(I)V

    .line 1031
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1032
    iget v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->color:I

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setTextColor(I)V

    .line 1034
    invoke-virtual {p1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->addView(Landroid/view/View;)V

    .line 1016
    .end local v2    # "label":Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Landroid/view/View;J)V
    .locals 10
    .param p1, "mLayout"    # Landroid/view/View;
    .param p2, "orgId"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    if-eqz p1, :cond_4

    cmp-long v4, p2, v6

    if-lez v4, :cond_4

    .line 217
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Lccr;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    move-result-object v2

    .line 218
    .local v2, "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    if-eqz v2, :cond_3

    iget-boolean v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->contactWaterMark:Z

    if-eqz v4, :cond_3

    .line 219
    const/16 v4, 0x10

    invoke-static {v4}, Lcms;->b(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 220
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;-><init>(Landroid/content/Context;)V

    .line 221
    .local v3, "wd":Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->f()Ljava/lang/String;

    move-result-object v4

    .line 1217
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->c:Ljava/lang/String;

    .line 222
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$e;->color_water_font_white:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 2142
    iput v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a:I

    .line 224
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 226
    .end local v3    # "wd":Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->f()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lezg$e;->color_water_font_white:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcrf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 227
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 228
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 229
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 232
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$e;->uidic_global_color_6_5:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 234
    .end local v2    # "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    :cond_4
    if-eqz p1, :cond_0

    cmp-long v4, p2, v6

    if-nez v4, :cond_0

    .line 235
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$e;->uidic_global_color_6_5:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->i()V

    return-void
.end method

.method private a(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;Landroid/widget/LinearLayout;II)V
    .locals 70
    .param p1, "userInfoItemObject"    # Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    .param p2, "mLayout"    # Landroid/widget/LinearLayout;
    .param p3, "i"    # I
    .param p4, "size"    # I

    .prologue
    .line 352
    if-eqz p2, :cond_0

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v61

    sget v62, Lezg$e;->pure_white:I

    invoke-virtual/range {v61 .. v62}, Landroid/content/res/Resources;->getColor(I)I

    move-result v61

    move-object/from16 v0, p2

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 355
    :cond_0
    sget-object v61, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$3;->a:[I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mType:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->ordinal()I

    move-result v62

    aget v61, v61, v62

    packed-switch v61, :pswitch_data_0

    .line 944
    :cond_1
    :goto_0
    return-void

    .line 360
    :pswitch_0
    add-int/lit8 v61, p4, -0x1

    move/from16 v0, p3

    move/from16 v1, v61

    if-ne v0, v1, :cond_4

    const/16 v61, 0x1

    .line 2966
    :goto_1
    new-instance v12, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-direct {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;-><init>(Landroid/content/Context;)V

    .line 2967
    sget v62, Lezg$g;->user_water_list_item_selector:I

    move/from16 v0, v62

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setBackgroundResource(I)V

    .line 2968
    const/16 v62, 0xd

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcid;->c()Landroid/app/Application;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v63

    sget v64, Lezg$e;->uidic_global_color_6_2:I

    invoke-virtual/range {v63 .. v64}, Landroid/content/res/Resources;->getColor(I)I

    move-result v63

    move/from16 v0, v62

    move/from16 v1, v63

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->a(II)V

    .line 2973
    const/16 v62, 0x11

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcid;->c()Landroid/app/Application;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v63

    sget v64, Lezg$e;->uidic_global_color_6_1:I

    invoke-virtual/range {v63 .. v64}, Landroid/content/res/Resources;->getColor(I)I

    move-result v63

    move/from16 v0, v62

    move/from16 v1, v63

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->b(II)V

    .line 2976
    if-eqz v61, :cond_5

    .line 2977
    const/16 v61, 0x8

    sget-object v62, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    move/from16 v0, v61

    move-object/from16 v1, v62

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 361
    .local v12, "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;
    :goto_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Lcid;->c()Landroid/app/Application;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v61

    sget v62, Lezg$e;->ui_common_content_fg_color_alpha_12:I

    invoke-virtual/range {v61 .. v62}, Landroid/content/res/Resources;->getColor(I)I

    move-result v61

    move/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setDividerColor(I)V

    .line 362
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    if-eqz v61, :cond_6

    .line 363
    sget v61, Lezg$g;->right_arrow:I

    const/16 v62, 0x0

    const/16 v63, 0x0

    move/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v12, v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->a(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 364
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setTitle(Ljava/lang/String;)V

    .line 369
    sget-object v61, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserPersonalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mType:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    move-object/from16 v62, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    if-ne v0, v1, :cond_2

    .line 370
    const/16 v61, 0x0

    move/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setSubTitleSingleLine(Z)V

    .line 372
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setSubTitle(Ljava/lang/String;)V

    .line 373
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDesc:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setContent(Ljava/lang/String;)V

    .line 375
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mViewObject:Lcry;

    move-object/from16 v61, v0

    if-eqz v61, :cond_3

    .line 376
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mViewObject:Lcry;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setIndicator(Lcry;)V

    .line 379
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 380
    invoke-virtual {v12}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 381
    .local v29, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    const/high16 v62, 0x40a00000    # 5.0f

    invoke-static/range {v61 .. v62}, Lcms;->c(Landroid/content/Context;F)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    const/high16 v62, 0x40a00000    # 5.0f

    invoke-static/range {v61 .. v62}, Lcms;->c(Landroid/content/Context;F)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 383
    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 360
    .end local v12    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;
    .end local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    const/16 v61, 0x0

    goto/16 :goto_1

    .line 2979
    :cond_5
    const/16 v61, 0x0

    sget-object v62, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignContent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    move/from16 v0, v61

    move-object/from16 v1, v62

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    goto/16 :goto_2

    .line 366
    .restart local v12    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;
    :cond_6
    new-instance v61, Lfvi;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lfvi;-><init>(Landroid/content/Context;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    move-object/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 388
    .end local v12    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;
    :pswitch_1
    add-int/lit8 v61, p4, -0x1

    move/from16 v0, p3

    move/from16 v1, v61

    if-ne v0, v1, :cond_e

    const/16 v61, 0x1

    .line 3947
    :goto_4
    new-instance v12, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-direct {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;-><init>(Landroid/content/Context;)V

    .line 3948
    sget v62, Lezg$g;->user_water_list_item_selector:I

    move/from16 v0, v62

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setBackgroundResource(I)V

    .line 3949
    const/16 v62, 0xd

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcid;->c()Landroid/app/Application;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v63

    sget v64, Lezg$e;->uidic_global_color_6_2:I

    invoke-virtual/range {v63 .. v64}, Landroid/content/res/Resources;->getColor(I)I

    move-result v63

    move/from16 v0, v62

    move/from16 v1, v63

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(II)V

    .line 3954
    const/16 v62, 0x11

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcid;->c()Landroid/app/Application;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v63

    sget v64, Lezg$e;->uidic_global_color_6_1:I

    invoke-virtual/range {v63 .. v64}, Landroid/content/res/Resources;->getColor(I)I

    move-result v63

    move/from16 v0, v62

    move/from16 v1, v63

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->b(II)V

    .line 3957
    if-eqz v61, :cond_f

    .line 3958
    const/16 v61, 0x8

    sget-object v62, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    move/from16 v0, v61

    move-object/from16 v1, v62

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 389
    .local v12, "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;
    :goto_5
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Lcid;->c()Landroid/app/Application;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v61

    sget v62, Lezg$e;->ui_common_content_fg_color_alpha_12:I

    invoke-virtual/range {v61 .. v62}, Landroid/content/res/Resources;->getColor(I)I

    move-result v61

    move/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setDividerColor(I)V

    .line 390
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    if-eqz v61, :cond_10

    .line 391
    sget v61, Lezg$g;->right_arrow:I

    const/16 v62, 0x0

    const/16 v63, 0x0

    move/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v12, v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 392
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    :goto_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setTitle(Ljava/lang/String;)V

    .line 397
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setSubTitle(Ljava/lang/String;)V

    .line 398
    const/16 v61, 0x0

    move/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setSubTitleSingleLine(Z)V

    .line 399
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDescClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    if-eqz v61, :cond_7

    .line 400
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDescClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setSubTitleRightClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    :cond_7
    const/16 v61, 0x11

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v62

    sget v63, Lezg$e;->contact_view_document:I

    invoke-virtual/range {v62 .. v63}, Landroid/content/res/Resources;->getColor(I)I

    move-result v62

    move/from16 v0, v61

    move/from16 v1, v62

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->c(II)V

    .line 403
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHrmEnable:Z

    move/from16 v61, v0

    if-eqz v61, :cond_11

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHrmTitle:Ljava/lang/String;

    move-object/from16 v61, v0

    :goto_7
    move-object/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setSubTitleRight(Ljava/lang/String;)V

    .line 405
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mViewObject:Lcry;

    move-object/from16 v61, v0

    if-eqz v61, :cond_8

    .line 406
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mViewObject:Lcry;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setIndicator(Lcry;)V

    .line 409
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mBadgeList:Ljava/util/List;

    move-object/from16 v61, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v62, v0

    if-nez v62, :cond_12

    const/16 v62, 0x0

    move/from16 v63, v62

    .line 4041
    :goto_8
    if-eqz v12, :cond_15

    if-eqz v61, :cond_15

    invoke-interface/range {v61 .. v61}, Ljava/util/List;->isEmpty()Z

    move-result v62

    if-nez v62, :cond_15

    .line 4042
    invoke-interface/range {v61 .. v61}, Ljava/util/List;->size()I

    move-result v62

    const/16 v64, 0x5

    move/from16 v0, v62

    move/from16 v1, v64

    if-le v0, v1, :cond_13

    const/16 v62, 0x0

    const/16 v64, 0x5

    move-object/from16 v0, v61

    move/from16 v1, v62

    move/from16 v2, v64

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v61

    move-object/from16 v62, v61

    .line 4043
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v61, v0

    if-nez v61, :cond_9

    .line 4044
    const-string/jumbo v61, "IMAGE"

    invoke-static/range {v61 .. v61}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 4046
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Lcms;->a(Landroid/content/Context;)I

    move-result v61

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v64

    const/high16 v65, 0x41a00000    # 20.0f

    const/high16 v66, 0x41500000    # 13.0f

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    mul-float v63, v63, v66

    add-float v63, v63, v65

    move-object/from16 v0, v64

    move/from16 v1, v63

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v63

    sub-int v61, v61, v63

    .line 4047
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v63

    const/high16 v64, 0x40400000    # 3.0f

    invoke-static/range {v63 .. v64}, Lcms;->c(Landroid/content/Context;F)I

    move-result v64

    .line 4048
    invoke-interface/range {v62 .. v62}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v65

    move/from16 v62, v61

    :cond_a
    :goto_a
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_15

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;

    .line 4049
    if-eqz v61, :cond_a

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;->expireDate:Ljava/lang/Long;

    move-object/from16 v63, v0

    if-eqz v63, :cond_b

    invoke-static {}, Lfwy;->a()J

    move-result-wide v66

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;->expireDate:Ljava/lang/Long;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Long;->longValue()J

    move-result-wide v68

    cmp-long v63, v66, v68

    if-gtz v63, :cond_a

    .line 4052
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;->title:Ljava/lang/String;

    move-object/from16 v63, v0

    if-nez v63, :cond_14

    const/16 v63, 0x0

    :goto_b
    add-int/lit8 v63, v63, 0x24

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    move-object/from16 v0, v66

    move/from16 v1, v63

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v63

    sub-int v63, v62, v63

    .line 4053
    if-ltz v63, :cond_15

    .line 4056
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v62

    sget v66, Lezg$j;->profile_name_info:I

    const/16 v67, 0x0

    move-object/from16 v0, v62

    move/from16 v1, v66

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v66

    .line 4057
    new-instance v62, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v67, 0x8

    move/from16 v0, v67

    new-array v0, v0, [F

    move-object/from16 v67, v0

    const/16 v68, 0x0

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v69, v0

    aput v69, v67, v68

    const/16 v68, 0x1

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v69, v0

    aput v69, v67, v68

    const/16 v68, 0x2

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v69, v0

    aput v69, v67, v68

    const/16 v68, 0x3

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v69, v0

    aput v69, v67, v68

    const/16 v68, 0x4

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v69, v0

    aput v69, v67, v68

    const/16 v68, 0x5

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v69, v0

    aput v69, v67, v68

    const/16 v68, 0x6

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v69, v0

    aput v69, v67, v68

    const/16 v68, 0x7

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v69, v0

    aput v69, v67, v68

    const/16 v68, 0x0

    const/16 v69, 0x0

    move-object/from16 v0, v62

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    move-object/from16 v3, v69

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 4059
    new-instance v67, Landroid/graphics/drawable/ShapeDrawable;

    move-object/from16 v0, v67

    move-object/from16 v1, v62

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 4060
    invoke-virtual/range {v67 .. v67}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v62

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;->bgColor:Ljava/lang/String;

    move-object/from16 v68, v0

    .line 5043
    const/16 v69, 0x0

    invoke-static/range {v68 .. v69}, Lcpz;->a(Ljava/lang/String;I)I

    move-result v68

    .line 4060
    move-object/from16 v0, v62

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4061
    sget v62, Lezg$h;->badge_title:I

    move-object/from16 v0, v66

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v62

    check-cast v62, Landroid/widget/TextView;

    .line 4062
    move-object/from16 v0, v62

    move-object/from16 v1, v67

    invoke-static {v0, v1}, Lcqc;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 4063
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;->title:Ljava/lang/String;

    move-object/from16 v67, v0

    move-object/from16 v0, v62

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4064
    sget v62, Lezg$h;->badge_icon:I

    move-object/from16 v0, v66

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v62

    check-cast v62, Landroid/widget/ImageView;

    .line 4066
    :try_start_0
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;->badgeMediaId:Ljava/lang/String;

    move-object/from16 v67, v0

    invoke-static/range {v67 .. v67}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 4067
    invoke-static/range {v67 .. v67}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v68

    if-nez v68, :cond_c

    .line 4068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v68, v0

    const/16 v69, 0x0

    move-object/from16 v0, v68

    move-object/from16 v1, v62

    move-object/from16 v2, v67

    move-object/from16 v3, v69

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4073
    :cond_c
    :goto_c
    const/16 v62, 0x0

    move-object/from16 v0, v66

    move-object/from16 v1, v62

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 4074
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;->url:Ljava/lang/String;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v62

    if-nez v62, :cond_d

    .line 4075
    new-instance v62, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$2;

    move-object/from16 v0, v62

    move-object/from16 v1, p0

    move-object/from16 v2, v61

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$2;-><init>(Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;)V

    move-object/from16 v0, v66

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    move/from16 v62, v63

    .line 4082
    goto/16 :goto_a

    .line 388
    .end local v12    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;
    :cond_e
    const/16 v61, 0x0

    goto/16 :goto_4

    .line 3960
    :cond_f
    const/16 v61, 0x0

    sget-object v62, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignContent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    move/from16 v0, v61

    move-object/from16 v1, v62

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    goto/16 :goto_5

    .line 394
    .restart local v12    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;
    :cond_10
    new-instance v61, Lfvi;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lfvi;-><init>(Landroid/content/Context;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    move-object/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 403
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDesc:Ljava/lang/String;

    move-object/from16 v61, v0

    goto/16 :goto_7

    .line 409
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->length()I

    move-result v62

    move/from16 v63, v62

    goto/16 :goto_8

    :cond_13
    move-object/from16 v62, v61

    .line 4042
    goto/16 :goto_9

    .line 4052
    :cond_14
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;->title:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/lang/String;->length()I

    move-result v63

    mul-int/lit8 v63, v63, 0xa

    goto/16 :goto_b

    .line 4070
    :catch_0
    move-exception v62

    .line 4071
    invoke-virtual/range {v62 .. v62}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto/16 :goto_c

    .line 410
    :cond_15
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 412
    invoke-virtual {v12}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 413
    .restart local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    const/high16 v62, 0x40a00000    # 5.0f

    invoke-static/range {v61 .. v62}, Lcms;->c(Landroid/content/Context;F)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    const/high16 v62, 0x40a00000    # 5.0f

    invoke-static/range {v61 .. v62}, Lcms;->c(Landroid/content/Context;F)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 415
    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 419
    .end local v12    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;
    .end local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v61

    sget v62, Lezg$j;->item_user_profile_follow_records:I

    const/16 v63, 0x0

    move-object/from16 v0, v61

    move/from16 v1, v62

    move-object/from16 v2, p2

    move/from16 v3, v63

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v22

    .line 421
    .local v22, "followRecordView":Landroid/view/View;
    sget v61, Lezg$h;->tv_follow_tip:I

    move-object/from16 v0, v22

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v61

    check-cast v61, Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    move-object/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    sget v61, Lezg$h;->tv_follow_des:I

    move-object/from16 v0, v22

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v61

    check-cast v61, Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    if-eqz v61, :cond_16

    .line 425
    sget v61, Lezg$h;->if_next_arrow:I

    move-object/from16 v0, v22

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v61

    const/16 v62, 0x0

    invoke-virtual/range {v61 .. v62}, Landroid/view/View;->setVisibility(I)V

    .line 426
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    :cond_16
    sget v61, Lezg$h;->divider:I

    move-object/from16 v0, v22

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v61

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v62

    sget v63, Lezg$e;->ui_common_content_fg_color_alpha_12:I

    invoke-virtual/range {v62 .. v63}, Landroid/content/res/Resources;->getColor(I)I

    move-result v62

    invoke-virtual/range {v61 .. v62}, Landroid/view/View;->setBackgroundColor(I)V

    .line 431
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 433
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 434
    .restart local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    const/high16 v62, 0x40e00000    # 7.0f

    invoke-static/range {v61 .. v62}, Lcms;->c(Landroid/content/Context;F)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    const/high16 v62, 0x40a00000    # 5.0f

    invoke-static/range {v61 .. v62}, Lcms;->c(Landroid/content/Context;F)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 436
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 441
    .end local v22    # "followRecordView":Landroid/view/View;
    .end local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v61

    sget v62, Lezg$j;->item_my_profile_avatar:I

    const/16 v63, 0x0

    invoke-virtual/range {v61 .. v63}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 442
    .local v26, "itemContainer":Landroid/view/View;
    sget v61, Lezg$h;->user_info_tip_tv:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 443
    .local v30, "myAvatarTipTv":Landroid/widget/TextView;
    sget v61, Lezg$h;->user_info_avatar:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 444
    .local v31, "myAvatarView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    sget v61, Lezg$h;->user_info_divider:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    .line 445
    .local v32, "myPersonalDivider":Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    if-eqz v61, :cond_17

    .line 446
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    :cond_17
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mSecondListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    if-eqz v61, :cond_18

    .line 449
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mSecondListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    :cond_18
    add-int/lit8 v61, p4, -0x1

    move/from16 v0, p3

    move/from16 v1, v61

    if-ne v0, v1, :cond_19

    .line 453
    const/16 v61, 0x8

    move-object/from16 v0, v32

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 457
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v61

    sget v62, Lezg$e;->ui_common_content_fg_color_alpha_12:I

    invoke-virtual/range {v61 .. v62}, Landroid/content/res/Resources;->getColor(I)I

    move-result v61

    move-object/from16 v0, v32

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 459
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mMediaId:Ljava/lang/String;

    move-object/from16 v62, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 463
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 464
    .restart local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    const/high16 v62, 0x40a00000    # 5.0f

    invoke-static/range {v61 .. v62}, Lcms;->c(Landroid/content/Context;F)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    const/high16 v62, 0x40a00000    # 5.0f

    invoke-static/range {v61 .. v62}, Lcms;->c(Landroid/content/Context;F)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 466
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 455
    .end local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_19
    const/16 v61, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    .line 472
    .end local v26    # "itemContainer":Landroid/view/View;
    .end local v30    # "myAvatarTipTv":Landroid/widget/TextView;
    .end local v31    # "myAvatarView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .end local v32    # "myPersonalDivider":Landroid/view/View;
    :pswitch_4
    add-int/lit8 v61, p4, -0x1

    move/from16 v0, p3

    move/from16 v1, v61

    if-ne v0, v1, :cond_1d

    const/16 v61, 0x1

    .line 5985
    :goto_e
    new-instance v12, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$ExtendedC1T4TextCell;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-direct {v12, v0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$ExtendedC1T4TextCell;-><init>(Landroid/content/Context;)V

    .line 5986
    const/16 v62, 0x0

    const/16 v63, 0x3

    move/from16 v0, v62

    move/from16 v1, v63

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$ExtendedC1T4TextCell;->a(ZI)V

    .line 5987
    sget v62, Lezg$g;->user_water_list_item_selector:I

    move/from16 v0, v62

    invoke-virtual {v12, v0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$ExtendedC1T4TextCell;->setBackgroundResource(I)V

    .line 5988
    const/16 v62, 0xd

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcid;->c()Landroid/app/Application;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v63

    sget v64, Lezg$e;->uidic_global_color_6_2:I

    invoke-virtual/range {v63 .. v64}, Landroid/content/res/Resources;->getColor(I)I

    move-result v63

    move/from16 v0, v62

    move/from16 v1, v63

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$ExtendedC1T4TextCell;->a(II)V

    .line 5993
    const/16 v62, 0x11

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcid;->c()Landroid/app/Application;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v63

    sget v64, Lezg$e;->uidic_global_color_6_1:I

    invoke-virtual/range {v63 .. v64}, Landroid/content/res/Resources;->getColor(I)I

    move-result v63

    move/from16 v0, v62

    move/from16 v1, v63

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$ExtendedC1T4TextCell;->b(II)V

    .line 5996
    if-eqz v61, :cond_1e

    .line 5997
    const/16 v61, 0x8

    sget-object v62, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    move/from16 v0, v61

    move-object/from16 v1, v62

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$ExtendedC1T4TextCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 473
    .local v12, "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;
    :goto_f
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Lcid;->c()Landroid/app/Application;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v61

    sget v62, Lezg$e;->ui_common_content_fg_color_alpha_12:I

    invoke-virtual/range {v61 .. v62}, Landroid/content/res/Resources;->getColor(I)I

    move-result v61

    move/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->setDividerColor(I)V

    .line 474
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->setTitle(Ljava/lang/String;)V

    .line 475
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->setSubTitle(Ljava/lang/String;)V

    .line 477
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    if-eqz v61, :cond_1f

    .line 478
    sget v61, Lezg$g;->right_arrow:I

    const/16 v62, 0x0

    const/16 v63, 0x0

    move/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v12, v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->b(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 479
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    :goto_10
    move-object/from16 v0, p1

    iget v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mResId:I

    move/from16 v61, v0

    if-gtz v61, :cond_1a

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mMediaId:Ljava/lang/String;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v61

    if-nez v61, :cond_1c

    .line 485
    :cond_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mMediaId:Ljava/lang/String;

    move-object/from16 v49, v0

    .line 486
    .local v49, "url":Ljava/lang/String;
    invoke-static/range {v49 .. v49}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_1b

    .line 488
    :try_start_1
    invoke-static/range {v49 .. v49}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v49

    .line 493
    :cond_1b
    :goto_11
    move-object/from16 v0, p1

    iget v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mResId:I

    move/from16 v61, v0

    const/16 v62, 0x0

    move/from16 v0, v61

    move-object/from16 v1, v49

    move-object/from16 v2, v62

    invoke-virtual {v12, v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->a(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 496
    .end local v49    # "url":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 498
    invoke-virtual {v12}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 499
    .restart local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    const/high16 v62, 0x40a00000    # 5.0f

    invoke-static/range {v61 .. v62}, Lcms;->c(Landroid/content/Context;F)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    const/high16 v62, 0x40a00000    # 5.0f

    invoke-static/range {v61 .. v62}, Lcms;->c(Landroid/content/Context;F)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 501
    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 472
    .end local v12    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;
    .end local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1d
    const/16 v61, 0x0

    goto/16 :goto_e

    .line 5999
    :cond_1e
    const/16 v61, 0x0

    sget-object v62, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignContent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    move/from16 v0, v61

    move-object/from16 v1, v62

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$ExtendedC1T4TextCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    goto/16 :goto_f

    .line 481
    .restart local v12    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;
    :cond_1f
    new-instance v61, Lfvi;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lfvi;-><init>(Landroid/content/Context;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    move-object/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_10

    .line 489
    .restart local v49    # "url":Ljava/lang/String;
    :catch_1
    move-exception v17

    .line 490
    .local v17, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual/range {v17 .. v17}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_11

    .line 506
    .end local v12    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;
    .end local v17    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .end local v49    # "url":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    move-object/from16 v61, v0

    if-eqz v61, :cond_1

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v61

    sget v62, Lezg$j;->item_user_profile_name_info:I

    const/16 v63, 0x0

    invoke-virtual/range {v61 .. v63}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 511
    .restart local v26    # "itemContainer":Landroid/view/View;
    sget v61, Lezg$h;->tv_user_info_work_status_desc:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v51

    check-cast v51, Landroid/widget/TextView;

    .line 512
    .local v51, "userInfoWorkStatusDescTv":Landroid/widget/TextView;
    sget v61, Lezg$h;->tv_user_info_work_status_title:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v53

    check-cast v53, Landroid/widget/TextView;

    .line 513
    .local v53, "userInfoWorkStatusTitleTv":Landroid/widget/TextView;
    sget v61, Lezg$h;->tv_user_info_work_status_time:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/TextView;

    .line 514
    .local v52, "userInfoWorkStatusTimeTv":Landroid/widget/TextView;
    sget v61, Lezg$h;->user_info_divider:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 515
    .local v16, "divider":Landroid/view/View;
    add-int/lit8 v61, p4, -0x1

    move/from16 v0, p3

    move/from16 v1, v61

    if-ne v0, v1, :cond_21

    .line 516
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v38

    check-cast v38, Landroid/widget/RelativeLayout$LayoutParams;

    .line 517
    .local v38, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v38, :cond_20

    .line 518
    new-instance v38, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v38    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v61, -0x1

    const/16 v62, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v61

    move/from16 v2, v62

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 520
    .restart local v38    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_20
    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v61

    move/from16 v2, v62

    move/from16 v3, v63

    move/from16 v4, v64

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 521
    const/16 v61, 0xc

    move-object/from16 v0, v38

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 522
    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    .end local v38    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v61

    sget v62, Lezg$e;->ui_common_content_fg_color_alpha_12:I

    invoke-virtual/range {v61 .. v62}, Landroid/content/res/Resources;->getColor(I)I

    move-result v61

    move-object/from16 v0, v16

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 526
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mDesc:Ljava/lang/String;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v61

    if-nez v61, :cond_22

    .line 527
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mDesc:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    :cond_22
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mTitle:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mBegTime:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Lfwy;->a(J)Ljava/lang/String;

    move-result-object v8

    .line 531
    .local v8, "begin":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mEndTime:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Lfwy;->a(J)Ljava/lang/String;

    move-result-object v19

    .line 532
    .local v19, "end":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Lcid;->c()Landroid/app/Application;

    move-result-object v61

    sget v62, Lezg$l;->dt_user_profile_time_to:I

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput-object v8, v63, v64

    const/16 v64, 0x1

    aput-object v19, v63, v64

    invoke-virtual/range {v61 .. v63}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, v52

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 535
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 536
    .restart local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    const/high16 v62, 0x40a00000    # 5.0f

    invoke-static/range {v61 .. v62}, Lcms;->c(Landroid/content/Context;F)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    const/high16 v62, 0x40a00000    # 5.0f

    invoke-static/range {v61 .. v62}, Lcms;->c(Landroid/content/Context;F)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 538
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 543
    .end local v8    # "begin":Ljava/lang/String;
    .end local v16    # "divider":Landroid/view/View;
    .end local v19    # "end":Ljava/lang/String;
    .end local v26    # "itemContainer":Landroid/view/View;
    .end local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v51    # "userInfoWorkStatusDescTv":Landroid/widget/TextView;
    .end local v52    # "userInfoWorkStatusTimeTv":Landroid/widget/TextView;
    .end local v53    # "userInfoWorkStatusTitleTv":Landroid/widget/TextView;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v61

    sget v62, Lezg$j;->item_business_profile_mobile_info:I

    const/16 v63, 0x0

    invoke-virtual/range {v61 .. v63}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 544
    .restart local v26    # "itemContainer":Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    if-eqz v61, :cond_27

    .line 545
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    :goto_12
    sget v61, Lezg$h;->ll_call_actions:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 551
    .local v11, "callActionsLayout":Landroid/widget/LinearLayout;
    sget v61, Lezg$h;->icon_ding_simcard_biz_call:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 553
    .local v9, "bizCallView":Landroid/widget/LinearLayout;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->isSelf:Z

    move/from16 v61, v0

    if-eqz v61, :cond_28

    .line 554
    const/16 v61, 0x8

    move/from16 v0, v61

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 579
    :goto_13
    sget v61, Lezg$h;->ding_simcard_guide_layout:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    .line 580
    .local v39, "simcardGuideView":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;
    sget v61, Lezg$h;->user_mobile_info_tip_tv:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v56

    check-cast v56, Landroid/widget/TextView;

    .line 581
    .local v56, "userMobileTipTv":Landroid/widget/TextView;
    sget v61, Lezg$h;->user_mobile_info_content_tv:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v55

    check-cast v55, Landroid/widget/TextView;

    .line 582
    .local v55, "userMobileContentTv":Landroid/widget/TextView;
    sget v61, Lezg$h;->user_mobile_info_ll:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v54

    .line 583
    .local v54, "userMobileBtn":Landroid/view/View;
    sget v61, Lezg$h;->user_info_divider:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v58

    .line 584
    .local v58, "userNameDivider":Landroid/view/View;
    add-int/lit8 v61, p4, -0x1

    move/from16 v0, p3

    move/from16 v1, v61

    if-ne v0, v1, :cond_24

    .line 585
    invoke-virtual/range {v58 .. v58}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v38

    check-cast v38, Landroid/widget/LinearLayout$LayoutParams;

    .line 586
    .local v38, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v38, :cond_23

    .line 587
    new-instance v38, Landroid/widget/LinearLayout$LayoutParams;

    .end local v38    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v61, -0x1

    const/16 v62, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v61

    move/from16 v2, v62

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 589
    .restart local v38    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_23
    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v61

    move/from16 v2, v62

    move/from16 v3, v63

    move/from16 v4, v64

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 590
    move-object/from16 v0, v58

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    .end local v38    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v61

    sget v62, Lezg$e;->ui_common_content_fg_color_alpha_12:I

    invoke-virtual/range {v61 .. v62}, Landroid/content/res/Resources;->getColor(I)I

    move-result v61

    move-object/from16 v0, v58

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 593
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    sget v61, Lezg$h;->iv_ding_simcard:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/alibaba/android/user/widget/DingSimCardView;

    .line 597
    .local v15, "dingIcon":Lcom/alibaba/android/user/widget/DingSimCardView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDesc:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    invoke-virtual {v15, v0}, Lcom/alibaba/android/user/widget/DingSimCardView;->setClickUrl(Ljava/lang/String;)V

    .line 598
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->isDingCardUser:Z

    move/from16 v61, v0

    if-eqz v61, :cond_2d

    const/16 v61, 0x0

    :goto_14
    move/from16 v0, v61

    invoke-virtual {v15, v0}, Lcom/alibaba/android/user/widget/DingSimCardView;->setVisibility(I)V

    .line 600
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHidden:Z

    move/from16 v61, v0

    if-eqz v61, :cond_2e

    .line 601
    const/16 v61, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 602
    const/16 v61, 0x8

    move-object/from16 v0, v39

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    .line 651
    :goto_15
    invoke-virtual/range {v39 .. v39}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->getVisibility()I

    move-result v61

    const/16 v62, 0x8

    move/from16 v0, v61

    move/from16 v1, v62

    if-ne v0, v1, :cond_26

    .line 652
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v38

    check-cast v38, Landroid/widget/LinearLayout$LayoutParams;

    .line 653
    .restart local v38    # "params":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v38, :cond_25

    .line 654
    new-instance v38, Landroid/widget/LinearLayout$LayoutParams;

    .end local v38    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v61, -0x2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v62

    const/high16 v63, 0x42700000    # 60.0f

    invoke-static/range {v62 .. v63}, Lcms;->c(Landroid/content/Context;F)I

    move-result v62

    move-object/from16 v0, v38

    move/from16 v1, v61

    move/from16 v2, v62

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 656
    .restart local v38    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_25
    const/16 v61, 0x0

    const/16 v62, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v63

    const/high16 v64, 0x41200000    # 10.0f

    invoke-static/range {v63 .. v64}, Lcms;->c(Landroid/content/Context;F)I

    move-result v63

    const/16 v64, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v61

    move/from16 v2, v62

    move/from16 v3, v63

    move/from16 v4, v64

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 657
    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 660
    .end local v38    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_26
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 662
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 663
    .restart local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    const/high16 v62, 0x40a00000    # 5.0f

    invoke-static/range {v61 .. v62}, Lcms;->c(Landroid/content/Context;F)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    const/high16 v62, 0x40a00000    # 5.0f

    invoke-static/range {v61 .. v62}, Lcms;->c(Landroid/content/Context;F)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 665
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 547
    .end local v9    # "bizCallView":Landroid/widget/LinearLayout;
    .end local v11    # "callActionsLayout":Landroid/widget/LinearLayout;
    .end local v15    # "dingIcon":Lcom/alibaba/android/user/widget/DingSimCardView;
    .end local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v39    # "simcardGuideView":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;
    .end local v54    # "userMobileBtn":Landroid/view/View;
    .end local v55    # "userMobileContentTv":Landroid/widget/TextView;
    .end local v56    # "userMobileTipTv":Landroid/widget/TextView;
    .end local v58    # "userNameDivider":Landroid/view/View;
    :cond_27
    new-instance v61, Lfvi;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lfvi;-><init>(Landroid/content/Context;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_12

    .line 556
    .restart local v9    # "bizCallView":Landroid/widget/LinearLayout;
    .restart local v11    # "callActionsLayout":Landroid/widget/LinearLayout;
    :cond_28
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->isOrgUser:Z

    move/from16 v61, v0

    if-eqz v61, :cond_2b

    .line 557
    sget v61, Lezg$h;->view_biz_call:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 558
    .local v10, "bizCallViewBtn":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTelBizNumInfo:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-object/from16 v61, v0

    if-eqz v61, :cond_2a

    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v61

    sget v62, Lezg$e;->ui_common_theme_text_color:I

    invoke-virtual/range {v61 .. v62}, Landroid/content/res/Resources;->getColor(I)I

    move-result v61

    move/from16 v0, v61

    invoke-virtual {v10, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 560
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mSecondListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    const-string/jumbo v62, "BusinessUserInfoFragment"

    const/16 v61, 0x2

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v63, v0

    const/16 v61, 0x0

    const-string/jumbo v64, "userInfoItemObject.mSecondListener-1:"

    aput-object v64, v63, v61

    const/16 v64, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mSecondListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    if-nez v61, :cond_29

    const/16 v61, 0x1

    .line 563
    :goto_16
    invoke-static/range {v61 .. v61}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v61

    aput-object v61, v63, v64

    .line 562
    invoke-static/range {v63 .. v63}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    const/16 v63, 0x0

    move/from16 v0, v63

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v63, v0

    .line 561
    move-object/from16 v0, v62

    move-object/from16 v1, v61

    move-object/from16 v2, v63

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    :goto_17
    const/16 v61, 0x0

    move/from16 v0, v61

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 574
    .end local v10    # "bizCallViewBtn":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    :goto_18
    const-string/jumbo v62, "BusinessUserInfoFragment"

    const/16 v61, 0x2

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v63, v0

    const/16 v61, 0x0

    const-string/jumbo v64, "userInfoItemObject.mSecondListener-2:"

    aput-object v64, v63, v61

    const/16 v64, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mSecondListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    if-nez v61, :cond_2c

    const/16 v61, 0x1

    .line 576
    :goto_19
    invoke-static/range {v61 .. v61}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v61

    aput-object v61, v63, v64

    .line 575
    invoke-static/range {v63 .. v63}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    const/16 v63, 0x0

    move/from16 v0, v63

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v63, v0

    .line 574
    move-object/from16 v0, v62

    move-object/from16 v1, v61

    move-object/from16 v2, v63

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 561
    .restart local v10    # "bizCallViewBtn":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    :cond_29
    const/16 v61, 0x0

    goto :goto_16

    .line 565
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v61

    sget v62, Lezg$e;->ui_common_level1_icon_bg_color:I

    invoke-virtual/range {v61 .. v62}, Landroid/content/res/Resources;->getColor(I)I

    move-result v61

    move/from16 v0, v61

    invoke-virtual {v10, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 566
    const/16 v61, 0x8

    move/from16 v0, v61

    invoke-virtual {v10, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_17

    .line 571
    .end local v10    # "bizCallViewBtn":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    :cond_2b
    const/16 v61, 0x8

    move/from16 v0, v61

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_18

    .line 574
    :cond_2c
    const/16 v61, 0x0

    goto :goto_19

    .line 598
    .restart local v15    # "dingIcon":Lcom/alibaba/android/user/widget/DingSimCardView;
    .restart local v39    # "simcardGuideView":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;
    .restart local v54    # "userMobileBtn":Landroid/view/View;
    .restart local v55    # "userMobileContentTv":Landroid/widget/TextView;
    .restart local v56    # "userMobileTipTv":Landroid/widget/TextView;
    .restart local v58    # "userNameDivider":Landroid/view/View;
    :cond_2d
    const/16 v61, 0x8

    goto/16 :goto_14

    .line 604
    :cond_2e
    const/16 v61, 0x8

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 647
    const/16 v61, 0x8

    move-object/from16 v0, v39

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    goto/16 :goto_15

    .line 670
    .end local v9    # "bizCallView":Landroid/widget/LinearLayout;
    .end local v11    # "callActionsLayout":Landroid/widget/LinearLayout;
    .end local v15    # "dingIcon":Lcom/alibaba/android/user/widget/DingSimCardView;
    .end local v26    # "itemContainer":Landroid/view/View;
    .end local v39    # "simcardGuideView":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;
    .end local v54    # "userMobileBtn":Landroid/view/View;
    .end local v55    # "userMobileContentTv":Landroid/widget/TextView;
    .end local v56    # "userMobileTipTv":Landroid/widget/TextView;
    .end local v58    # "userNameDivider":Landroid/view/View;
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v61

    sget v62, Lezg$j;->item_profile_address_info:I

    const/16 v63, 0x0

    invoke-virtual/range {v61 .. v63}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 672
    .restart local v26    # "itemContainer":Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    if-eqz v61, :cond_2f

    .line 673
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    :goto_1a
    sget v61, Lezg$h;->user_address_info_tip_tv:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 679
    .local v41, "title":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    sget v61, Lezg$h;->user_address_info_content_tv:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 682
    .local v13, "content":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHasRightIcon:Z

    move/from16 v61, v0

    if-eqz v61, :cond_30

    .line 685
    sget v61, Lezg$h;->ll_icon_address:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v60

    .line 686
    .local v60, "v":Landroid/view/View;
    const/16 v61, 0x0

    invoke-virtual/range {v60 .. v61}, Landroid/view/View;->setVisibility(I)V

    .line 687
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mSecondListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    .end local v60    # "v":Landroid/view/View;
    :goto_1b
    sget v61, Lezg$h;->user_info_divider:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v50

    .line 693
    .local v50, "userInfoDivider":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v61

    sget v62, Lezg$e;->ui_common_content_fg_color_alpha_12:I

    invoke-virtual/range {v61 .. v62}, Landroid/content/res/Resources;->getColor(I)I

    move-result v61

    move-object/from16 v0, v50

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 694
    add-int/lit8 v61, p4, -0x1

    move/from16 v0, p3

    move/from16 v1, v61

    if-ne v0, v1, :cond_31

    const/16 v25, 0x1

    .line 695
    .local v25, "isLast":Z
    :goto_1c
    if-eqz v25, :cond_32

    const/16 v61, 0x8

    :goto_1d
    move-object/from16 v0, v50

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 696
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 698
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 699
    .restart local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    const/high16 v62, 0x40a00000    # 5.0f

    invoke-static/range {v61 .. v62}, Lcms;->c(Landroid/content/Context;F)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 700
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    const/high16 v62, 0x40a00000    # 5.0f

    invoke-static/range {v61 .. v62}, Lcms;->c(Landroid/content/Context;F)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 701
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 675
    .end local v13    # "content":Landroid/widget/TextView;
    .end local v25    # "isLast":Z
    .end local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v41    # "title":Landroid/widget/TextView;
    .end local v50    # "userInfoDivider":Landroid/view/View;
    :cond_2f
    new-instance v61, Lfvi;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lfvi;-><init>(Landroid/content/Context;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1a

    .line 689
    .restart local v13    # "content":Landroid/widget/TextView;
    .restart local v41    # "title":Landroid/widget/TextView;
    :cond_30
    sget v61, Lezg$h;->ll_icon_address:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v61

    const/16 v62, 0x8

    invoke-virtual/range {v61 .. v62}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1b

    .line 694
    .restart local v50    # "userInfoDivider":Landroid/view/View;
    :cond_31
    const/16 v25, 0x0

    goto :goto_1c

    .line 695
    .restart local v25    # "isLast":Z
    :cond_32
    const/16 v61, 0x0

    goto :goto_1d

    .line 706
    .end local v13    # "content":Landroid/widget/TextView;
    .end local v25    # "isLast":Z
    .end local v26    # "itemContainer":Landroid/view/View;
    .end local v41    # "title":Landroid/widget/TextView;
    .end local v50    # "userInfoDivider":Landroid/view/View;
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v61

    sget v62, Lezg$j;->item_profile_mail_info:I

    const/16 v63, 0x0

    invoke-virtual/range {v61 .. v63}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 708
    .restart local v26    # "itemContainer":Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    if-eqz v61, :cond_33

    .line 709
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    :goto_1e
    sget v61, Lezg$h;->user_mail_info_tip_tv:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/TextView;

    .line 715
    .local v45, "tvMailTitle":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    sget v61, Lezg$h;->user_mail_info_content_tv:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/TextView;

    .line 718
    .local v44, "tvMailContent":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    sget v61, Lezg$h;->user_info_divider:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v50

    .line 721
    .restart local v50    # "userInfoDivider":Landroid/view/View;
    add-int/lit8 v61, p4, -0x1

    move/from16 v0, p3

    move/from16 v1, v61

    if-ne v0, v1, :cond_34

    const/16 v25, 0x1

    .line 722
    .restart local v25    # "isLast":Z
    :goto_1f
    if-eqz v25, :cond_35

    const/16 v61, 0x8

    :goto_20
    move-object/from16 v0, v50

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 723
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v61

    sget v62, Lezg$e;->ui_common_content_fg_color_alpha_12:I

    invoke-virtual/range {v61 .. v62}, Landroid/content/res/Resources;->getColor(I)I

    move-result v61

    move-object/from16 v0, v50

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 725
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 727
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 728
    .restart local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    const/high16 v62, 0x40a00000    # 5.0f

    invoke-static/range {v61 .. v62}, Lcms;->c(Landroid/content/Context;F)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    const/high16 v62, 0x40a00000    # 5.0f

    invoke-static/range {v61 .. v62}, Lcms;->c(Landroid/content/Context;F)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 730
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 711
    .end local v25    # "isLast":Z
    .end local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v44    # "tvMailContent":Landroid/widget/TextView;
    .end local v45    # "tvMailTitle":Landroid/widget/TextView;
    .end local v50    # "userInfoDivider":Landroid/view/View;
    :cond_33
    new-instance v61, Lfvi;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lfvi;-><init>(Landroid/content/Context;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1e

    .line 721
    .restart local v44    # "tvMailContent":Landroid/widget/TextView;
    .restart local v45    # "tvMailTitle":Landroid/widget/TextView;
    .restart local v50    # "userInfoDivider":Landroid/view/View;
    :cond_34
    const/16 v25, 0x0

    goto :goto_1f

    .line 722
    .restart local v25    # "isLast":Z
    :cond_35
    const/16 v61, 0x0

    goto :goto_20

    .line 735
    .end local v25    # "isLast":Z
    .end local v26    # "itemContainer":Landroid/view/View;
    .end local v44    # "tvMailContent":Landroid/widget/TextView;
    .end local v45    # "tvMailTitle":Landroid/widget/TextView;
    .end local v50    # "userInfoDivider":Landroid/view/View;
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v61

    sget v62, Lezg$j;->item_user_profile_class_label:I

    const/16 v63, 0x0

    invoke-virtual/range {v61 .. v63}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 736
    .restart local v26    # "itemContainer":Landroid/view/View;
    sget v61, Lezg$h;->label_list_layout:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    .line 737
    .local v28, "labelLayout":Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;
    sget v61, Lezg$h;->user_info_tip_tv:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/TextView;

    .line 738
    .local v59, "userNameTipTv":Landroid/widget/TextView;
    sget v61, Lezg$h;->user_info_desc:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Landroid/widget/TextView;

    .line 739
    .local v57, "userNameDescTv":Landroid/widget/TextView;
    sget v61, Lezg$h;->iv_arrow:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 740
    .local v6, "arrowIv":Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mLabelsList:Ljava/util/List;

    move-object/from16 v62, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v28

    move-object/from16 v2, v62

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;Ljava/util/List;)V

    .line 742
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    if-eqz v61, :cond_36

    .line 743
    const/16 v61, 0x0

    move/from16 v0, v61

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 744
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDesc:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 749
    :goto_21
    const/16 v61, 0x8

    move-object/from16 v0, v57

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 750
    const/16 v61, 0x8

    move/from16 v0, v61

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 752
    sget v61, Lezg$h;->divider_line:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 753
    .restart local v16    # "divider":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v61

    sget v62, Lezg$e;->ui_common_content_fg_color_alpha_12:I

    invoke-virtual/range {v61 .. v62}, Landroid/content/res/Resources;->getColor(I)I

    move-result v61

    move-object/from16 v0, v16

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 754
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 756
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 757
    .restart local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    const/high16 v62, 0x40a00000    # 5.0f

    invoke-static/range {v61 .. v62}, Lcms;->c(Landroid/content/Context;F)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 758
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    const/high16 v62, 0x40a00000    # 5.0f

    invoke-static/range {v61 .. v62}, Lcms;->c(Landroid/content/Context;F)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 759
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 747
    .end local v16    # "divider":Landroid/view/View;
    .end local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_36
    const/16 v61, 0x8

    move/from16 v0, v61

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_21

    .line 764
    .end local v6    # "arrowIv":Landroid/view/View;
    .end local v26    # "itemContainer":Landroid/view/View;
    .end local v28    # "labelLayout":Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;
    .end local v57    # "userNameDescTv":Landroid/widget/TextView;
    .end local v59    # "userNameTipTv":Landroid/widget/TextView;
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v61

    sget v62, Lezg$j;->item_user_profile_org_info_footer:I

    const/16 v63, 0x0

    invoke-virtual/range {v61 .. v63}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 765
    .restart local v26    # "itemContainer":Landroid/view/View;
    sget v61, Lezg$h;->user_profile_org_info_footer_tv_orgs:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    .line 766
    .local v37, "orgsTv":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mSpanText:Landroid/text/SpannableStringBuilder;

    move-object/from16 v61, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    if-nez v61, :cond_37

    const/16 v61, 0x0

    :goto_22
    move-object/from16 v0, v26

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 767
    :cond_37
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    goto :goto_22

    .line 772
    .end local v26    # "itemContainer":Landroid/view/View;
    .end local v37    # "orgsTv":Landroid/widget/TextView;
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v61

    sget v62, Lezg$j;->item_user_profile_external_follow_log:I

    const/16 v63, 0x0

    invoke-virtual/range {v61 .. v63}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 773
    .restart local v26    # "itemContainer":Landroid/view/View;
    sget v61, Lezg$h;->profile_external_log_tv_content:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    .line 774
    .local v40, "textView":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    if-nez v61, :cond_38

    const/16 v61, 0x0

    :goto_23
    move-object/from16 v0, v26

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 775
    :cond_38
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    goto :goto_23

    .line 780
    .end local v26    # "itemContainer":Landroid/view/View;
    .end local v40    # "textView":Landroid/widget/TextView;
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v61

    sget v62, Lezg$j;->item_user_profile_tv_cell:I

    const/16 v63, 0x0

    invoke-virtual/range {v61 .. v63}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 781
    .restart local v26    # "itemContainer":Landroid/view/View;
    sget v61, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v62, 0x10

    move/from16 v0, v61

    move/from16 v1, v62

    if-lt v0, v1, :cond_39

    .line 782
    const/16 v61, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 786
    :goto_24
    sget v61, Lezg$h;->item_user_profile_cell_title_tv:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 787
    .local v36, "orgTv":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 784
    .end local v36    # "orgTv":Landroid/widget/TextView;
    :cond_39
    const/16 v61, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_24

    .line 792
    .end local v26    # "itemContainer":Landroid/view/View;
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v61

    sget v62, Lezg$j;->item_user_profile_divider_cell:I

    const/16 v63, 0x0

    invoke-virtual/range {v61 .. v63}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 793
    .restart local v26    # "itemContainer":Landroid/view/View;
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 797
    .end local v26    # "itemContainer":Landroid/view/View;
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v61

    sget v62, Lezg$j;->item_user_profile_tv_self_introduction:I

    const/16 v63, 0x0

    invoke-virtual/range {v61 .. v63}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 798
    .restart local v26    # "itemContainer":Landroid/view/View;
    sget v61, Lezg$h;->item_user_profile_cell_title_tv:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 799
    .local v33, "orgContent":Landroid/widget/TextView;
    sget v61, Lezg$h;->item_user_profile_cell_source_tv:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 800
    .local v35, "orgSource":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDesc:Ljava/lang/String;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v61

    if-nez v61, :cond_3b

    .line 801
    const/16 v61, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 802
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDesc:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    :goto_25
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v61

    if-nez v61, :cond_3a

    .line 807
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    :cond_3a
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 804
    :cond_3b
    const/16 v61, 0x8

    move-object/from16 v0, v35

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_25

    .line 813
    .end local v26    # "itemContainer":Landroid/view/View;
    .end local v33    # "orgContent":Landroid/widget/TextView;
    .end local v35    # "orgSource":Landroid/widget/TextView;
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v61

    sget v62, Lezg$j;->item_user_profile_org_infos:I

    const/16 v63, 0x0

    move-object/from16 v0, v61

    move/from16 v1, v62

    move-object/from16 v2, p2

    move/from16 v3, v63

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v26

    .line 814
    .restart local v26    # "itemContainer":Landroid/view/View;
    sget v61, Lezg$h;->profile_tv_org_name:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 815
    .local v34, "orgNameTv":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    sget v61, Lezg$h;->profile_tv_org_introduce:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 817
    .local v24, "infoTv":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDesc:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 818
    sget v61, Lezg$h;->label_list_layout:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    .line 819
    .restart local v28    # "labelLayout":Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mLabelsList:Ljava/util/List;

    move-object/from16 v61, v0

    if-eqz v61, :cond_3d

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mLabelsList:Ljava/util/List;

    move-object/from16 v61, v0

    invoke-interface/range {v61 .. v61}, Ljava/util/List;->size()I

    move-result v61

    if-lez v61, :cond_3d

    .line 820
    const/16 v61, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    .line 821
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mLabelsList:Ljava/util/List;

    move-object/from16 v62, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v28

    move-object/from16 v2, v62

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;Ljava/util/List;)V

    .line 825
    :goto_26
    sget v61, Lezg$h;->profile_iv_org_logo:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    .line 826
    .local v7, "avatarImageView":Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;
    sget v61, Lezg$h;->profile_v_certificate_level:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;

    .line 827
    .local v20, "enterpriseCertificationLevelView":Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHidden:Z

    move/from16 v61, v0

    if-eqz v61, :cond_3e

    .line 828
    const/16 v61, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->setVisibility(I)V

    .line 833
    :goto_27
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mMediaId:Ljava/lang/String;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v61

    if-nez v61, :cond_3f

    .line 834
    const/16 v61, 0x0

    move/from16 v0, v61

    invoke-virtual {v7, v0}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setVisibility(I)V

    .line 836
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mMediaId:Ljava/lang/String;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 837
    .restart local v49    # "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v61, v0

    if-nez v61, :cond_3c

    .line 838
    const-string/jumbo v61, "IMAGE"

    invoke-static/range {v61 .. v61}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 840
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v61, v0

    const/16 v62, 0x0

    move-object/from16 v0, v61

    move-object/from16 v1, v49

    move-object/from16 v2, v62

    invoke-interface {v0, v7, v1, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V
    :try_end_2
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 848
    .end local v49    # "url":Ljava/lang/String;
    :goto_28
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 823
    .end local v7    # "avatarImageView":Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;
    .end local v20    # "enterpriseCertificationLevelView":Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;
    :cond_3d
    const/16 v61, 0x8

    move-object/from16 v0, v28

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    goto/16 :goto_26

    .line 830
    .restart local v7    # "avatarImageView":Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;
    .restart local v20    # "enterpriseCertificationLevelView":Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;
    :cond_3e
    const/16 v61, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->setVisibility(I)V

    .line 831
    const/16 v61, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->setLevelNone(Z)V

    goto :goto_27

    .line 841
    :catch_2
    move-exception v17

    .line 842
    .restart local v17    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual/range {v17 .. v17}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_28

    .line 845
    .end local v17    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_3f
    const/16 v61, 0x8

    move/from16 v0, v61

    invoke-virtual {v7, v0}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setVisibility(I)V

    goto :goto_28

    .line 852
    .end local v7    # "avatarImageView":Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;
    .end local v20    # "enterpriseCertificationLevelView":Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;
    .end local v24    # "infoTv":Landroid/widget/TextView;
    .end local v26    # "itemContainer":Landroid/view/View;
    .end local v28    # "labelLayout":Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;
    .end local v34    # "orgNameTv":Landroid/widget/TextView;
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v61

    sget v62, Lezg$j;->item_user_profile_sub_tv_cell:I

    const/16 v63, 0x0

    move-object/from16 v0, v61

    move/from16 v1, v62

    move-object/from16 v2, p2

    move/from16 v3, v63

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v26

    .line 853
    .restart local v26    # "itemContainer":Landroid/view/View;
    sget v61, Lezg$h;->item_user_profile_cell_title_tv:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v48

    check-cast v48, Landroid/widget/TextView;

    .line 854
    .local v48, "tvTitle":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 859
    .end local v26    # "itemContainer":Landroid/view/View;
    .end local v48    # "tvTitle":Landroid/widget/TextView;
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v61

    sget v62, Lezg$j;->item_user_profile_org_service_cell:I

    const/16 v63, 0x0

    move-object/from16 v0, v61

    move/from16 v1, v62

    move-object/from16 v2, p2

    move/from16 v3, v63

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v26

    .line 860
    .restart local v26    # "itemContainer":Landroid/view/View;
    sget v61, Lezg$h;->profile_tv_org_name:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v46

    check-cast v46, Landroid/widget/TextView;

    .line 861
    .local v46, "tvName":Landroid/widget/TextView;
    sget v61, Lezg$h;->profile_tv_org_introduce:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/TextView;

    .line 862
    .local v43, "tvIntroduce":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDesc:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    sget v61, Lezg$h;->profile_rl_content:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 866
    .local v13, "content":Landroid/view/View;
    sget v61, Lezg$h;->user_info_divider:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    .line 867
    .local v42, "topDivider":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 868
    .restart local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHidden:Z

    move/from16 v61, v0

    if-eqz v61, :cond_42

    .line 869
    const/16 v61, 0x8

    move-object/from16 v0, v42

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 873
    :goto_29
    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 875
    sget v61, Lezg$h;->profile_iv_org_logo:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 877
    .local v23, "iconView":Landroid/widget/ImageView;
    :try_start_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mMediaId:Ljava/lang/String;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 878
    .restart local v49    # "url":Ljava/lang/String;
    invoke-static/range {v49 .. v49}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v61

    if-nez v61, :cond_41

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v61, v0

    if-nez v61, :cond_40

    .line 880
    const-string/jumbo v61, "IMAGE"

    invoke-static/range {v61 .. v61}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 882
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v61, v0

    const/16 v62, 0x0

    move-object/from16 v0, v61

    move-object/from16 v1, v23

    move-object/from16 v2, v49

    move-object/from16 v3, v62

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 888
    .end local v49    # "url":Ljava/lang/String;
    :cond_41
    :goto_2a
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 871
    .end local v23    # "iconView":Landroid/widget/ImageView;
    :cond_42
    const/16 v61, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_29

    .line 885
    .restart local v23    # "iconView":Landroid/widget/ImageView;
    :catch_3
    move-exception v17

    .line 886
    .local v17, "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a

    .line 892
    .end local v13    # "content":Landroid/view/View;
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v23    # "iconView":Landroid/widget/ImageView;
    .end local v26    # "itemContainer":Landroid/view/View;
    .end local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v42    # "topDivider":Landroid/view/View;
    .end local v43    # "tvIntroduce":Landroid/widget/TextView;
    .end local v46    # "tvName":Landroid/widget/TextView;
    :pswitch_12
    move-object/from16 v0, p1

    iget v14, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mResId:I

    .line 893
    .local v14, "contentId":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mExtResId:I

    move/from16 v21, v0

    .line 894
    .local v21, "extResId":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v61

    sget v62, Lezg$j;->item_profile_empty_view:I

    const/16 v63, 0x0

    invoke-virtual/range {v61 .. v63}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 895
    .restart local v26    # "itemContainer":Landroid/view/View;
    sget v61, Lezg$h;->empty_view:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 896
    .local v18, "emptyView":Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;
    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 897
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 898
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    const/high16 v62, 0x42400000    # 48.0f

    invoke-static/range {v61 .. v62}, Lcms;->c(Landroid/content/Context;F)I

    move-result v61

    move-object/from16 v0, v18

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconViewSize(I)V

    .line 899
    if-eqz p2, :cond_1

    .line 900
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 901
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Lcid;->c()Landroid/app/Application;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v61

    sget v62, Lezg$e;->bg_page_gray:I

    invoke-virtual/range {v61 .. v62}, Landroid/content/res/Resources;->getColor(I)I

    move-result v61

    move-object/from16 v0, p2

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 907
    .end local v14    # "contentId":I
    .end local v18    # "emptyView":Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;
    .end local v21    # "extResId":I
    .end local v26    # "itemContainer":Landroid/view/View;
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v61

    sget v62, Lezg$j;->item_user_profile_description_cell:I

    const/16 v63, 0x0

    move-object/from16 v0, v61

    move/from16 v1, v62

    move-object/from16 v2, p2

    move/from16 v3, v63

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v26

    .line 909
    .restart local v26    # "itemContainer":Landroid/view/View;
    sget v61, Lezg$h;->cell_title:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v48

    check-cast v48, Landroid/widget/TextView;

    .line 910
    .restart local v48    # "tvTitle":Landroid/widget/TextView;
    sget v61, Lezg$h;->cell_subTitle:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/TextView;

    .line 911
    .local v47, "tvSubTitle":Landroid/widget/TextView;
    sget v61, Lezg$h;->cell_right_content_image:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    .line 912
    .local v27, "ivPic":Landroid/widget/ImageView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v61

    invoke-static {v0, v1}, Lful;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 913
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    invoke-static {v0, v1}, Lful;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 914
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDesc:Ljava/lang/String;

    move-object/from16 v49, v0

    .line 915
    .restart local v49    # "url":Ljava/lang/String;
    invoke-static/range {v49 .. v49}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v61

    if-nez v61, :cond_44

    .line 916
    const/16 v61, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v61, v0

    if-nez v61, :cond_43

    .line 918
    const-string/jumbo v61, "IMAGE"

    invoke-static/range {v61 .. v61}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 920
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v61, v0

    const/16 v62, 0x0

    move-object/from16 v0, v61

    move-object/from16 v1, v27

    move-object/from16 v2, v49

    move-object/from16 v3, v62

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 924
    :goto_2b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    if-eqz v61, :cond_45

    .line 925
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v61, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 929
    :goto_2c
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 922
    :cond_44
    const/16 v61, 0x8

    move-object/from16 v0, v27

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2b

    .line 927
    :cond_45
    new-instance v61, Lfvi;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lfvi;-><init>(Landroid/content/Context;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2c

    .line 934
    .end local v26    # "itemContainer":Landroid/view/View;
    .end local v27    # "ivPic":Landroid/widget/ImageView;
    .end local v47    # "tvSubTitle":Landroid/widget/TextView;
    .end local v48    # "tvTitle":Landroid/widget/TextView;
    .end local v49    # "url":Ljava/lang/String;
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v61

    sget v62, Lezg$j;->item_user_profile_tv_cell:I

    const/16 v63, 0x0

    invoke-virtual/range {v61 .. v63}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 935
    .restart local v26    # "itemContainer":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v61

    sget v62, Lezg$e;->pure_white:I

    invoke-virtual/range {v61 .. v62}, Landroid/content/res/Resources;->getColor(I)I

    move-result v61

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 936
    sget v61, Lezg$h;->item_user_profile_cell_title_tv:I

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 937
    .restart local v36    # "orgTv":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 355
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
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method private h()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 276
    return-void
.end method

.method private i()V
    .locals 18

    .prologue
    .line 279
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->b:Landroid/widget/LinearLayout;

    if-nez v13, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-static/range {p0 .. p0}, Lcms;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 290
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 292
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->d:Ljava/util/List;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->d:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 298
    new-instance v3, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v3, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 299
    .local v3, "headerView":Landroid/view/View;
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    const/4 v14, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v15

    const/high16 v16, 0x41880000    # 17.0f

    invoke-static/range {v15 .. v16}, Lcms;->c(Landroid/content/Context;F)I

    move-result v15

    invoke-direct {v13, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lezg$e;->bg_page_gray:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v3, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 301
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 310
    const/4 v8, 0x0

    .line 311
    .local v8, "mLastLayout":Landroid/widget/LinearLayout;
    const-wide/16 v6, -0x1

    .line 313
    .local v6, "lastOrgId":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->d:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    .line 315
    .local v11, "size":I
    new-instance v10, Lfp;

    invoke-direct {v10}, Lfp;-><init>()V

    .line 316
    .local v10, "orgLayoutArray":Lfp;, "Lfp<Landroid/widget/LinearLayout;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v11, :cond_5

    .line 317
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->d:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    .line 318
    .local v12, "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    if-eqz v12, :cond_3

    .line 322
    iget-boolean v13, v12, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->needWaterMarkBg:Z

    if-eqz v13, :cond_4

    iget-wide v14, v12, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_4

    .line 323
    iget-wide v14, v12, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    cmp-long v13, v14, v6

    if-eqz v13, :cond_2

    .line 324
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v9, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 325
    .local v9, "mSubLayout":Landroid/widget/LinearLayout;
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 326
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v5, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 327
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget-wide v6, v12, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    .line 330
    move-object v8, v9

    .line 331
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 332
    invoke-virtual {v10, v6, v7, v8}, Lfp;->b(JLjava/lang/Object;)V

    .line 334
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "mSubLayout":Landroid/widget/LinearLayout;
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8, v4, v11}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->a(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;Landroid/widget/LinearLayout;II)V

    .line 316
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 336
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->b:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v4, v11}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->a(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;Landroid/widget/LinearLayout;II)V

    goto :goto_2

    .line 340
    .end local v12    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    :cond_5
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v10}, Lfp;->a()I

    move-result v13

    if-ge v4, v13, :cond_6

    .line 341
    invoke-virtual {v10, v4}, Lfp;->b(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-virtual {v10, v4}, Lfp;->a(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->a(Landroid/view/View;J)V

    .line 340
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 344
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->a:Z

    if-eqz v13, :cond_0

    .line 345
    new-instance v2, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v2, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 346
    .local v2, "emptyView":Landroid/view/View;
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    const/4 v14, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v15

    const/high16 v16, 0x42b40000    # 90.0f

    invoke-static/range {v15 .. v16}, Lcms;->c(Landroid/content/Context;F)I

    move-result v15

    invoke-direct {v13, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
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
    .line 152
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->d:Ljava/util/List;

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->h()V

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->b:Landroid/widget/LinearLayout;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->bg_page_gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 157
    :cond_0
    return-void
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
    .line 179
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    invoke-virtual {p0, p1, p3, p4}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->a(Ljava/util/List;J)V

    .line 180
    return-void
.end method

.method public final a(Ljava/util/List;J)V
    .locals 1
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
    .line 161
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->d:Ljava/util/List;

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->h()V

    .line 166
    :cond_0
    return-void
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
    .line 145
    .local p1, "orgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "orgInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->a(Ljava/util/List;)V

    .line 148
    :cond_0
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
    .line 184
    .local p1, "orgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->f:Ljava/util/Map;

    .line 185
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->h()V

    .line 243
    return-void
.end method

.method public final d()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 247
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    .line 249
    .local v0, "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->showDingCardGuideTip:Z

    if-eqz v2, :cond_0

    .line 250
    const/4 v1, 0x1

    .line 254
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
    .line 259
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->d:Ljava/util/List;

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
    .line 264
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->d:Ljava/util/List;

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
    .line 121
    .line 1140
    sget v0, Lezg$j;->fragment_business_user_info:I

    .line 121
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->c:Landroid/widget/LinearLayout;

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->c:Landroid/widget/LinearLayout;

    sget v1, Lezg$h;->user_info_fragment_container:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->b:Landroid/widget/LinearLayout;

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->c:Landroid/widget/LinearLayout;

    sget v1, Lezg$h;->scroll_view:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 124
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->i()V

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    if-nez v0, :cond_0

    .line 126
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 134
    invoke-super {p0}, Lcom/alibaba/android/user/profile/v2/BaseUserInfoSectionFragment;->onDestroyView()V

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Lcom/alibaba/android/user/profile/v2/BaseUserInfoSectionFragment;->onPause()V

    .line 117
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Lcom/alibaba/android/user/profile/v2/BaseUserInfoSectionFragment;->onResume()V

    .line 112
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 140
    sget v0, Lezg$j;->fragment_business_user_info:I

    return v0
.end method
