.class public Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleConfSelectMemberActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Leum;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/content/BroadcastReceiver;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->k:Z

    .line 89
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->m:I

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->n:I

    .line 92
    const/16 v0, 0x16

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->o:I

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;IILjava/lang/String;ILjava/lang/String;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 60
    .line 4404
    if-lez p2, :cond_5

    .line 4409
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 4410
    const-string/jumbo v0, "choose_mode"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4411
    const-string/jumbo v0, "title"

    invoke-virtual {v5, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4412
    const-string/jumbo v0, "count_limit"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4413
    const-string/jumbo v0, "count_limit_tips"

    invoke-virtual {v5, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4414
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4415
    const-string/jumbo v0, "activity_identify"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4417
    :cond_0
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->l:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4418
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0}, Lewh;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4419
    const-string/jumbo v0, "intent_key_support_fix_line"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4421
    :cond_1
    const-string/jumbo v0, "hide_org_external"

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4422
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->i:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 4423
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4424
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 4425
    if-eqz v0, :cond_2

    .line 4428
    iget-object v3, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 4429
    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 4430
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-eqz v3, :cond_2

    .line 4431
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4435
    :cond_3
    const-string/jumbo v2, "key_request_select_user_list"

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4437
    :cond_4
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->k:Z

    if-eqz v0, :cond_6

    .line 4438
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_5
    :goto_1
    return-void

    .line 4440
    :cond_6
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->l:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 60
    .line 4381
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 4382
    :cond_0
    :goto_0
    return-void

    .line 4384
    :cond_1
    iget-object v1, p1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-object v0, p0

    move v4, v3

    move-object v5, v2

    .line 4385
    invoke-static/range {v0 .. v5}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;ZZLjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    .param p2, "x2"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .prologue
    const/4 v1, 0x0

    .line 60
    .line 3389
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 3390
    :cond_0
    :goto_0
    return-void

    .line 3392
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3393
    invoke-static {p0, v0, v1, v1}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;Ljava/util/List;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v2, 0x0

    .line 60
    .line 3344
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3345
    :cond_0
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Goto conf, users is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3370
    :cond_1
    :goto_0
    return-void

    .line 3349
    :cond_2
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Goto conf, size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3352
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3353
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v2

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 3354
    if-eqz v0, :cond_3

    iget-object v5, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 3357
    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3358
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3360
    if-nez v1, :cond_7

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_7

    :goto_2
    move-object v1, v0

    .line 3363
    goto :goto_1

    .line 3365
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-le v0, v4, :cond_5

    .line 3366
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3367
    const-string/jumbo v1, "conversation_id"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3368
    const-string/jumbo v1, "conference_from_home"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3369
    invoke-static {p0, v3, v0}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    .line 3371
    :cond_5
    if-eqz v1, :cond_1

    .line 3372
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->workMobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3373
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->workMobile:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 3375
    :cond_6
    const/4 v0, 0x0

    invoke-static {p0, v1, v2, v0, v2}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;ZLcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a(Z)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;>;"
    const/4 v7, 0x1

    .line 461
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->h:Leum;

    if-eqz v2, :cond_0

    .line 465
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->h:Leum;

    invoke-virtual {v2, p1}, Leum;->b(Ljava/util/List;)V

    .line 466
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->m:I

    if-ge v2, v3, :cond_2

    .line 467
    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->m:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int v1, v2, v3

    .line 469
    .local v1, "remainNum":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_guide_add_member_tip:I

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "extName":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->h:Leum;

    invoke-virtual {v2, v0, v7}, Leum;->a(Ljava/lang/String;Z)V

    .line 473
    .end local v0    # "extName":Ljava/lang/String;
    .end local v1    # "remainNum":I
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v7, :cond_0

    .line 474
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_delete_member:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 475
    .restart local v0    # "extName":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->h:Leum;

    invoke-virtual {v2, v0, v7}, Leum;->b(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 4
    .param p1, "isNotify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 445
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 446
    .local v1, "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 447
    .local v0, "mySelf":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    new-instance v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    sget-object v3, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->NormalType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-direct {v2, v3}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;)V

    .line 448
    .local v2, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    iput-object v0, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    .line 450
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->i:Ljava/util/List;

    if-nez v3, :cond_0

    .line 451
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->i:Ljava/util/List;

    .line 453
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    if-eqz p1, :cond_1

    .line 456
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->i:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a(Ljava/util/List;)V

    .line 458
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Leum;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->h:Leum;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    .prologue
    .line 60
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->n:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->i:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    .prologue
    .line 60
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->o:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    .prologue
    .line 60
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->m:I

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->e:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 96
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Leuj$f;->conf_call_and_video_bg_color:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 98
    sget v0, Leuj$j;->activity_teleconf_select_members:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->setContentView(I)V

    .line 1113
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1114
    if-eqz v0, :cond_0

    .line 1115
    const-string/jumbo v1, "conference_from_home"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->k:Z

    .line 1116
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->l:Ljava/lang/String;

    .line 1118
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1119
    if-eqz v0, :cond_0

    .line 1120
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1122
    iput v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->n:I

    .line 1123
    const-string/jumbo v1, "CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1124
    const/16 v0, 0x16

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->o:I

    .line 1136
    :cond_0
    :goto_0
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0}, Lewh;->d()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->m:I

    .line 1137
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->n:I

    if-ne v3, v0, :cond_1

    .line 1138
    iput v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->m:I

    .line 1272
    :cond_1
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$4;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->j:Landroid/content/BroadcastReceiver;

    .line 1318
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1319
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1320
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2143
    sget v0, Leuj$i;->conf_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->c:Landroid/widget/TextView;

    .line 2144
    sget v0, Leuj$i;->conf_add_member_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->g:Landroid/view/View;

    .line 2147
    sget v0, Leuj$i;->conf_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->f:Landroid/view/View;

    .line 2148
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->f:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2156
    sget v0, Leuj$i;->conf_start:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->e:Landroid/view/View;

    .line 2157
    sget v0, Leuj$i;->conf_start_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->d:Landroid/view/View;

    .line 2158
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->d:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2198
    sget v0, Leuj$i;->conf_members_grid:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->b:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    .line 2199
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->b:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2264
    new-instance v0, Leum;

    invoke-direct {v0, p0}, Leum;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->h:Leum;

    .line 2265
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->h:Leum;

    invoke-virtual {v0, v3}, Leum;->a(I)V

    .line 2266
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->b:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->h:Leum;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2268
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->hideToolbar()V

    .line 2331
    invoke-direct {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a(Z)V

    .line 2333
    invoke-static {p0}, Levl;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2334
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    .line 1125
    :cond_2
    const-string/jumbo v1, "VOIP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    const/16 v0, 0x15

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->o:I

    goto/16 :goto_0

    .line 1129
    :cond_3
    iput v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->n:I

    goto/16 :goto_0

    .line 2336
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 108
    .line 3324
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->j:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3325
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 3326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->j:Landroid/content/BroadcastReceiver;

    .line 109
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 110
    return-void
.end method
