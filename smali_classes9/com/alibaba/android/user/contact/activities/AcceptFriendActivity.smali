.class public Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;
.super Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;
.source "AcceptFriendActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lffz$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity",
        "<",
        "Lfga;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lffz$b;"
    }
.end annotation


# instance fields
.field private b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ToggleButton;

.field private f:Landroid/widget/ToggleButton;

.field private g:Landroid/widget/Button;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/content/BroadcastReceiver;

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->h:J

    return-wide v0
.end method

.method private i()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const v8, 0x3f4ccccd    # 0.8f

    const/16 v7, 0x12

    const/4 v6, 0x0

    .line 230
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->c:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->i:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 232
    new-instance v2, Landroid/text/SpannableString;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->i:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 233
    .local v2, "spannableString":Landroid/text/SpannableString;
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    sget v4, Lezg$e;->title_color:I

    invoke-static {p0, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 234
    .local v0, "foregroundColorSpan":Landroid/text/style/ForegroundColorSpan;
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 235
    .local v3, "styleSpan":Landroid/text/style/StyleSpan;
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->i:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v0, v6, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 236
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->i:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 237
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 239
    .end local v0    # "foregroundColorSpan":Landroid/text/style/ForegroundColorSpan;
    .end local v2    # "spannableString":Landroid/text/SpannableString;
    .end local v3    # "styleSpan":Landroid/text/style/StyleSpan;
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->l:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 240
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 241
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->c:Landroid/widget/TextView;

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 243
    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->l:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 244
    .restart local v2    # "spannableString":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v1, v8}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 245
    .local v1, "sizeSpan":Landroid/text/style/RelativeSizeSpan;
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->l:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v1, v6, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 246
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 248
    .end local v1    # "sizeSpan":Landroid/text/style/RelativeSizeSpan;
    .end local v2    # "spannableString":Landroid/text/SpannableString;
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->m:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 249
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 250
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->c:Landroid/widget/TextView;

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 252
    :cond_3
    new-instance v2, Landroid/text/SpannableString;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->m:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 253
    .restart local v2    # "spannableString":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v1, v8}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 254
    .restart local v1    # "sizeSpan":Landroid/text/style/RelativeSizeSpan;
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->m:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v1, v6, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 255
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 257
    .end local v1    # "sizeSpan":Landroid/text/style/RelativeSizeSpan;
    .end local v2    # "spannableString":Landroid/text/SpannableString;
    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;)V
    .locals 1
    .param p1, "friendObject"    # Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 386
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->alias:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->i:Ljava/lang/String;

    .line 362
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_4

    .line 363
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->i:Ljava/lang/String;

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->i:Ljava/lang/String;

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 370
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->realName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->i:Ljava/lang/String;

    .line 372
    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->jobPosition:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->m:Ljava/lang/String;

    .line 375
    :cond_4
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 376
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->m:Ljava/lang/String;

    .line 379
    :cond_5
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-eqz v0, :cond_6

    .line 380
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->l:Ljava/lang/String;

    .line 382
    :cond_6
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->tags:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->p:Ljava/util/List;

    .line 383
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->remark:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->k:Ljava/lang/String;

    .line 385
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->i()V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;)V
    .locals 2
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 331
    if-nez p1, :cond_0

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->e:Landroid/widget/ToggleButton;

    iget-boolean v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;->isShowMobile:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 335
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->f:Landroid/widget/ToggleButton;

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;->isHide:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 334
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 85
    sget v0, Lezg$j;->activity_accept_friend:I

    return v0
.end method

.method protected final d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 90
    .line 1096
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1097
    if-eqz v1, :cond_6

    const-string/jumbo v0, "intent_key_new_request"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1098
    const-string/jumbo v0, "intent_key_new_request"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 1099
    instance-of v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    if-eqz v2, :cond_0

    .line 1100
    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    if-eqz v0, :cond_4

    .line 1103
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->h:J

    .line 1104
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_1

    .line 1105
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->j:Ljava/lang/String;

    .line 1106
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->jobPosition:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->m:Ljava/lang/String;

    .line 1108
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-eqz v0, :cond_3

    .line 1109
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->m:Ljava/lang/String;

    .line 1112
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->l:Ljava/lang/String;

    .line 1114
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->remark:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->k:Ljava/lang/String;

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->n:I

    .line 1117
    :cond_4
    const-string/jumbo v0, "user_name"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->i:Ljava/lang/String;

    .line 1118
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1119
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->i:Ljava/lang/String;

    .line 1122
    :cond_5
    const-string/jumbo v0, "intent_key_auto_accept"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->r:Z

    .line 1127
    :cond_6
    sget v0, Lezg$h;->accept_friend_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1128
    sget v0, Lezg$h;->accept_friend_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->c:Landroid/widget/TextView;

    .line 1129
    sget v0, Lezg$h;->accept_friend_profile:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1130
    sget v1, Lezg$h;->tv_friend_confirm_message:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->d:Landroid/widget/TextView;

    .line 1131
    sget v1, Lezg$h;->accept_friend_remark:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1132
    sget v2, Lezg$h;->btn_toggle_cannot_see_phone:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->e:Landroid/widget/ToggleButton;

    .line 1133
    sget v2, Lezg$h;->btn_toggle_cannot_see_connection:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->f:Landroid/widget/ToggleButton;

    .line 1156
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->e:Landroid/widget/ToggleButton;

    const-string/jumbo v3, "pre_key_see_phone_status"

    invoke-static {v3, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1157
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->f:Landroid/widget/ToggleButton;

    const-string/jumbo v3, "pre_key_see_connection_status"

    invoke-static {v3, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1135
    sget v2, Lezg$h;->btn_next:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->g:Landroid/widget/Button;

    .line 1137
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1138
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->j()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1139
    invoke-static {v1, v5}, Lfxp;->a(Landroid/view/View;I)V

    .line 1140
    sget v0, Lezg$h;->rl_connection_visible:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v5}, Lfxp;->a(Landroid/view/View;I)V

    .line 1146
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1147
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->f:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1148
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1150
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->r:Z

    if-eqz v0, :cond_7

    .line 1151
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->g:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->onClick(Landroid/view/View;)V

    .line 1197
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1199
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->i()V

    .line 1200
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->n:I

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->ACCEPTED:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 1202
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->a:Lclj;

    check-cast v0, Lfga;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->h:J

    invoke-virtual {v0, v2, v3}, Lfga;->c(J)V

    .line 1203
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->g:Landroid/widget/Button;

    sget v1, Lezg$l;->dt_contact_business_send_message:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1204
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->a:Lclj;

    check-cast v0, Lfga;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->h:J

    invoke-virtual {v0, v2, v3}, Lfga;->b(J)V

    .line 1207
    :cond_8
    new-instance v0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->q:Landroid/content/BroadcastReceiver;

    .line 1225
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "SET_FRIEND_NOTE_AND_LABEL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1226
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 93
    return-void

    .line 1142
    :cond_9
    invoke-static {v1, v4}, Lfxp;->a(Landroid/view/View;I)V

    .line 1143
    sget v0, Lezg$h;->rl_connection_visible:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v5}, Lfxp;->a(Landroid/view/View;I)V

    .line 1144
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->g:Landroid/widget/Button;

    sget v1, Lezg$l;->dt_contact_business_send_message:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 326
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->ACCEPTED:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->n:I

    .line 327
    return-void
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 340
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->e:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 341
    const-string/jumbo v0, "pre_key_see_phone_status"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 342
    return-void

    .line 340
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 346
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->f:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->f:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 347
    const-string/jumbo v0, "pre_key_see_connection_status"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->f:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 348
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    .line 263
    .local v8, "id":I
    sget v0, Lezg$h;->btn_toggle_cannot_see_phone:I

    if-ne v8, v0, :cond_3

    .line 264
    const-string/jumbo v0, "pre_key_see_phone_status"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 266
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->n:I

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->ACCEPTED:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 267
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->a:Lclj;

    check-cast v0, Lfga;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->h:J

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 1228
    :goto_0
    iget-object v4, v0, Lfga;->b:Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    if-nez v4, :cond_0

    .line 1229
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;-><init>()V

    iput-object v4, v0, Lfga;->b:Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    .line 1231
    :cond_0
    iget-object v4, v0, Lfga;->b:Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    iput-boolean v1, v4, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;->isShowMobile:Z

    .line 1233
    iget-object v1, v0, Lfga;->b:Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lfga;->a(JLcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;I)V

    .line 320
    :cond_1
    :goto_1
    return-void

    .line 267
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 269
    :cond_3
    sget v0, Lezg$h;->btn_toggle_cannot_see_connection:I

    if-ne v8, v0, :cond_5

    .line 271
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->a:Lclj;

    check-cast v0, Lfga;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->h:J

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->f:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    .line 1238
    iget-object v4, v0, Lfga;->b:Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    if-nez v4, :cond_4

    .line 1239
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;-><init>()V

    iput-object v4, v0, Lfga;->b:Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    .line 1241
    :cond_4
    iget-object v4, v0, Lfga;->b:Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    iput-boolean v1, v4, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;->isHide:Z

    .line 1243
    iget-object v1, v0, Lfga;->b:Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Lfga;->a(JLcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;I)V

    .line 272
    const-string/jumbo v0, "pre_key_see_connection_status"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->f:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    goto :goto_1

    .line 273
    :cond_5
    sget v0, Lezg$h;->btn_next:I

    if-ne v8, v0, :cond_a

    .line 275
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->n:I

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->ACCEPTED:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 277
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->a:Lclj;

    move-object v2, v0

    check-cast v2, Lfga;

    iget-wide v10, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->h:J

    .line 2049
    invoke-static {v10, v11}, Lfga;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2052
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lfga$1;

    invoke-direct {v1, v2}, Lfga$1;-><init>(Lfga;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Long;

    const/4 v12, 0x0

    .line 2078
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v6, v12

    .line 2052
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    goto :goto_1

    .line 280
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    if-eqz v0, :cond_9

    .line 281
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 282
    new-instance v7, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;-><init>()V

    .line 283
    .local v7, "object":Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->f:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    iput-boolean v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;->isHide:Z

    .line 284
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;->isShowMobile:Z

    .line 285
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->k:Ljava/lang/String;

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;->remark:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->i:Ljava/lang/String;

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;->alias:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->p:Ljava/util/List;

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;->tags:Ljava/util/List;

    .line 288
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->a:Lclj;

    check-cast v1, Lfga;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->h:J

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-boolean v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->showMobile:Z

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lfga;->a(JLcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;ZZLcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;)V

    goto/16 :goto_1

    .line 284
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 290
    .end local v7    # "object":Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->a:Lclj;

    check-cast v0, Lfga;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->h:J

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-boolean v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->showMobile:Z

    invoke-virtual {v0, v2, v3, v1, v4}, Lfga;->a(JLcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)V

    goto/16 :goto_1

    .line 294
    :cond_9
    const-string/jumbo v0, "mNewRequestObject null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 298
    :cond_a
    sget v0, Lezg$h;->accept_friend_profile:I

    if-ne v8, v0, :cond_b

    .line 300
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    .line 301
    invoke-static {}, Lflz;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;)V

    .line 300
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_1

    .line 309
    :cond_b
    sget v0, Lezg$h;->accept_friend_remark:I

    if-ne v8, v0, :cond_1

    .line 310
    const-string/jumbo v3, "tags=%s&alias=%s&remark=%s&type=%s&picUrl=%s&exchangeDate=%s&uid=%s"

    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->p:Ljava/util/List;

    if-nez v0, :cond_d

    const-string/jumbo v0, ""

    .line 311
    :cond_c
    :goto_3
    aput-object v0, v4, v5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->i:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->k:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "SINGLE"

    aput-object v1, v4, v0

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->a:Lclj;

    check-cast v0, Lfga;

    .line 3337
    iget-object v2, v0, Lfga;->c:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    if-eqz v2, :cond_10

    .line 3338
    iget-object v0, v0, Lfga;->c:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->picUrl:Ljava/lang/String;

    .line 315
    :goto_4
    aput-object v0, v4, v1

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->a:Lclj;

    check-cast v0, Lfga;

    .line 3344
    iget-object v1, v0, Lfga;->c:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    if-eqz v1, :cond_11

    .line 3345
    iget-object v0, v0, Lfga;->c:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->gmtCreate:J

    .line 316
    :goto_5
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const/4 v0, 0x6

    iget-wide v10, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->h:J

    .line 317
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    .line 310
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 318
    .local v9, "queryParams":Ljava/lang/String;
    const-string/jumbo v0, "pages/notelabel/notelabel"

    invoke-static {p0, v9, v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 310
    .end local v9    # "queryParams":Ljava/lang/String;
    :cond_d
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->p:Ljava/util/List;

    .line 2400
    if-eqz v6, :cond_e

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2401
    :cond_e
    const-string/jumbo v0, ""

    goto :goto_3

    .line 2403
    :cond_f
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2404
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    .line 2405
    const/4 v1, 0x1

    if-le v10, v1, :cond_c

    .line 2406
    const/4 v1, 0x1

    move v2, v1

    move-object v1, v0

    :goto_6
    if-ge v2, v10, :cond_12

    .line 2407
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2408
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v1, 0x1

    const-string/jumbo v12, ","

    aput-object v12, v11, v1

    const/4 v1, 0x2

    aput-object v0, v11, v1

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2406
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 3340
    :cond_10
    const/4 v0, 0x0

    goto :goto_4

    .line 3347
    :cond_11
    const-wide/16 v0, 0x0

    goto :goto_5

    :cond_12
    move-object v0, v1

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 390
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;->onDestroy()V

    .line 391
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->q:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 392
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 394
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 163
    sget v1, Lezg$l;->concern_setting_success:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 164
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "SET_FRIEND_NOTE_AND_LABEL"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    const-string/jumbo v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "data":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 168
    invoke-static {v7}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 169
    .local v11, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v11, :cond_3

    .line 170
    const-string/jumbo v1, "remark"

    invoke-virtual {v11, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->k:Ljava/lang/String;

    .line 171
    const-string/jumbo v1, "alias"

    invoke-virtual {v11, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->i:Ljava/lang/String;

    .line 173
    const-string/jumbo v1, "tags"

    invoke-virtual {v11, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v10

    .line 174
    .local v10, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 175
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v12, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_1

    .line 177
    invoke-virtual {v10, v8}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 178
    .local v9, "item":Ljava/lang/Object;
    instance-of v1, v9, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 179
    check-cast v9, Ljava/lang/String;

    .end local v9    # "item":Ljava/lang/Object;
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 182
    :cond_1
    iput-object v12, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->p:Ljava/util/List;

    .line 186
    .end local v8    # "i":I
    .end local v12    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->n:I

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->ACCEPTED:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 187
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->a:Lclj;

    check-cast v1, Lfga;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->h:J

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->k:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->p:Ljava/util/List;

    invoke-virtual/range {v1 .. v6}, Lfga;->a(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 193
    .end local v7    # "data":Ljava/lang/String;
    .end local v10    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v11    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    return-void
.end method
