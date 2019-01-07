.class public Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleConfDialActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

.field private C:Z

.field private D:J

.field private E:Landroid/content/BroadcastReceiver;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:J

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->C:Z

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->D:J

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->y:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .prologue
    .line 68
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

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

    .line 416
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 417
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->y:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->x:Z

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->x:Z

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 427
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->y:Z

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .prologue
    const/4 v2, 0x0

    .line 68
    .line 3512
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->p:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 3515
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Create voip call "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->p:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " from quota page"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3516
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 3517
    iget-wide v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->p:J

    iput-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 3518
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->r:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 3519
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->q:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 3520
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->s:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 3522
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method private c()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 526
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    :goto_0
    return v7

    .line 529
    :cond_0
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Create a system call to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->p:J

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->r:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->q:Ljava/lang/String;

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lewf;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->z:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->C:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .prologue
    .line 68
    .line 4461
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->B:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    if-nez v0, :cond_2

    .line 4462
    :cond_0
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Biz call invalid, no recharge"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4463
    :cond_1
    :goto_0
    return-void

    .line 4465
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->B:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v2, v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCorpId:Ljava/lang/String;

    .line 4466
    invoke-static {}, Leya;->a()Leya;

    move-result-object v3

    const-string/jumbo v0, "EVENTBUTLER"

    .line 4467
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$7;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)V

    const-class v4, Leyo$d;

    invoke-interface {v0, v1, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 5048
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5051
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/CloudCallIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/service/CloudCallIService;

    .line 5052
    if-eqz v1, :cond_1

    .line 5053
    new-instance v4, Leya$1;

    invoke-direct {v4, v3, v0}, Leya$1;-><init>(Leya;Leyo$d;)V

    invoke-interface {v1, v2, v4}, Lcom/alibaba/android/teleconf/sdk/idl/service/CloudCallIService;->createRechargeToken(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    .line 5502
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->B:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    if-nez v0, :cond_1

    .line 5503
    :cond_0
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Biz call invalid, no limit quota setting."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5504
    :goto_0
    return-void

    .line 5506
    :cond_1
    const-string/jumbo v0, "?corpId=%s&orgId=%s&dd_progress=false&showmenu=false#/auth"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->B:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v2, v2, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCorpId:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->B:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-wide v2, v2, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mOrgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5507
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "https://callapp.dingtalk.com/businessCall/index.html"

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5508
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->B:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->D:J

    return-wide v0
.end method

.method static synthetic j(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const v12, 0x61aad

    const/16 v9, 0x8

    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 113
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Leuj$f;->conf_call_and_video_bg_color:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 115
    sget v0, Leuj$j;->activity_teleconf_more_action_v3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->setContentView(I)V

    .line 1128
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1129
    if-eqz v1, :cond_0

    .line 1130
    const-string/jumbo v0, "user_id"

    invoke-virtual {v1, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->p:J

    .line 1131
    const-string/jumbo v0, "user_mobile"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->q:Ljava/lang/String;

    .line 1132
    const-string/jumbo v0, "user_name"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->r:Ljava/lang/String;

    .line 1133
    const-string/jumbo v0, "media_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->s:Ljava/lang/String;

    .line 1134
    const-string/jumbo v0, "conf_user_company_name"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->u:Ljava/lang/String;

    .line 1135
    const-string/jumbo v0, "conf_user_company_position"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->t:Ljava/lang/String;

    .line 1136
    const-string/jumbo v0, "conf_limit_level"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    .line 1137
    const-string/jumbo v0, "conf_limit_reason"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->w:Ljava/lang/String;

    .line 1138
    const-string/jumbo v0, "conf_voip_can_support"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->x:Z

    .line 1139
    const-string/jumbo v0, "conf_call_be_biz_call"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->z:Z

    .line 1140
    const-string/jumbo v0, "conf_call_biz_call_info"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->B:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 1141
    const-string/jumbo v0, "conf_call_biz_be_vip_user"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->A:Z

    .line 1144
    :cond_0
    iput-wide v10, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->D:J

    .line 1145
    iput-boolean v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->C:Z

    .line 1146
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->z:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->B:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    if-eqz v0, :cond_3

    .line 1147
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->B:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v0, v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mAdminUids:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->B:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v0, v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mAdminUids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1148
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->B:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v0, v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mAdminUids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1149
    if-eqz v0, :cond_1

    .line 1153
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 1154
    iput-boolean v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->C:Z

    .line 1157
    :cond_2
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->D:J

    cmp-long v2, v2, v10

    if-gtz v2, :cond_1

    .line 1158
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->D:J

    goto :goto_0

    .line 1436
    :cond_3
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$6;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->E:Landroid/content/BroadcastReceiver;

    .line 1447
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1448
    const-string/jumbo v1, "com.alibaba.dingtalk.telebase.action.CREATE_SYSCALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1449
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2166
    sget v0, Leuj$i;->system_call_usr_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 2167
    sget v0, Leuj$i;->system_call_usr_nick:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->h:Landroid/widget/TextView;

    .line 2168
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2169
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2171
    sget v0, Leuj$i;->system_call_company:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->i:Landroid/widget/TextView;

    .line 2172
    sget v0, Leuj$i;->system_call_position:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->j:Landroid/widget/TextView;

    .line 2174
    sget v0, Leuj$i;->dial_call_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b:Landroid/view/View;

    .line 2175
    sget v0, Leuj$i;->system_call_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->f:Landroid/view/View;

    .line 2176
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->f:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2187
    sget v0, Leuj$i;->net_call_dial:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->d:Landroid/view/View;

    .line 2188
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->d:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2198
    sget v0, Leuj$i;->net_call_dial_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->e:Landroid/widget/TextView;

    .line 2199
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->e:Landroid/widget/TextView;

    invoke-static {}, Lewp;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2201
    sget v0, Leuj$i;->more_action_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->m:Landroid/view/View;

    .line 2202
    sget v0, Leuj$i;->more_action_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->l:Landroid/widget/TextView;

    .line 2203
    sget v0, Leuj$i;->more_action_tip_txt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->k:Landroid/widget/TextView;

    .line 2204
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->m:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2263
    sget v0, Leuj$i;->system_call_dial:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->c:Landroid/view/View;

    .line 2264
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->c:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$4;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2277
    sget v0, Leuj$i;->dial_chock_left:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->n:Landroid/view/View;

    .line 2278
    sget v0, Leuj$i;->dial_chock_right:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->o:Landroid/view/View;

    .line 2280
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2281
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2282
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2284
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2285
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2286
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2289
    :cond_5
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->z:Z

    if-eqz v0, :cond_22

    .line 2290
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setClickable(Z)V

    .line 2291
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->B:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    if-eqz v0, :cond_c

    .line 2292
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->B:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v1, v1, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mContactName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2297
    :goto_1
    const-string/jumbo v0, ""

    .line 2298
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->C:Z

    if-eqz v1, :cond_11

    .line 2299
    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    if-eq v1, v12, :cond_6

    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    const v2, 0x61ac8

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    const v2, 0x61ac7

    if-ne v1, v2, :cond_d

    .line 2302
    :cond_6
    sget v0, Leuj$l;->dt_conference_bizcall_to_charge_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2329
    :cond_7
    :goto_2
    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    const v2, 0x61ab4

    if-ne v1, v2, :cond_8

    .line 2330
    sget v0, Leuj$l;->dt_add_to_ext_contact:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2332
    :cond_8
    const-string/jumbo v1, ""

    .line 2333
    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    if-ne v2, v12, :cond_17

    .line 2334
    sget v1, Leuj$l;->dt_conference_bizcall_quota_over:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2351
    :cond_9
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 2352
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 2353
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v4

    const-string/jumbo v1, " "

    aput-object v1, v2, v8

    const/4 v1, 0x2

    aput-object v0, v2, v1

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2354
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->k:Landroid/widget/TextView;

    .line 2534
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2535
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2536
    :cond_a
    const/4 v0, 0x0

    .line 2354
    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2367
    :goto_5
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->A:Z

    if-eqz v0, :cond_23

    .line 2368
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2413
    :cond_b
    :goto_6
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->hideToolbar()V

    .line 119
    return-void

    .line 2294
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 2303
    :cond_d
    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    const v2, 0x61ac1

    if-ne v1, v2, :cond_e

    .line 2304
    sget v0, Leuj$l;->dt_conference_bizcall_add_extra_contact:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2305
    :cond_e
    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    const v2, 0x61ac2

    if-ne v1, v2, :cond_f

    .line 2306
    sget v0, Leuj$l;->dt_conference_bizcall_modify_limit_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2307
    :cond_f
    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    const v2, 0x61ac3

    if-ne v1, v2, :cond_10

    .line 2308
    sget v0, Leuj$l;->dt_conference_bizcall_modify_group_limit_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 2309
    :cond_10
    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    const v2, 0x61ac9

    if-ne v1, v2, :cond_7

    .line 2311
    sget v0, Leuj$l;->dt_conference_fixed_call_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 2314
    :cond_11
    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    if-eq v1, v12, :cond_12

    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    const v2, 0x61ac8

    if-eq v1, v2, :cond_12

    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    const v2, 0x61ac7

    if-ne v1, v2, :cond_13

    .line 2317
    :cond_12
    sget v0, Leuj$l;->dt_conference_bizcall_get_charge_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 2318
    :cond_13
    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    const v2, 0x61ac1

    if-ne v1, v2, :cond_14

    .line 2319
    sget v0, Leuj$l;->dt_conference_bizcall_add_extra_contact:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 2320
    :cond_14
    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    const v2, 0x61ac2

    if-ne v1, v2, :cond_15

    .line 2321
    sget v0, Leuj$l;->dt_conference_bizcall_get_limit_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 2322
    :cond_15
    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    const v2, 0x61ac3

    if-ne v1, v2, :cond_16

    .line 2323
    sget v0, Leuj$l;->dt_conference_bizcall_get_group_limit_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 2324
    :cond_16
    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    const v2, 0x61ac9

    if-ne v1, v2, :cond_7

    .line 2326
    sget v0, Leuj$l;->dt_conference_get_fixed_call_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 2335
    :cond_17
    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    const v3, 0x61ac1

    if-ne v2, v3, :cond_18

    .line 2336
    sget v1, Leuj$l;->dt_conference_bizcall_cannot_calling:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 2337
    :cond_18
    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    const v3, 0x61ac2

    if-ne v2, v3, :cond_19

    .line 2338
    sget v1, Leuj$l;->dt_conference_bizcall_call_limit_over:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 2339
    :cond_19
    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    const v3, 0x61ab4

    if-ne v2, v3, :cond_1a

    .line 2340
    sget v1, Leuj$l;->dt_conference_bizcall_stranger_limit:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 2341
    :cond_1a
    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    const v3, 0x61ac3

    if-ne v2, v3, :cond_1b

    .line 2342
    sget v1, Leuj$l;->dt_conference_bizcall_call_limit_group:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 2343
    :cond_1b
    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    const v3, 0x61ac8

    if-ne v2, v3, :cond_1c

    .line 2344
    sget v1, Leuj$l;->dt_conference_bizcall_quota_over:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 2345
    :cond_1c
    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    const v3, 0x61ac7

    if-ne v2, v3, :cond_1d

    .line 2346
    sget v1, Leuj$l;->dt_conference_cannot_make_fixed_call:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 2347
    :cond_1d
    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->v:I

    const v3, 0x61ac9

    if-ne v2, v3, :cond_9

    .line 2348
    sget v1, Leuj$l;->dt_conference_unopen_make_fixed_call:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 2538
    :cond_1e
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2539
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2540
    if-ltz v2, :cond_1f

    .line 2541
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    .line 2542
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Leuj$f;->uidic_global_color_c2:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 2543
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v5, 0x21

    invoke-virtual {v1, v6, v2, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1f
    move-object v0, v1

    .line 2546
    goto/16 :goto_4

    .line 2355
    :cond_20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 2356
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 2358
    :cond_21
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 2359
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->k:Landroid/widget/TextView;

    sget v1, Leuj$l;->dt_conference_quota_time_out:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 2362
    :cond_22
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 2363
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2364
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2365
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->l:Landroid/widget/TextView;

    sget v1, Leuj$l;->dt_conference_quota_time_out:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 2371
    :cond_23
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 2372
    iput-boolean v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->y:Z

    .line 2374
    :cond_24
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b()V

    .line 2376
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->p:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_b

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->y:Z

    if-nez v0, :cond_b

    .line 2377
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 2378
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->p:J

    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 2379
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->r:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 2380
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->q:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 2381
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->s:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 2383
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    new-instance v5, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5;

    invoke-direct {v5, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)V

    invoke-virtual/range {v0 .. v5}, Lewl;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;ZLewl$c;)V

    goto/16 :goto_6
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 123
    .line 3453
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->E:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3454
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 3455
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->E:Landroid/content/BroadcastReceiver;

    .line 124
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 125
    return-void
.end method
