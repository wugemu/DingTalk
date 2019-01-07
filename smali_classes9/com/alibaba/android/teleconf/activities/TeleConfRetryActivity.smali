.class public Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleConfRetryActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/view/View;

.field private D:Landroid/view/View;

.field private E:Ldq;

.field private F:Landroid/content/BroadcastReceiver;

.field private G:Landroid/view/View$OnClickListener;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Z

.field private m:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/view/View;

.field private x:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->h:I

    .line 100
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->G:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->i:Z

    return v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 326
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->z:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 327
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->D:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->C:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 336
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->C:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->w:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    .prologue
    const/4 v2, 0x0

    .line 47
    .line 1411
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 1414
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Create voip call to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 1416
    iget-wide v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->b:J

    iput-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 1417
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 1418
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 1419
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->e:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 1421
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->h:I

    return v0
.end method

.method private c()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 403
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    :goto_0
    return v7

    .line 406
    :cond_0
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Create syscall "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->b:J

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->d:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->c:Ljava/lang/String;

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lewf;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->k:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    .prologue
    .line 47
    .line 2387
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 2390
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 2391
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->b:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 2392
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 2393
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 2394
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 2395
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->j:Z

    if-eqz v1, :cond_0

    .line 2396
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    .line 2398
    :cond_0
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Create call "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2399
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->l:Z

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->m:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-static {p0, v0, v1, v2, v3}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;ZLcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    .line 47
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->b:J

    return-wide v0
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->b()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 113
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Leuj$f;->conf_call_and_video_bg_color:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 115
    sget v0, Leuj$j;->activity_teleconf_retry_for_call_v2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->setContentView(I)V

    .line 1129
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1130
    const-string/jumbo v1, "user_id"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->b:J

    .line 1131
    const-string/jumbo v1, "user_mobile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->c:Ljava/lang/String;

    .line 1132
    const-string/jumbo v1, "user_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->d:Ljava/lang/String;

    .line 1133
    const-string/jumbo v1, "media_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->e:Ljava/lang/String;

    .line 1134
    const-string/jumbo v1, "conf_user_company_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->f:Ljava/lang/String;

    .line 1135
    const-string/jumbo v1, "conf_user_company_position"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->g:Ljava/lang/String;

    .line 1136
    const-string/jumbo v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1137
    const-string/jumbo v3, "conf_pstn"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1138
    iput v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->h:I

    .line 1142
    :cond_0
    :goto_0
    const-string/jumbo v1, "conf_voip_to_pstn"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->i:Z

    .line 1143
    const-string/jumbo v1, "conf_voip_can_support"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->j:Z

    .line 1145
    const-string/jumbo v1, "conf_remind_catgory"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->k:I

    .line 1146
    const-string/jumbo v1, "conf_call_be_biz_call"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->l:Z

    .line 1147
    const-string/jumbo v1, "conf_call_biz_call_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->m:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 1151
    sget v0, Leuj$i;->call_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->n:Landroid/view/View;

    .line 1152
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->n:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1159
    sget v0, Leuj$i;->call_user_info:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->o:Landroid/view/View;

    .line 1160
    sget v0, Leuj$i;->call_usr_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1161
    sget v0, Leuj$i;->call_usr_nick:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->q:Landroid/widget/TextView;

    .line 1162
    sget v0, Leuj$i;->call_usr_company:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->r:Landroid/widget/TextView;

    .line 1163
    sget v0, Leuj$i;->call_usr_position:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->s:Landroid/widget/TextView;

    .line 1165
    sget v0, Leuj$i;->conf_net_error_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->t:Landroid/view/View;

    .line 1167
    sget v0, Leuj$i;->call_tip_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->u:Landroid/widget/TextView;

    .line 1168
    sget v0, Leuj$i;->call_tip_txt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->v:Landroid/widget/TextView;

    .line 1170
    sget v0, Leuj$i;->system_call_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->x:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1171
    sget v0, Leuj$i;->system_call_txt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->y:Landroid/widget/TextView;

    .line 1172
    sget v0, Leuj$i;->system_call_dial:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->w:Landroid/view/View;

    .line 1173
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->w:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->G:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1175
    sget v0, Leuj$i;->net_call_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->A:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1176
    sget v0, Leuj$i;->net_call_txt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->B:Landroid/widget/TextView;

    .line 1177
    sget v0, Leuj$i;->net_call_dial:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->z:Landroid/view/View;

    .line 1179
    sget v0, Leuj$i;->dial_chock_left:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->C:Landroid/view/View;

    .line 1180
    sget v0, Leuj$i;->dial_chock_right:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->D:Landroid/view/View;

    .line 1182
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1184
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1185
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1186
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1188
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1189
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1190
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1193
    :cond_2
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->k:I

    if-ne v5, v0, :cond_6

    .line 1194
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1195
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1197
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->u:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_timeout_warn:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1198
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->v:Landroid/widget/TextView;

    sget v1, Leuj$l;->and_conf_txt_timeout_warn_fixlink:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1199
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Leuj$f;->txt_color_blue_bg_selector:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1200
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->v:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1209
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->A:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1210
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->B:Landroid/widget/TextView;

    invoke-static {}, Lewp;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1211
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->z:Landroid/view/View;

    sget v1, Leuj$h;->conf_call_dial_btn_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1212
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->z:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$4;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1257
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->i:Z

    if-nez v0, :cond_4

    .line 1258
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1259
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 1260
    iget-wide v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->b:J

    iput-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 1261
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 1263
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v0

    const-string/jumbo v3, "EVENTBUTLER"

    .line 1264
    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$6;

    invoke-direct {v5, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$6;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)V

    const-class v6, Lewl$c;

    invoke-interface {v3, v5, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lewl$c;

    move-object v3, v2

    .line 1263
    invoke-virtual/range {v0 .. v5}, Lewl;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;ZLewl$c;)V

    .line 1297
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->b()V

    .line 1300
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$7;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->F:Landroid/content/BroadcastReceiver;

    .line 1316
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->E:Ldq;

    .line 1317
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1318
    const-string/jumbo v1, "com.workapp.teleonf.phonecall.ringing"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1319
    const-string/jumbo v1, "com.alibaba.dingtalk.telebase.action.CREATE_SYSCALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1320
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->E:Ldq;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1322
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->hideToolbar()V

    .line 118
    return-void

    .line 1139
    :cond_5
    const-string/jumbo v3, "conf_voip"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1140
    iput v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->h:I

    goto/16 :goto_0

    .line 1221
    :cond_6
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->k:I

    if-nez v0, :cond_3

    .line 1222
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1223
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1225
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->u:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_timeout_warn_network_error:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1226
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->v:Landroid/widget/TextView;

    sget v1, Leuj$l;->and_conf_txt_timeout_warn_network_error_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1227
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Leuj$f;->ui_common_content_bg_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1229
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->A:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1230
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->B:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_redail:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1231
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->z:Landroid/view/View;

    sget v1, Leuj$h;->conf_timeout_ok_btn_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1232
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->z:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$5;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1294
    :cond_7
    iput-boolean v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->i:Z

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->E:Ldq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->F:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->E:Ldq;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 125
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 126
    return-void
.end method
