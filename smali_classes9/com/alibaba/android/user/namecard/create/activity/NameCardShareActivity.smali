.class public Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "NameCardShareActivity.java"

# interfaces
.implements Lfta$a;


# instance fields
.field private a:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

.field private b:Lcom/alibaba/android/user/namecard/widget/CircleIndicator;

.field private c:Lfum;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lftg;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->h:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->g:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->g:I

    return v0
.end method

.method private b(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)Landroid/view/View;
    .locals 12
    .param p1, "bean"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x6

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 144
    if-nez p1, :cond_0

    move-object v5, v6

    .line 176
    :goto_0
    return-object v5

    .line 147
    :cond_0
    iget-object v7, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-eqz v7, :cond_1

    iget-object v7, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardExtensionObject:Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    if-eqz v7, :cond_1

    .line 149
    iget-object v7, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardExtensionObject:Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    iget-boolean v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->initedCard:Z

    iput-boolean v7, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->j:Z

    .line 151
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lezg$j;->view_name_card_share_item:I

    iget-object v9, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->a:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 153
    .local v5, "view":Landroid/view/View;
    sget v7, Lezg$h;->name_card_item:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/namecard/widget/NameCardView;

    .line 154
    .local v2, "itemView":Lcom/alibaba/android/user/namecard/widget/NameCardView;
    invoke-virtual {v2, p1}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->setDataToView(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    .line 156
    sget v7, Lezg$h;->name_card_rl_qr:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    sget v7, Lezg$h;->iv_qrcode:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 158
    .local v3, "mImgQr":Landroid/widget/ImageView;
    sget v7, Lezg$h;->pb_org_qrcode:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2187
    .local v4, "mViewProgress":Landroid/view/View;
    iget-object v7, v2, Lcom/alibaba/android/user/namecard/widget/NameCardView;->c:Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;

    invoke-virtual {v7, v11}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->setCornerRadiusTopLeft(I)V

    .line 2188
    iget-object v7, v2, Lcom/alibaba/android/user/namecard/widget/NameCardView;->c:Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;

    invoke-virtual {v7, v11}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->setCornerRadiusTopRight(I)V

    .line 2189
    iget-object v7, v2, Lcom/alibaba/android/user/namecard/widget/NameCardView;->c:Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;

    invoke-virtual {v7, v10}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->setCornerRadiusBottomLeft(I)V

    .line 2190
    iget-object v7, v2, Lcom/alibaba/android/user/namecard/widget/NameCardView;->c:Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;

    invoke-virtual {v7, v10}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->setCornerRadiusBottomRight(I)V

    .line 2191
    iget-object v7, v2, Lcom/alibaba/android/user/namecard/widget/NameCardView;->c:Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;

    invoke-virtual {v7, v10}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->setBorderWidth(I)V

    .line 161
    sget v7, Lezg$h;->ding_icon:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 163
    .local v0, "dingTv":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    iget-object v7, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-eqz v7, :cond_2

    iget-object v7, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardDynamicObject:Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;

    if-eqz v7, :cond_2

    .line 166
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->i:Lftg;

    iget-object v7, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardDynamicObject:Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;->qrCode:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v4, v7, v8}, Lftg;->a(Landroid/widget/ImageView;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "getPage use qrColor exception and e = "

    aput-object v7, v6, v10

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 172
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v7, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->i:Lftg;

    invoke-virtual {v7, v3, v4, v6, v6}, Lftg;->a(Landroid/widget/ImageView;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;)Lftg;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->i:Lftg;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    sget v1, Lcig$j;->saving_image:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 192
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 9
    .param p1, "cardModel"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 207
    if-nez p1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v0, "cardModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 216
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 217
    .local v2, "model":Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;
    if-eqz v2, :cond_1

    .line 221
    invoke-direct {p0, v2}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->b(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)Landroid/view/View;

    move-result-object v3

    .line 222
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 223
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->h:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3073
    .end local v2    # "model":Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;
    :cond_2
    sget v4, Lezg$h;->card_viewpager:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    iput-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->a:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    .line 3074
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->a:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    invoke-virtual {v4}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->a()V

    .line 3075
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->a:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->setScrollDurationFactor(D)V

    .line 3076
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->a:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->setInterval(J)V

    .line 3077
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->a:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    invoke-virtual {v4, v8}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->setInterceptTouch(Z)V

    .line 3079
    sget v4, Lezg$h;->card_page_indicator:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;

    iput-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->b:Lcom/alibaba/android/user/namecard/widget/CircleIndicator;

    .line 3080
    new-instance v4, Lfum;

    iget-object v5, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->h:Ljava/util/List;

    invoke-direct {v4, v5}, Lfum;-><init>(Ljava/util/List;)V

    iput-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->c:Lfum;

    .line 3081
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->c:Lfum;

    iget-object v5, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 4075
    iput v5, v4, Lfum;->a:I

    .line 3082
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->a:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    iget-object v5, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->c:Lfum;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->setAdapter(Lgl;)V

    .line 3083
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->b:Lcom/alibaba/android/user/namecard/widget/CircleIndicator;

    iget-object v5, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->a:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 3085
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->a:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v8, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->setPageMargin(I)V

    .line 3087
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->a:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    new-instance v5, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$1;-><init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 3104
    sget v4, Lezg$h;->card_share_tv_save:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->e:Landroid/widget/TextView;

    .line 3105
    sget v4, Lezg$h;->card_share_tv_share:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->f:Landroid/widget/TextView;

    .line 3106
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->e:Landroid/widget/TextView;

    new-instance v5, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$2;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$2;-><init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3115
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->f:Landroid/widget/TextView;

    new-instance v5, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$3;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$3;-><init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 196
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget v0, Lezg$j;->activity_name_card_share:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->setContentView(I)V

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->dt_card_qr_code:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    new-instance v0, Lftg;

    invoke-direct {v0, p0}, Lftg;-><init>(Lfta$a;)V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->i:Lftg;

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->i:Lftg;

    .line 2047
    sget-object v1, Lfuj$b;->a:Lfuj;

    .line 1045
    const/4 v2, 0x1

    new-instance v3, Lftg$1;

    invoke-direct {v3, v0}, Lftg$1;-><init>(Lftg;)V

    invoke-virtual {v1, v2, v3}, Lfuj;->a(ZLfuj$a;)V

    .line 70
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 128
    const/4 v1, 0x1

    sget v2, Lezg$l;->dt_contacts_edit_name_card:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 129
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 130
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 136
    const-string/jumbo v0, "from=facetoface"

    iget-boolean v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->j:Z

    invoke-static {v0, p0, v1}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/lang/String;Landroid/app/Activity;Z)V

    .line 137
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->finish()V

    .line 139
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
