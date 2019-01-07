.class public Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "PersonStatusSettingActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;Ljava/util/List;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v1, 0x0

    .line 56
    .line 3270
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 3271
    :cond_0
    return-void

    .line 3273
    :cond_1
    sget v0, Lezg$h;->default_items_des:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3274
    sget v0, Lezg$h;->default_items_container_top:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3275
    sget v0, Lezg$h;->default_items_container_bottom:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3276
    sget v0, Lezg$h;->default_items_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3277
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move v3, v1

    .line 3278
    :goto_0
    if-ge v3, v4, :cond_0

    .line 3279
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcfl;

    .line 3280
    if-eqz v1, :cond_4

    .line 3283
    sget v2, Lezg$j;->activity_person_status_setting_default_item:I

    const/4 v5, 0x0

    invoke-static {p0, v2, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 3285
    iget-object v2, v1, Lcfl;->a:Ljava/lang/String;

    invoke-static {v2}, Lcsy;->a(Ljava/lang/String;)I

    move-result v6

    .line 3286
    if-lez v6, :cond_2

    .line 3287
    sget v2, Lezg$h;->item_icon:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3289
    :cond_2
    sget v2, Lezg$h;->item_text:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v6, v1, Lcfl;->b:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3290
    add-int/lit8 v2, v4, -0x1

    if-ne v3, v2, :cond_3

    .line 3291
    sget v2, Lezg$h;->inner_divider:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3293
    :cond_3
    new-instance v2, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$2;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$2;-><init>(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;Lcfl;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3299
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3278
    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "icon"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "anim"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->a:Ljava/lang/String;

    .line 177
    iget-object v2, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->a:Ljava/lang/String;

    invoke-static {v2}, Lcsy;->a(Ljava/lang/String;)I

    move-result v1

    .line 178
    .local v1, "resId":I
    if-lez v1, :cond_1

    .line 179
    iget-object v2, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    if-eqz p3, :cond_0

    .line 181
    sget v2, Lezg$a;->emoji_set_in:I

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 182
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 187
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v2, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v2, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->c:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 189
    invoke-direct {p0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->b()V

    .line 190
    return-void

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->d:Landroid/widget/ImageView;

    sget v3, Lezg$g;->emoji_select_empty:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->b:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->supportInvalidateOptionsMenu()V

    .line 144
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;

    .prologue
    .line 56
    .line 3169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->a:Ljava/lang/String;

    .line 3170
    iget-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->d:Landroid/widget/ImageView;

    sget v1, Lezg$g;->emoji_select_empty:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3171
    iget-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->c:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3172
    invoke-direct {p0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->b()V

    .line 56
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;Ljava/util/List;)V
    .locals 13
    .param p0, "x0"    # Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 56
    .line 3330
    sget v0, Lezg$h;->sw_items_des:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3331
    invoke-static {}, Lcms;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3332
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lezg$l;->guide_more:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3333
    new-instance v2, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$5;-><init>(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;)V

    .line 3339
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    .line 3333
    invoke-virtual {v1, v2, v6, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3340
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 3342
    :cond_0
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 3343
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3344
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 3345
    :cond_1
    return-void

    .line 3347
    :cond_2
    sget v0, Lezg$h;->sw_items_container_top:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3348
    sget v0, Lezg$h;->sw_items_container_bottom:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3349
    sget v0, Lezg$h;->sw_items_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/ViewGroup;

    .line 3350
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    .line 3351
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    move v10, v6

    .line 3352
    :goto_0
    if-ge v10, v11, :cond_1

    .line 3353
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lccv;

    .line 3354
    if-eqz v9, :cond_5

    .line 3357
    sget v1, Lezg$j;->activity_person_status_setting_sw_item:I

    invoke-static {p0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 3358
    sget v1, Lezg$h;->item_icon:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, v9, Lccv;->c:Ljava/lang/String;

    const/16 v4, 0x9

    const/4 v5, 0x1

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 3359
    iget-object v1, v9, Lccv;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3360
    sget v1, Lezg$h;->item_text:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v9, Lccv;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3362
    :cond_3
    add-int/lit8 v1, v11, -0x1

    if-ne v10, v1, :cond_4

    .line 3363
    sget v1, Lezg$h;->inner_divider:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3365
    :cond_4
    new-instance v1, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$6;

    invoke-direct {v1, p0, v9}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$6;-><init>(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;Lccv;)V

    invoke-virtual {v12, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3375
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3352
    :cond_5
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 115
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 116
    if-nez p1, :cond_0

    .line 117
    if-eqz p3, :cond_0

    .line 118
    const-string/jumbo v2, "emoji"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "emoji":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "status":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$9;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$9;-><init>(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    .end local v0    # "emoji":Ljava/lang/String;
    .end local v1    # "status":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/UserBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 135
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    sget v0, Lezg$j;->activity_person_status_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->setContentView(I)V

    .line 1076
    sget v0, Lezg$h;->edit_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->d:Landroid/widget/ImageView;

    .line 1077
    sget v0, Lezg$h;->edit_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->c:Landroid/widget/EditText;

    .line 1078
    sget v0, Lezg$h;->edit_clear:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->b:Landroid/view/View;

    .line 1079
    invoke-static {}, Lfuv;->a()Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;

    move-result-object v0

    .line 1080
    if-eqz v0, :cond_0

    .line 1081
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;->icon:Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;->status:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$1;-><init>(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1090
    iget-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$7;-><init>(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1104
    iget-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->b:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$8;-><init>(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1110
    invoke-direct {p0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->b()V

    .line 1249
    const-class v0, Lcom/alibaba/android/user/idl/services/UserIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/UserIService;

    .line 1250
    new-instance v2, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$14;

    new-instance v1, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$13;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$13;-><init>(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;)V

    const-class v3, Lcma;

    .line 1251
    invoke-static {v1, v3, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$14;-><init>(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;Lcma;)V

    .line 1250
    invoke-interface {v0, v2}, Lcom/alibaba/android/user/idl/services/UserIService;->getStaticOwnnessList(Liyv;)V

    .line 1304
    const-class v0, Lcom/alibaba/android/dingtalk/userbase/service/AFlowProcessIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/service/AFlowProcessIService;

    .line 1305
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 1306
    if-eqz v1, :cond_1

    .line 1307
    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 1308
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const-wide/16 v4, 0x5209

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 1309
    new-instance v4, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$4;

    new-instance v1, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$3;-><init>(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;)V

    const-class v5, Lcma;

    invoke-static {v1, v5, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$4;-><init>(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;Lcma;)V

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/android/dingtalk/userbase/service/AFlowProcessIService;->getExtProcessesRelatedToAttendance(JLiyv;)V

    .line 73
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    sget v1, Lezg$l;->save:I

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 149
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 150
    iget-object v1, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 155
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 153
    :cond_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 2193
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->showLoadingDialog()V

    .line 2194
    iget-object v1, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$10;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$10;-><init>(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 2216
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2217
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ac

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    move-object v2, v1

    .line 2219
    :goto_1
    const-class v1, Lcom/alibaba/android/user/idl/services/UserIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/UserIService;

    .line 2220
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, v3

    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_2
    new-instance v4, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$12;

    new-instance v5, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$11;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$11;-><init>(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;Lcom/alibaba/wukong/Callback;)V

    invoke-direct {v4, p0, v5}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$12;-><init>(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;Lcma;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/android/user/idl/services/UserIService;->updateOwnness(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0

    :cond_1
    move-object v3, v4

    goto :goto_2

    :cond_2
    move-object v2, v1

    goto :goto_1

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
