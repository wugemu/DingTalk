.class public Lfjq;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;
.source "LocalContactViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
        ">;"
    }
.end annotation


# instance fields
.field protected j:Landroid/widget/TextView;

.field protected k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field protected l:Landroid/widget/TextView;

.field protected m:Landroid/widget/TextView;

.field protected n:Landroid/widget/TextView;

.field protected o:Landroid/widget/TextView;

.field protected p:Landroid/widget/Button;

.field protected q:Landroid/view/View;

.field protected r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field protected s:Landroid/widget/TextView;

.field protected t:Landroid/view/View;

.field protected u:Landroid/widget/TextView;

.field protected v:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;-><init>(Landroid/app/Activity;)V

    .line 95
    return-void
.end method

.method static synthetic a(Lfjq;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfjq;

    .prologue
    .line 72
    iget-object v0, p0, Lfjq;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a(J)V
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 432
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfjq;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/sendfriendrequest"

    new-instance v2, Lfjq$6;

    invoke-direct {v2, p0, p1, p2}, Lfjq$6;-><init>(Lfjq;J)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 440
    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v0, p0, Lfjq;->a:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    return-void
.end method

.method static synthetic a(Lfjq;J)V
    .locals 1
    .param p0, "x0"    # Lfjq;
    .param p1, "x1"    # J

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lfjq;->a(J)V

    return-void
.end method

.method static synthetic a(Lfjq;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V
    .locals 5
    .param p0, "x0"    # Lfjq;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .prologue
    .line 72
    .line 7392
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 7393
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-direct {p0, v0, v1}, Lfjq;->a(J)V

    .line 7394
    :goto_0
    return-void

    .line 7397
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7398
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 7399
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 7400
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 7401
    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 7402
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7403
    new-instance v1, Lfjq$5;

    invoke-direct {v1, p0}, Lfjq$5;-><init>(Lfjq;)V

    .line 7425
    iget-object v0, p0, Lfjq;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 7426
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcma;

    iget-object v4, p0, Lfjq;->a:Landroid/app/Activity;

    invoke-interface {v0, v1, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 7428
    :goto_1
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lfac;->a(Ljava/util/List;ZLcma;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lfjq;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lfjq;

    .prologue
    .line 72
    iget-object v0, p0, Lfjq;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lfjq;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lfjq;

    .prologue
    .line 72
    iget-object v0, p0, Lfjq;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lfjq;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lfjq;

    .prologue
    .line 72
    iget-object v0, p0, Lfjq;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lfjq;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lfjq;

    .prologue
    .line 72
    iget-object v0, p0, Lfjq;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lfjq;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfjq;

    .prologue
    .line 72
    iget-object v0, p0, Lfjq;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lfjq;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfjq;

    .prologue
    .line 72
    iget-object v0, p0, Lfjq;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic h(Lfjq;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfjq;

    .prologue
    .line 72
    iget-object v0, p0, Lfjq;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic i(Lfjq;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lfjq;

    .prologue
    .line 72
    iget-object v0, p0, Lfjq;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method

.method static synthetic j(Lfjq;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lfjq;

    .prologue
    .line 72
    iget-object v0, p0, Lfjq;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 104
    sget v0, Lezg$h;->tv_letter:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfjq;->j:Landroid/widget/TextView;

    .line 105
    sget v0, Lezg$h;->tv_contact_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfjq;->l:Landroid/widget/TextView;

    .line 106
    sget v0, Lezg$h;->tv_ding_nick:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfjq;->u:Landroid/widget/TextView;

    .line 107
    sget v0, Lezg$h;->iv_dingtalk:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lfjq;->v:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 108
    sget v0, Lezg$h;->tv_contact_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfjq;->m:Landroid/widget/TextView;

    .line 109
    sget v0, Lezg$h;->tv_org_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfjq;->n:Landroid/widget/TextView;

    .line 110
    sget v0, Lezg$h;->divider_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfjq;->t:Landroid/view/View;

    .line 111
    sget v0, Lezg$h;->tv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lfjq;->k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 112
    sget v0, Lezg$h;->tv_friends:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfjq;->o:Landroid/widget/TextView;

    .line 113
    sget v0, Lezg$h;->btn_add_friends:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lfjq;->p:Landroid/widget/Button;

    .line 115
    sget v0, Lezg$h;->call_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfjq;->q:Landroid/view/View;

    .line 116
    sget v0, Lezg$h;->icon_call:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lfjq;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 117
    sget v0, Lezg$h;->icon_free:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfjq;->s:Landroid/widget/TextView;

    .line 118
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V
    .locals 6
    .param p1, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 267
    iget v2, p0, Lfjq;->b:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 268
    iget-object v2, p0, Lfjq;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-nez v2, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v2, p0, Lfjq;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v2, p1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->onSingleChoose(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    :cond_2
    iget v2, p0, Lfjq;->b:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 273
    iget-object v2, p0, Lfjq;->w:Ljava/lang/String;

    iput-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    .line 274
    iget-object v2, p0, Lfjq;->x:Ljava/lang/String;

    iput-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    .line 275
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 276
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v2, p0, Lfjq;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lfjq;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isDisable(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lfjq;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isRequestSelect(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 283
    iget-object v2, p0, Lfjq;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->onSingleChoose(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    iget v2, p0, Lfjq;->c:I

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->CALL_LOG:Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 287
    const/4 v1, 0x0

    .line 288
    .local v1, "userProfileObject":Lfrz;
    iget-object v2, p0, Lfjq;->d:Lfin;

    instance-of v2, v2, Lfjm;

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    .line 289
    iget-object v2, p0, Lfjq;->d:Lfin;

    check-cast v2, Lfjm;

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-virtual {v2, v4, v5}, Lfjm;->a(J)Lfrz;

    move-result-object v1

    .line 292
    :cond_4
    if-eqz v1, :cond_7

    .line 293
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 294
    .restart local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v2, v1, Lfrz;->a:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 295
    iget-object v2, v1, Lfrz;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 296
    iget-boolean v2, v1, Lfrz;->h:Z

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    .line 297
    iget-object v2, v1, Lfrz;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 298
    iget-object v2, v1, Lfrz;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 299
    iget-boolean v2, v1, Lfrz;->i:Z

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDingSimCard:Z

    .line 303
    :goto_1
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 304
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    if-eqz p1, :cond_6

    .line 306
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 308
    :cond_6
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v2

    iget-object v3, p0, Lfjq;->a:Landroid/app/Activity;

    sget-object v4, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->LOCAL_CONTACT:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v2, v3, v0, v4}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    .line 309
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "call_record_contact_start_call_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "call_record_contact_call_menu_list_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 301
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_7
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .restart local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    goto :goto_1

    .line 312
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v1    # "userProfileObject":Lfrz;
    :cond_8
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_9

    .line 313
    new-instance v2, Lfjl;

    iget-object v3, p0, Lfjq;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lfjl;-><init>(Landroid/app/Activity;)V

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-virtual {v2, v4, v5}, Lfjl;->a(J)V

    goto/16 :goto_0

    .line 315
    :cond_9
    new-instance v2, Lfjl;

    iget-object v3, p0, Lfjq;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lfjl;-><init>(Landroid/app/Activity;)V

    iget-object v3, p0, Lfjq;->w:Ljava/lang/String;

    iget-object v4, p0, Lfjq;->x:Ljava/lang/String;

    sget-object v5, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->LOCAL_CONTACT:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->ordinal()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lfjl;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public a(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;ILandroid/view/ViewGroup;)V
    .locals 16
    .param p1, "localContactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .param p2, "position"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 122
    const/4 v6, 0x0

    .line 123
    .local v6, "hasUidCount":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->d:Lfin;

    instance-of v11, v11, Lfjm;

    if-eqz v11, :cond_0

    .line 124
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->d:Lfin;

    check-cast v11, Lfjm;

    .line 5104
    iget v6, v11, Lfjm;->g:I

    .line 126
    :cond_0
    if-lez v6, :cond_7

    move/from16 v0, p2

    if-ge v0, v6, :cond_7

    .line 127
    if-nez p2, :cond_6

    .line 128
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->j:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->j:Landroid/widget/TextView;

    sget v12, Lezg$l;->have_used_ding:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 145
    :goto_0
    const/4 v2, 0x0

    .line 146
    .local v2, "avatarMediaId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 147
    .local v3, "dingNick":Ljava/lang/String;
    const/4 v5, 0x0

    .line 148
    .local v5, "friendProfileObject":Lfrz;
    const/4 v10, 0x0

    .line 149
    .local v10, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->d:Lfin;

    instance-of v11, v11, Lfjm;

    if-eqz v11, :cond_1

    .line 150
    move-object/from16 v0, p0

    iget-object v7, v0, Lfjq;->d:Lfin;

    check-cast v7, Lfjm;

    .line 151
    .local v7, "lAdapter":Lfjm;
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-virtual {v7, v12, v13}, Lfjm;->a(J)Lfrz;

    move-result-object v5

    .line 152
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    .line 6084
    iget-object v11, v7, Lfjm;->f:Ljava/util/HashMap;

    if-eqz v11, :cond_a

    .line 6085
    iget-object v11, v7, Lfjm;->f:Ljava/util/HashMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object v10, v11

    .line 155
    .end local v7    # "lAdapter":Lfjm;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Lfjq;->c:I

    sget-object v12, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->CALL_LOG:Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    invoke-virtual {v12}, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->getValue()I

    move-result v12

    if-ne v11, v12, :cond_c

    .line 156
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->o:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->p:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->q:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 160
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v11

    invoke-virtual {v11}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v9

    .line 161
    .local v9, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDingSimCard()Z

    move-result v11

    if-eqz v11, :cond_b

    if-eqz v5, :cond_b

    iget-boolean v11, v5, Lfrz;->i:Z

    if-eqz v11, :cond_b

    .line 163
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->s:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    .end local v9    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->n:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->m:Landroid/widget/TextView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 202
    if-eqz v5, :cond_2

    .line 203
    iget-object v2, v5, Lfrz;->b:Ljava/lang/String;

    .line 204
    iget-boolean v11, v5, Lfrz;->h:Z

    if-eqz v11, :cond_2

    .line 205
    iget-object v3, v5, Lfrz;->d:Ljava/lang/String;

    .line 209
    :cond_2
    if-eqz v10, :cond_4

    .line 210
    iget-boolean v11, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isFriend:Z

    if-nez v11, :cond_3

    .line 211
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .line 6512
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v12

    const-string/jumbo v13, "dt_fuc_is_workmate_show"

    .line 7083
    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v12

    .line 6512
    if-nez v12, :cond_12

    .line 6513
    const/4 v11, 0x0

    .line 211
    :goto_3
    if-nez v11, :cond_3

    iget-object v11, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->settings:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    if-eqz v11, :cond_4

    iget-object v11, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->settings:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    iget-boolean v11, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;->showOrgToAll:Z

    if-eqz v11, :cond_4

    .line 213
    :cond_3
    iget-object v11, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    if-eqz v11, :cond_4

    iget-object v11, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iget-object v11, v11, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 214
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->n:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->n:Landroid/widget/TextView;

    iget-object v12, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iget-object v12, v12, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v4, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .line 217
    .local v4, "finalAuthOrgObject":Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->n:Landroid/widget/TextView;

    new-instance v12, Lfjq$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v4}, Lfjq$2;-><init>(Lfjq;Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    .end local v4    # "finalAuthOrgObject":Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    :cond_4
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    invoke-static {v11}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lfjq;->w:Ljava/lang/String;

    .line 227
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-static {v11}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lfjq;->x:Ljava/lang/String;

    .line 228
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lfjq;->x:Ljava/lang/String;

    check-cast p3, Landroid/widget/AbsListView;

    .line 7332
    .end local p3    # "parent":Landroid/view/ViewGroup;
    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 229
    move-object/from16 v0, p0

    iget v11, v0, Lfjq;->c:I

    sget-object v12, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->CALL_LOG:Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    invoke-virtual {v12}, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->getValue()I

    move-result v12

    if-ne v11, v12, :cond_5

    .line 230
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    new-instance v12, Lfjq$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lfjq$3;-><init>(Lfjq;)V

    invoke-virtual {v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    :cond_5
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    if-nez v11, :cond_19

    .line 245
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->l:Landroid/widget/TextView;

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->w:Ljava/lang/String;

    if-nez v11, :cond_1a

    .line 250
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->m:Landroid/widget/TextView;

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :goto_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 256
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->u:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->v:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 263
    :goto_6
    return-void

    .line 131
    .end local v2    # "avatarMediaId":Ljava/lang/String;
    .end local v3    # "dingNick":Ljava/lang/String;
    .end local v5    # "friendProfileObject":Lfrz;
    .end local v10    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->j:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 133
    :cond_7
    move/from16 v0, p2

    if-le v0, v6, :cond_9

    .line 134
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->e:Ljava/lang/Object;

    check-cast v11, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    iget-object v11, v11, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    const/16 v12, 0x23

    invoke-static {v11, v12}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    const/16 v13, 0x23

    invoke-static {v12, v13}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v12

    if-ne v11, v12, :cond_8

    .line 135
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->j:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 137
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->j:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->j:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    const/16 v13, 0x23

    invoke-static {v12, v13}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 141
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->j:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->j:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    const/16 v13, 0x23

    invoke-static {v12, v13}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 6087
    .restart local v2    # "avatarMediaId":Ljava/lang/String;
    .restart local v3    # "dingNick":Ljava/lang/String;
    .restart local v5    # "friendProfileObject":Lfrz;
    .restart local v7    # "lAdapter":Lfjm;
    .restart local v10    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 165
    .end local v7    # "lAdapter":Lfjm;
    .restart local v9    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->s:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 167
    .end local v9    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_c
    move-object/from16 v0, p0

    iget v11, v0, Lfjq;->c:I

    sget-object v12, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->CONTACT_FRAGMENT:Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    invoke-virtual {v12}, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->getValue()I

    move-result v12

    if-ne v11, v12, :cond_11

    .line 168
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->q:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 169
    const/4 v8, 0x0

    .line 170
    .local v8, "showFriend":Z
    if-eqz v5, :cond_d

    iget-boolean v11, v5, Lfrz;->g:Z

    if-eqz v11, :cond_d

    .line 171
    const/4 v8, 0x1

    .line 172
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->o:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lfjq;->a:Landroid/app/Activity;

    sget v13, Lezg$l;->contact_is_friend:I

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->o:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lfjq;->a:Landroid/app/Activity;

    sget v13, Lezg$e;->ui_common_text_disabled_color:I

    invoke-static {v12, v13}, Ldp;->c(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lfjq;->o:Landroid/widget/TextView;

    if-eqz v8, :cond_f

    const/4 v11, 0x0

    :goto_8
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    move-object/from16 v0, p0

    iget-object v12, v0, Lfjq;->p:Landroid/widget/Button;

    if-eqz v8, :cond_10

    const/16 v11, 0x8

    :goto_9
    invoke-virtual {v12, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 175
    :cond_d
    invoke-static {}, Lfjo;->a()Lfjo;

    move-result-object v11

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-virtual {v11, v12, v13}, Lfjo;->a(J)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 176
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->p:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v12, v0, Lfjq;->a:Landroid/app/Activity;

    sget v13, Lezg$l;->dt_contact_friendRequest_send_again:I

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :goto_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->p:Landroid/widget/Button;

    new-instance v12, Lfjq$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v12, v0, v1}, Lfjq$1;-><init>(Lfjq;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 178
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->p:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v12, v0, Lfjq;->a:Landroid/app/Activity;

    sget v13, Lezg$l;->action_add:I

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 192
    :cond_f
    const/16 v11, 0x8

    goto :goto_8

    .line 193
    :cond_10
    const/4 v11, 0x0

    goto :goto_9

    .line 195
    .end local v8    # "showFriend":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->q:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 196
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->o:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->p:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 6515
    :cond_12
    if-nez v10, :cond_13

    .line 6516
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 6518
    :cond_13
    iget v12, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/4 v13, 0x5

    if-eq v12, v13, :cond_14

    iget v12, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_15

    .line 6519
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 6521
    :cond_15
    iget-object v12, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .line 6522
    if-nez v12, :cond_16

    .line 6523
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 6525
    :cond_16
    invoke-virtual {v11}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->N()Ljava/util/List;

    move-result-object v11

    .line 6526
    if-eqz v11, :cond_17

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_18

    .line 6527
    :cond_17
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 6529
    :cond_18
    iget-wide v12, v12, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->originalOrgId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    goto/16 :goto_3

    .line 247
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_19
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->l:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lfjq;->x:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lfjq;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 252
    :cond_1a
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->m:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lfjq;->w:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lfjq;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 259
    :cond_1b
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->u:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->v:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 261
    move-object/from16 v0, p0

    iget-object v11, v0, Lfjq;->u:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lfjq;->a:Landroid/app/Activity;

    sget v13, Lezg$l;->contact_ding_nick:I

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 72
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-virtual {p0, p1}, Lfjq;->a(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 72
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-virtual {p0, p1, p2, p3}, Lfjq;->a(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V
    .locals 6
    .param p1, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 340
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 389
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v2, p0, Lfjq;->a:Landroid/app/Activity;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v2, :cond_2

    .line 346
    iget-object v0, p0, Lfjq;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 347
    .local v0, "dingtalkBaseActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 351
    :goto_1
    new-instance v1, Lfjq$4;

    invoke-direct {v1, p0, v0, p1}, Lfjq$4;-><init>(Lfjq;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V

    .line 385
    .local v1, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    iget-object v2, p0, Lfjq;->a:Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 386
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcma;

    iget-object v4, p0, Lfjq;->a:Landroid/app/Activity;

    invoke-interface {v2, v1, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    check-cast v1, Lcma;

    .line 388
    .restart local v1    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_1
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v2

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-interface {v2, v4, v5, v1}, Lfac;->a(JLcma;)V

    goto :goto_0

    .line 349
    .end local v0    # "dingtalkBaseActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .end local v1    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "dingtalkBaseActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    goto :goto_1
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 99
    sget v0, Lezg$j;->item_local_contact:I

    return v0
.end method

.method public final e()Ljava/lang/Class;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 324
    iget v0, p0, Lfjq;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 325
    const-class v0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;

    .line 327
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    goto :goto_0
.end method
