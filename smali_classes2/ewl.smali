.class public Lewl;
.super Ljava/lang/Object;
.source "TeleConfPhoneHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lewl$b;,
        Lewl$c;,
        Lewl$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static volatile q:Lewl;


# instance fields
.field public b:Ljava/lang/String;

.field public c:I

.field public d:Z

.field public e:I

.field public f:I

.field public g:Z

.field public h:Lewz;

.field public i:Ljava/lang/Runnable;

.field public j:Leym;

.field public k:Ljava/lang/String;

.field public l:Lifn;

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;

.field private r:Ljava/lang/Runnable;

.field private s:Ljava/lang/Runnable;

.field private t:Ljava/lang/Runnable;

.field private volatile u:Ljava/lang/String;

.field private volatile v:Ljava/lang/String;

.field private w:Ljava/lang/Runnable;

.field private x:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lewl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lewl;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-boolean v1, p0, Lewl;->n:Z

    .line 140
    const-string/jumbo v0, ""

    iput-object v0, p0, Lewl;->b:Ljava/lang/String;

    .line 143
    const/4 v0, 0x2

    iput v0, p0, Lewl;->c:I

    .line 145
    iput-boolean v1, p0, Lewl;->d:Z

    .line 147
    iput v2, p0, Lewl;->e:I

    .line 149
    iput v1, p0, Lewl;->f:I

    .line 153
    const-string/jumbo v0, ""

    iput-object v0, p0, Lewl;->p:Ljava/lang/String;

    .line 159
    iput-boolean v2, p0, Lewl;->g:Z

    .line 161
    new-instance v0, Lewz;

    invoke-direct {v0}, Lewz;-><init>()V

    iput-object v0, p0, Lewl;->h:Lewz;

    .line 166
    new-instance v0, Lewl$1;

    invoke-direct {v0, p0}, Lewl$1;-><init>(Lewl;)V

    iput-object v0, p0, Lewl;->i:Ljava/lang/Runnable;

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lewl;->l:Lifn;

    .line 185
    new-instance v0, Lewl$11;

    invoke-direct {v0, p0}, Lewl$11;-><init>(Lewl;)V

    iput-object v0, p0, Lewl;->r:Ljava/lang/Runnable;

    .line 218
    new-instance v0, Lewl$22;

    invoke-direct {v0, p0}, Lewl$22;-><init>(Lewl;)V

    iput-object v0, p0, Lewl;->s:Ljava/lang/Runnable;

    .line 225
    new-instance v0, Lewl$23;

    invoke-direct {v0, p0}, Lewl$23;-><init>(Lewl;)V

    iput-object v0, p0, Lewl;->t:Ljava/lang/Runnable;

    .line 1285
    new-instance v0, Lewl$14;

    invoke-direct {v0, p0}, Lewl$14;-><init>(Lewl;)V

    iput-object v0, p0, Lewl;->w:Ljava/lang/Runnable;

    .line 1295
    new-instance v0, Lewl$15;

    invoke-direct {v0, p0}, Lewl$15;-><init>(Lewl;)V

    iput-object v0, p0, Lewl;->x:Ljava/lang/Runnable;

    .line 249
    iget-object v0, p0, Lewl;->o:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lewl;->o:Ljava/util/Map;

    .line 252
    :cond_0
    return-void
.end method

.method static synthetic a(Lewl;)I
    .locals 1
    .param p0, "x0"    # Lewl;

    .prologue
    .line 78
    iget v0, p0, Lewl;->c:I

    return v0
.end method

.method private static a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    .locals 7
    .param p0, "user"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    const/4 v4, 0x1

    .line 1468
    const/4 v0, 0x0

    .line 1469
    .local v0, "userMobileObject":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    if-nez p0, :cond_0

    .line 1470
    const/4 v1, 0x0

    .line 1490
    :goto_0
    return-object v1

    .line 1473
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->workMobile:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1474
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->workMobile:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lewa;->a(JLjava/lang/String;)Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    move-result-object v0

    .line 1476
    :cond_1
    if-nez v0, :cond_2

    .line 1477
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lewa;->a(JLjava/lang/String;)Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    move-result-object v0

    .line 1480
    :cond_2
    if-nez v0, :cond_3

    .line 1481
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    if-ne v1, v4, :cond_3

    .line 1483
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    .end local v0    # "userMobileObject":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;-><init>()V

    .line 1484
    .restart local v0    # "userMobileObject":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    .line 1485
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewl;->a:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Update number from user source"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1486
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1485
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v1, v0

    .line 1490
    goto :goto_0
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    .locals 6
    .param p1, "user"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "stateCode"    # Ljava/lang/String;
    .param p3, "calleeNumber"    # Ljava/lang/String;
    .param p4, "canBeCached"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1448
    if-eqz p1, :cond_0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 1449
    :cond_0
    const/4 v0, 0x0

    .line 1459
    :goto_0
    return-object v0

    .line 1452
    :cond_1
    if-eqz p4, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1454
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3, p2, p3}, Lewl;->b(JLjava/lang/String;Ljava/lang/String;)V

    .line 1455
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewl;->a:Ljava/lang/String;

    const-string/jumbo v3, "Update number cache db"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    :cond_2
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Lewa;->b(J)Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    move-result-object v0

    .line 1459
    .local v0, "mobileObject":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    goto :goto_0
.end method

.method static synthetic a(Lewl;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    .locals 1
    .param p0, "x0"    # Lewl;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 78
    invoke-static {p1}, Lewl;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lewl;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    .locals 1
    .param p0, "x0"    # Lewl;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lewl;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lewl;
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lewl;->q:Lewl;

    if-nez v0, :cond_1

    .line 239
    const-class v1, Lewl;

    monitor-enter v1

    .line 240
    :try_start_0
    sget-object v0, Lewl;->q:Lewl;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lewl;

    invoke-direct {v0}, Lewl;-><init>()V

    sput-object v0, Lewl;->q:Lewl;

    .line 243
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :cond_1
    sget-object v0, Lewl;->q:Lewl;

    return-object v0

    .line 243
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lewl;Leym;)Leym;
    .locals 1
    .param p0, "x0"    # Lewl;
    .param p1, "x1"    # Leym;

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lewl;->j:Leym;

    return-object v0
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;ZLewl$c;)V
    .locals 2
    .param p1, "user"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "retryAgain"    # Z
    .param p3, "callbacks"    # Lewl$c;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1496
    if-nez p1, :cond_1

    .line 1497
    if-eqz p3, :cond_0

    .line 1498
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Lewl$c;->a(Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;)V

    .line 1547
    :cond_0
    :goto_0
    return-void

    .line 1502
    :cond_1
    sget-object v1, Lewl;->a:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 1503
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v1, Lewl$19;

    invoke-direct {v1, p0, p1, p2, p3}, Lewl$19;-><init>(Lewl;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;ZLewl$c;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lewl;ILewl$a;)V
    .locals 7
    .param p0, "x0"    # Lewl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lewl$a;

    .prologue
    .line 78
    .line 3074
    const/4 v0, 0x0

    .line 3076
    :try_start_0
    invoke-static {p1}, Levy;->a(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3081
    :goto_0
    if-eqz p2, :cond_0

    .line 3082
    invoke-interface {p2, v0}, Lewl$a;->a(Ljava/util/List;)V

    .line 78
    :cond_0
    return-void

    .line 3077
    :catch_0
    move-exception v1

    .line 3078
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lewl;->a:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "Read call log exp "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lewl;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;ZLewl$c;)V
    .locals 5
    .param p0, "x0"    # Lewl;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lewl$c;

    .prologue
    const/4 v4, 0x0

    .line 78
    .line 3558
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 3559
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 3560
    invoke-interface {p3, v4}, Lewl$c;->a(Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;)V

    .line 3575
    :cond_1
    :goto_0
    return-void

    .line 3565
    :cond_2
    invoke-static {v4}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3568
    if-nez p2, :cond_3

    .line 3569
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3575
    :cond_3
    :goto_1
    invoke-static {}, Leyc;->a()Leyc;

    move-result-object v1

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lewl$20;

    invoke-direct {v3, p0, p1, p2, p3}, Lewl$20;-><init>(Lewl;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;ZLewl$c;)V

    .line 4049
    const-class v0, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 4050
    if-eqz v0, :cond_1

    .line 4053
    new-instance v4, Leyc$17;

    invoke-direct {v4, v1, v3}, Leyc$17;-><init>(Leyc;Leyo$d;)V

    invoke-interface {v0, v2, v4}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->getDirectCallPhoneNumber(Ljava/lang/Long;Liyv;)V

    goto :goto_0

    .line 3571
    :catch_0
    move-exception v0

    .line 3572
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 3625
    :cond_4
    if-eqz p2, :cond_1

    .line 3626
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewl;->a:Ljava/lang/String;

    const-string/jumbo v2, "Number return from local"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3628
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3}, Lewl;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;ZLewl$c;)V

    goto :goto_0
.end method

.method static synthetic a(Lewl;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lewl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    .line 3306
    iput-object p1, p0, Lewl;->u:Ljava/lang/String;

    .line 3307
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lewl;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3308
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lewl;->w:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    return-void
.end method

.method private a(Ljava/lang/String;ZLjava/util/ArrayList;)V
    .locals 5
    .param p1, "contactName"    # Ljava/lang/String;
    .param p2, "beBusiness"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 695
    .local p3, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewl;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "insert contact "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    sget-object v1, Lewl;->a:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 700
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v1, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 701
    new-instance v1, Lewl$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lewl$2;-><init>(Lewl;ZLjava/lang/String;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1417
    .local p0, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1421
    :cond_0
    :goto_0
    return-void

    .line 1420
    :cond_1
    invoke-static {}, Leyh;->a()Leyh;

    move-result-object v0

    invoke-virtual {v0, p0}, Leyh;->c(Ljava/util/List;)I

    goto :goto_0
.end method

.method static synthetic a(Lewl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .param p0, "x0"    # Lewl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Z

    .prologue
    .line 78
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 2100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 2102
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2103
    :cond_0
    const/4 v0, 0x0

    .line 2114
    :goto_0
    return v0

    :cond_1
    move-object v0, p1

    move-object v2, p2

    move-object v5, p6

    .line 2106
    invoke-static/range {v0 .. v6}, Leyt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 2107
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 2108
    const/4 v0, 0x0

    goto :goto_0

    .line 2110
    :cond_2
    if-eqz p8, :cond_6

    .line 2112
    const-string/jumbo v2, "motorola"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "XT1710-08"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const-string/jumbo v2, "smartisan"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 2113
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "OD105"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2114
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 2117
    :cond_5
    sget v2, Leuj$h;->dingtalk_phone_photo:I

    invoke-static {v0, v1, v2}, Leyt;->a(JI)Z

    .line 2119
    :cond_6
    const/4 v0, 0x1

    .line 78
    goto :goto_0
.end method

.method static synthetic a(Lewl;Z)Z
    .locals 1
    .param p0, "x0"    # Lewl;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lewl;->n:Z

    return v0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 685
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "conf_cached_flag"

    invoke-static {v0, v1}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 686
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "conf_photo_cached_flag"

    invoke-static {v0, v1}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method public static b(JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "uid"    # J
    .param p2, "stateCode"    # Ljava/lang/String;
    .param p3, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 1404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1405
    .local v0, "mobiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;>;"
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;-><init>()V

    .line 1406
    .local v1, "userMobile":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    iput-wide p0, v1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->uid:J

    .line 1407
    iput-object p2, v1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->stateCode:Ljava/lang/String;

    .line 1408
    iget-object v2, v1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->stateCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1409
    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->stateCode:Ljava/lang/String;

    .line 1411
    :cond_0
    iput-object p3, v1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    .line 1412
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1413
    invoke-static {}, Leyh;->a()Leyh;

    move-result-object v2

    invoke-virtual {v2, v0}, Leyh;->a(Ljava/util/List;)I

    .line 1414
    return-void
.end method

.method static synthetic b(Lewl;)V
    .locals 3
    .param p0, "x0"    # Lewl;

    .prologue
    const/4 v2, 0x1

    .line 78
    .line 1804
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    new-instance v1, Lewl$3;

    invoke-direct {v1, p0}, Lewl$3;-><init>(Lewl;)V

    invoke-virtual {v0, v2, v2, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(IILcmi;)V

    .line 78
    return-void
.end method

.method static synthetic b(Lewl;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;ZLewl$c;)V
    .locals 0
    .param p0, "x0"    # Lewl;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lewl$c;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lewl;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;ZLewl$c;)V

    return-void
.end method

.method static synthetic b(Lewl;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lewl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    .line 3312
    iput-object p1, p0, Lewl;->v:Ljava/lang/String;

    .line 3313
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lewl;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3314
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lewl;->x:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    return-void
.end method

.method static synthetic c(Lewl;)I
    .locals 1
    .param p0, "x0"    # Lewl;

    .prologue
    .line 78
    iget v0, p0, Lewl;->e:I

    return v0
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 879
    const-string/jumbo v0, "screen_notification"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lewl;)I
    .locals 1
    .param p0, "x0"    # Lewl;

    .prologue
    .line 78
    iget v0, p0, Lewl;->f:I

    return v0
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 1123
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "save_mc_2_local_contact"

    invoke-static {v0, v1}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 1124
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "save_new_mc_2_local_contact"

    invoke-static {v0, v1}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 1125
    return-void
.end method

.method static synthetic e(Lewl;)Z
    .locals 1
    .param p0, "x0"    # Lewl;

    .prologue
    .line 2996
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Leyx;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2997
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2999
    :cond_0
    const/4 v0, 0x1

    .line 78
    goto :goto_0
.end method

.method static synthetic f(Lewl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lewl;

    .prologue
    .line 78
    iget-object v0, p0, Lewl;->t:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static f()V
    .locals 3

    .prologue
    .line 1684
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1685
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1689
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 9
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 1004
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->f()Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, "backNum":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1011
    const/4 v1, 0x0

    .line 1013
    .local v1, "cardDetached":Z
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1014
    .local v5, "values":Ljava/util/Map;
    const-string/jumbo v6, "id"

    invoke-interface {v5, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    const-string/jumbo v6, "usernumber"

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    .line 1017
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Lewp;->d(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1018
    const-string/jumbo v6, "tele_conf"

    sget-object v7, Lewl;->a:Ljava/lang/String;

    const-string/jumbo v8, "Sim card valid"

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    invoke-static {}, Lewp;->b()Ljava/lang/String;

    move-result-object v3

    .line 1020
    .local v3, "phoneNum":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1021
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1022
    const/4 v1, 0x1

    .line 1023
    const-string/jumbo v6, "callnumber="

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    .end local v3    # "phoneNum":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 1033
    const-string/jumbo v6, "STATISTICS"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1034
    .local v4, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-eqz v4, :cond_0

    .line 1035
    const-string/jumbo v6, "phone_cardseparation_click"

    invoke-interface {v4, v6, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1026
    .end local v4    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    .restart local v3    # "phoneNum":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "tele_conf"

    sget-object v7, Lewl;->a:Ljava/lang/String;

    const-string/jumbo v8, "Local num is null"

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1029
    .end local v3    # "phoneNum":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "tele_conf"

    sget-object v7, Lewl;->a:Ljava/lang/String;

    const-string/jumbo v8, "Sim card invalid"

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const/4 v1, 0x1

    goto :goto_1
.end method

.method static synthetic g(Lewl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lewl;

    .prologue
    .line 78
    iget-object v0, p0, Lewl;->u:Ljava/lang/String;

    return-object v0
.end method

.method public static g()V
    .locals 3

    .prologue
    .line 1693
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1694
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1698
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic h(Lewl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lewl;

    .prologue
    .line 78
    iget-object v0, p0, Lewl;->v:Ljava/lang/String;

    return-object v0
.end method

.method public static h()V
    .locals 11

    .prologue
    .line 1745
    invoke-static {}, Lcms;->a()I

    move-result v6

    .line 1746
    .local v6, "version":I
    const/16 v7, 0xa

    if-gt v6, v7, :cond_0

    .line 1748
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    const-string/jumbo v8, "phone"

    invoke-virtual {v7, v8}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 1749
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1750
    .local v0, "clazz":Ljava/lang/Class;
    const-string/jumbo v7, "getITelephony"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1751
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1752
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ITelephony;

    .line 1753
    .local v2, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1767
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v2    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return-void

    .line 1754
    :catch_0
    move-exception v1

    .line 1755
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1759
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-string/jumbo v7, "android.os.ServiceManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1760
    .restart local v0    # "clazz":Ljava/lang/Class;
    const-string/jumbo v7, "getService"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1761
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "phone"

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 1762
    .local v3, "ibinder":Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1763
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v3    # "ibinder":Landroid/os/IBinder;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 1764
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lewl;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "toUid"    # J
    .param p3, "stateCode"    # Ljava/lang/String;
    .param p4, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1394
    sget-object v0, Lewl;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    .line 1395
    .local v6, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v0, Lewl$17;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lewl$17;-><init>(Lewl;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1401
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;ZLewl$c;)V
    .locals 8
    .param p1, "keyUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "stateCode"    # Ljava/lang/String;
    .param p3, "calleeNumber"    # Ljava/lang/String;
    .param p4, "canBeCached"    # Z
    .param p5, "callback"    # Lewl$c;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1366
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 1367
    :cond_0
    if-eqz p5, :cond_1

    .line 1368
    const/4 v0, 0x0

    invoke-interface {p5, v0}, Lewl$c;->a(Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;)V

    .line 1391
    :cond_1
    :goto_0
    return-void

    .line 1372
    :cond_2
    sget-object v0, Lewl;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v7

    .line 1373
    .local v7, "clearThread":Lcom/alibaba/doraemon/threadpool/Thread;
    if-eqz v7, :cond_1

    .line 1374
    new-instance v0, Lewl$16;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lewl$16;-><init>(Lewl;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;ZLewl$c;)V

    invoke-interface {v7, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Leym;)V
    .locals 4
    .param p1, "infoObject"    # Leym;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 939
    if-eqz p1, :cond_0

    iget-wide v0, p1, Leym;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 940
    :cond_0
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewl;->a:Ljava/lang/String;

    const-string/jumbo v2, "Call user uid invalid"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    :goto_0
    return-void

    .line 944
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lewl$6;

    invoke-direct {v1, p0, p1}, Lewl$6;-><init>(Lewl;Leym;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final a(Leym;Z)V
    .locals 4
    .param p1, "obj"    # Leym;
    .param p2, "startTimer"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 917
    iput-object p1, p0, Lewl;->j:Leym;

    .line 918
    if-eqz p2, :cond_0

    .line 919
    iget-object v0, p0, Lewl;->s:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 920
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lewl;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 921
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lewl;->s:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 924
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8
    .param p1, "infoJson"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    :try_start_0
    const-string/jumbo v4, "tele_conf"

    sget-object v5, Lewl;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Update pick up config: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 276
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "isAuto"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 277
    new-instance v4, Lorg/json/JSONException;

    const-string/jumbo v5, "No value for isAuto"

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 307
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 280
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string/jumbo v4, "isAuto"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 282
    .local v2, "isAutoInt":I
    if-lez v2, :cond_5

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Lewl;->d:Z

    .line 283
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    const-string/jumbo v5, "auto_pick_up"

    iget-boolean v6, p0, Lewl;->d:Z

    invoke-static {v4, v5, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 284
    iget-boolean v4, p0, Lewl;->d:Z

    if-eqz v4, :cond_0

    .line 289
    const-string/jumbo v4, "conf"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 290
    .local v0, "confObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 291
    const-string/jumbo v4, "method"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 292
    const-string/jumbo v4, "method"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lewl;->e:I

    .line 293
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    const-string/jumbo v5, "method_pick_up"

    iget v6, p0, Lewl;->e:I

    invoke-static {v4, v5, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 296
    :cond_3
    const-string/jumbo v4, "delay"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 297
    const-string/jumbo v4, "delay"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lewl;->f:I

    .line 298
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    const-string/jumbo v5, "delay_pick_up"

    iget v6, p0, Lewl;->f:I

    invoke-static {v4, v5, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 301
    :cond_4
    const-string/jumbo v4, "retry"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 302
    const-string/jumbo v4, "retry"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lewl;->c:I

    .line 303
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    const-string/jumbo v5, "max_try_pick_up"

    iget v6, p0, Lewl;->c:I

    invoke-static {v4, v5, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 310
    .end local v0    # "confObject":Lorg/json/JSONObject;
    .end local v2    # "isAutoInt":I
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 311
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 282
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "isAutoInt":I
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "isFirst"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1165
    :goto_0
    return-void

    .line 1137
    :cond_0
    sget-object v0, Lewl;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lewl$9;

    invoke-direct {v1, p0, p1, p2}, Lewl$9;-><init>(Lewl;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lewl$b;)V
    .locals 2
    .param p2, "listener"    # Lewl$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lewl$b;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1424
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v1, Lewl;->a:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 1425
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v1, Lewl$18;

    invoke-direct {v1, p0, p1, p2}, Lewl$18;-><init>(Lewl;Ljava/util/List;Lewl$b;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1434
    return-void
.end method

.method public final a(ZLcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;)V
    .locals 7
    .param p1, "beBusiness"    # Z
    .param p2, "numInfo"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 727
    if-eqz p2, :cond_0

    iget-object v3, p2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->contactName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 728
    :cond_0
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lewl;->a:Ljava/lang/String;

    const-string/jumbo v5, "Contact name is null"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    :cond_1
    :goto_0
    return-void

    .line 731
    :cond_2
    iget-object v3, p2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->numList:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->numList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 732
    :cond_3
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lewl;->a:Ljava/lang/String;

    const-string/jumbo v5, "Contact number list is empty"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 735
    :cond_4
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lewl;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Update number: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->numList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v1, "newContact":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->numList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 738
    .local v2, "number":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 742
    iget-object v4, p0, Lewl;->o:Ljava/util/Map;

    iget-object v5, p2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->contactName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 743
    .local v0, "cacheNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_6

    .line 744
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "cacheNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 745
    .restart local v0    # "cacheNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    iget-object v4, p0, Lewl;->o:Ljava/util/Map;

    iget-object v5, p2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->contactName:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 749
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 750
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 751
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 757
    .end local v0    # "cacheNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "number":Ljava/lang/String;
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 758
    iget-object v3, p2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->contactName:Ljava/lang/String;

    invoke-direct {p0, v3, p1, v1}, Lewl;->a(Ljava/lang/String;ZLjava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public final b(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;ZLewl$c;)V
    .locals 8
    .param p1, "keyUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "stateCode"    # Ljava/lang/String;
    .param p3, "calleeNumber"    # Ljava/lang/String;
    .param p4, "canBeCached"    # Z
    .param p5, "callbacks"    # Lewl$c;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1645
    if-nez p1, :cond_1

    .line 1647
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewl;->a:Ljava/lang/String;

    const-string/jumbo v2, "Number return"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    if-eqz p5, :cond_0

    .line 1649
    invoke-interface {p5, v3}, Lewl$c;->a(Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;)V

    .line 1677
    :cond_0
    :goto_0
    return-void

    .line 1653
    :cond_1
    sget-object v0, Lewl;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v7

    .line 1654
    .local v7, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v0, Lewl$21;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lewl$21;-><init>(Lewl;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;ZLewl$c;)V

    invoke-interface {v7, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 321
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Update pick up status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string/jumbo v0, "FALSE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lewl;->g:Z

    .line 328
    :cond_0
    :goto_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "can_auto_pick_up"

    iget-boolean v2, p0, Lewl;->g:Z

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 330
    :cond_1
    return-void

    .line 325
    :cond_2
    const-string/jumbo v0, "TRUE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lewl;->g:Z

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "isFirst"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1218
    :goto_0
    return-void

    .line 1177
    :cond_0
    sget-object v0, Lewl;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lewl$10;

    invoke-direct {v1, p0, p1, p2}, Lewl$10;-><init>(Lewl;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 8
    .param p1, "number"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 605
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 606
    iget-object v5, p0, Lewl;->o:Ljava/util/Map;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lewl;->o:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 607
    iget-object v5, p0, Lewl;->o:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 608
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 611
    iget-object v6, p0, Lewl;->o:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 612
    .local v4, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 613
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 614
    .local v3, "num":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 617
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, "confNum":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "inputNumber":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 620
    :cond_2
    const/4 v5, 0x1

    .line 628
    .end local v0    # "confNum":Ljava/lang/String;
    .end local v1    # "inputNumber":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "num":Ljava/lang/String;
    .end local v4    # "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 9
    .param p1, "numberStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 767
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    const-string/jumbo v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 771
    .local v4, "numbers":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    .line 774
    const-string/jumbo v5, "tele_conf"

    sget-object v6, Lewl;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Update number "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Leuj$l;->dt_conference_name_in_address_book:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, "contactName":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 777
    .local v3, "newContact":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_5

    .line 778
    aget-object v5, v4, v2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 781
    iget-object v5, p0, Lewl;->o:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 782
    .local v0, "cacheNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_3

    .line 783
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "cacheNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .restart local v0    # "cacheNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    iget-object v5, p0, Lewl;->o:Ljava/util/Map;

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    .end local v0    # "cacheNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 788
    .restart local v0    # "cacheNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    aget-object v5, v4, v2

    .line 789
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 790
    :cond_4
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 795
    .end local v0    # "cacheNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 796
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5, v3}, Lewl;->a(Ljava/lang/String;ZLjava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public final e()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1325
    iget-object v4, p0, Lewl;->m:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 1326
    iget-object v4, p0, Lewl;->m:Ljava/util/List;

    .line 1342
    :goto_0
    return-object v4

    .line 1328
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lewl;->m:Ljava/util/List;

    .line 1329
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    const-string/jumbo v5, "conf_local_contact_filter_info"

    invoke-static {v4, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1330
    .local v1, "filterJson":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1332
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1333
    .local v2, "filterJsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1334
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 1335
    .local v0, "filter":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1336
    iget-object v4, p0, Lewl;->m:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "filter":Ljava/lang/String;
    .end local v2    # "filterJsonArray":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :catch_0
    move-exception v4

    .line 1342
    :cond_2
    iget-object v4, p0, Lewl;->m:Ljava/util/List;

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2
    .param p1, "incomingNumber"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 971
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lewl$7;

    invoke-direct {v1, p0, p1}, Lewl$7;-><init>(Lewl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 989
    return-void
.end method
