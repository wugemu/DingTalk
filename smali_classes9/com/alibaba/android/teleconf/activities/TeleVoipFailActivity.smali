.class public Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleVoipFailActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:J

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Landroid/content/BroadcastReceiver;

.field private y:Landroid/content/BroadcastReceiver;

.field private z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 89
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->z:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->r:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Landroid/view/View;Z)V
    .locals 2
    .param p0, "button"    # Landroid/view/View;
    .param p1, "visible"    # Z

    .prologue
    .line 187
    if-nez p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :cond_1
    return-void

    .line 188
    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 180
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v1

    invoke-virtual {v1}, Lewh;->n()Z

    move-result v0

    .line 181
    .local v0, "isBizCallValid":Z
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->l:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->a(Landroid/view/View;Z)V

    .line 182
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->m:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->a(Landroid/view/View;Z)V

    .line 183
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->n:Landroid/view/View;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->w:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lewx;->j()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->a(Landroid/view/View;Z)V

    .line 184
    return-void

    :cond_0
    move v1, v3

    .line 182
    goto :goto_0

    :cond_1
    move v2, v3

    .line 183
    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    .prologue
    const/4 v2, 0x0

    .line 52
    .line 3408
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->o:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 3411
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Create voip call "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->o:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " from voip-fail page"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3412
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 3413
    iget-wide v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->o:J

    iput-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 3414
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->p:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 3415
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->r:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 3416
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->q:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 3418
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    .prologue
    const/4 v4, 0x1

    .line 52
    .line 4360
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 4363
    const/4 v0, 0x0

    .line 4364
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4365
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 4366
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->o:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 4367
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->r:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 4368
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->p:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 4369
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->q:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 4370
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    .line 4371
    iput v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 4374
    :cond_0
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    invoke-virtual {v1, v2, v3}, Lewh;->a(ZLcma;)V

    .line 52
    :cond_1
    return-void
.end method

.method private c()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 400
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    :goto_0
    return v7

    .line 403
    :cond_0
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Create sys-call from voip-fail page to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->o:J

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->p:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->r:Ljava/lang/String;

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lewf;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    .prologue
    .line 52
    .line 5256
    const/4 v0, 0x1

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$11;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$11;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V

    invoke-static {v0, v1}, Lewd;->a(ZLeyo$d;)V

    .line 52
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    .prologue
    .line 52
    .line 5292
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->o:J

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 52
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->o:J

    return-wide v0
.end method

.method static synthetic h(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->b()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 102
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Leuj$f;->conf_call_and_video_bg_color:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 104
    sget v0, Leuj$j;->activity_teleconf_voip_retry:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->setContentView(I)V

    .line 1296
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1297
    if-eqz v0, :cond_0

    .line 1298
    const-string/jumbo v1, "user_id"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->o:J

    .line 1299
    const-string/jumbo v1, "user_mobile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->r:Ljava/lang/String;

    .line 1300
    const-string/jumbo v1, "user_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->p:Ljava/lang/String;

    .line 1301
    const-string/jumbo v1, "media_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->q:Ljava/lang/String;

    .line 1302
    const-string/jumbo v1, "conf_user_company_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->t:Ljava/lang/String;

    .line 1303
    const-string/jumbo v1, "conf_user_company_position"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->s:Ljava/lang/String;

    .line 1305
    const-string/jumbo v1, "conf_limit_level"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->u:I

    .line 1306
    const-string/jumbo v1, "conf_limit_reason"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->v:Ljava/lang/String;

    .line 1307
    const-string/jumbo v1, "conf_limit_reject_message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->w:Ljava/lang/String;

    .line 2121
    :cond_0
    sget v0, Leuj$i;->status_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->b:Landroid/view/View;

    .line 2122
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->b:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$5;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2129
    sget v0, Leuj$i;->user_info_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->c:Landroid/view/View;

    .line 2130
    sget v0, Leuj$i;->usr_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 2131
    sget v0, Leuj$i;->user_nick:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->e:Landroid/widget/TextView;

    .line 2132
    sget v0, Leuj$i;->user_position_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->f:Landroid/widget/TextView;

    .line 2133
    sget v0, Leuj$i;->user_company_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->g:Landroid/widget/TextView;

    .line 2134
    sget v0, Leuj$i;->conf_net_error_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->h:Landroid/view/View;

    .line 2136
    sget v0, Leuj$i;->main_state_txt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->i:Landroid/widget/TextView;

    .line 2137
    sget v0, Leuj$i;->sub_state_txt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->j:Landroid/widget/TextView;

    .line 2138
    sget v0, Leuj$i;->voip_recall:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->k:Landroid/view/View;

    .line 2139
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->k:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$6;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2147
    sget v0, Leuj$i;->dial_biz_call:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->l:Landroid/view/View;

    .line 2148
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->l:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$7;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2156
    sget v0, Leuj$i;->dial_phone_call:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->m:Landroid/view/View;

    .line 2157
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->m:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$8;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2166
    sget v0, Leuj$i;->quick_leave_message:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->n:Landroid/view/View;

    .line 2167
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->n:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$9;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2175
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->b()V

    .line 2193
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2195
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2196
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2197
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2201
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2202
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2203
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2207
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2208
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2209
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2210
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2211
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2212
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->u:I

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetDisconnect:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->u:I

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetRemoteRecvDataTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 2213
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 2215
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->u:I

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetConnectFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->u:I

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetRecvDataTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 2216
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 2217
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2218
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2317
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2321
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0}, Lewh;->n()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lewx;->j()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2322
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->z:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v0, v1, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2325
    :cond_3
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 2326
    iget-wide v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->o:J

    iput-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 2327
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->r:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 2329
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v0

    const-string/jumbo v3, "EVENTBUTLER"

    .line 2330
    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12;

    invoke-direct {v5, p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V

    const-class v6, Lewl$c;

    invoke-interface {v3, v5, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lewl$c;

    move-object v3, v2

    .line 2329
    invoke-virtual/range {v0 .. v5}, Lewl;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;ZLewl$c;)V

    .line 2422
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->x:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_5

    .line 2423
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->x:Landroid/content/BroadcastReceiver;

    .line 2437
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.alibaba.dingtalk.telebase.action.CONF_INCOMING"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2438
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2440
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->y:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_6

    .line 2441
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$4;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->y:Landroid/content/BroadcastReceiver;

    .line 2451
    :cond_6
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->y:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.alibaba.dingtalk.telebase.action.CREATE_SYSCALL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 109
    return-void

    .line 2199
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2205
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2219
    :cond_9
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->u:I

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalTopManagementModel:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->u:I

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalHidenInAddressList:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 2220
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->u:I

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalNoAuthorization:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 2221
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->u:I

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalNonFriend:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 2222
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->u:I

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalNoMicAuth:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 2223
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->u:I

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallingTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 2224
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 2225
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2226
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->j:Landroid/widget/TextView;

    sget v1, Leuj$l;->dt_conference_voip_extra_way_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2227
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 2229
    :cond_b
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->u:I

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalReject:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 2230
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->w:Ljava/lang/String;

    .line 2235
    invoke-static {}, Lewx;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2239
    sget v0, Leuj$i;->recall_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2240
    sget v0, Leuj$i;->rejected_with_message_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2241
    sget v0, Leuj$i;->rejected_message_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2242
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2243
    sget v0, Leuj$i;->reply_in_chatting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$10;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 2455
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->x:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2456
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2457
    iput-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->x:Landroid/content/BroadcastReceiver;

    .line 2460
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->y:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 2461
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->y:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2462
    iput-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->y:Landroid/content/BroadcastReceiver;

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->z:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 116
    iput-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->z:Ljava/lang/Runnable;

    .line 118
    :cond_2
    return-void
.end method
