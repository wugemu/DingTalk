.class public Lexm;
.super Ljava/lang/Object;
.source "VideoConfPresenter.java"

# interfaces
.implements Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;
.implements Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;
.implements Lcom/alivc/live/conf/AlivcVideoConfCollectStatusListener;
.implements Lcom/alivc/live/conf/AlivcVideoConfListener;
.implements Lcom/alivc/live/conf/AlivcVideoConfNetworkListener;
.implements Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

.field private c:Landroid/app/Activity;

.field private d:Landroid/content/Context;

.field private e:Ldq;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:Lied$h;

.field private h:Lcjo$a;

.field private i:Ljava/util/TimerTask;

.field private j:Ljava/util/concurrent/ScheduledFuture;

.field private k:Lcom/alivc/live/conf/AlivcVideoConf;

.field private l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

.field private m:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

.field private n:Z

.field private o:Z

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:J

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-class v0, Lexm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexm;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;)V
    .locals 4
    .param p1, "view"    # Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-boolean v3, p0, Lexm;->n:Z

    .line 124
    iput-boolean v3, p0, Lexm;->o:Z

    .line 129
    iput v3, p0, Lexm;->t:I

    .line 130
    iput v2, p0, Lexm;->u:I

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lexm;->v:J

    .line 132
    iput-boolean v2, p0, Lexm;->w:Z

    iput-boolean v2, p0, Lexm;->x:Z

    iput-boolean v2, p0, Lexm;->y:Z

    .line 133
    iput-boolean v2, p0, Lexm;->z:Z

    .line 134
    iput-boolean v2, p0, Lexm;->A:Z

    .line 135
    iput-boolean v2, p0, Lexm;->B:Z

    iput-boolean v2, p0, Lexm;->C:Z

    iput-boolean v2, p0, Lexm;->D:Z

    iput-boolean v2, p0, Lexm;->E:Z

    .line 136
    iput-boolean v3, p0, Lexm;->F:Z

    .line 142
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lexm;->d:Landroid/content/Context;

    .line 143
    iput-object p1, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    .line 144
    iget-object v0, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->e()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lexm;->c:Landroid/app/Activity;

    .line 146
    iget-object v0, p0, Lexm;->c:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Invalid param"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iget-object v0, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    invoke-interface {v0, p0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->setPresenter(Lcjd;)V

    .line 151
    :cond_1
    return-void
.end method

.method private a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)I
    .locals 1
    .param p1, "windowObj"    # Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .prologue
    .line 2587
    iget-object v0, p0, Lexm;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 2588
    :cond_0
    const/4 v0, -0x1

    .line 2590
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lexm;Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)I
    .locals 1
    .param p0, "x0"    # Lexm;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lexm;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lexm;Ljava/util/List;ZLcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;Lcma;)I
    .locals 10
    .param p0, "x0"    # Lexm;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    .param p4, "x4"    # Lcma;

    .prologue
    const/4 v0, -0x1

    .line 94
    .line 42517
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v0

    .line 42518
    :cond_1
    :goto_0
    return v1

    .line 42520
    :cond_2
    iget-object v1, p0, Lexm;->p:Ljava/util/List;

    if-nez v1, :cond_3

    .line 42521
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lexm;->p:Ljava/util/List;

    .line 42523
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42524
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 42525
    if-eqz v0, :cond_4

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 42529
    new-instance v4, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    invoke-direct {v4}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;-><init>()V

    .line 42530
    new-instance v5, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-direct {v5}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;-><init>()V

    iput-object v5, v4, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    .line 42531
    iget-object v5, v4, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v5, v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUser(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 42532
    iget-object v5, v4, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v5, p3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 42535
    iget-object v5, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 42536
    if-gez v1, :cond_5

    .line 42537
    iget-object v1, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 42539
    :cond_5
    iget-object v5, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42540
    iget-object v4, v4, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42542
    sget-object v4, Lexm;->a:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Add cache "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move v0, v1

    move v1, v0

    .line 42557
    goto :goto_1

    .line 42559
    :cond_7
    if-eqz p4, :cond_1

    .line 42560
    invoke-interface {p4, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private a(ZJZ)I
    .locals 6
    .param p1, "all"    # Z
    .param p2, "specialUid"    # J
    .param p4, "muted"    # Z

    .prologue
    .line 2679
    const/4 v1, -0x1

    .line 2680
    .local v1, "position":I
    iget-object v4, p0, Lexm;->p:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2681
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 2682
    iget-object v4, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 2683
    .local v3, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2686
    iget-object v4, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    .line 2687
    .local v2, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz p1, :cond_1

    .line 2688
    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v4, v4, p2

    if-eqz v4, :cond_0

    .line 2689
    iget-object v4, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v4, p4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setMicMuted(Z)V

    .line 2681
    .end local v2    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2692
    .restart local v2    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v4, v4, p2

    if-nez v4, :cond_0

    .line 2693
    iget-object v4, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v4, p4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setMicMuted(Z)V

    .line 2694
    move v1, v0

    .line 2701
    .end local v0    # "i":I
    .end local v2    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v3    # "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_2
    return v1
.end method

.method static synthetic a(Lexm;J)J
    .locals 1
    .param p0, "x0"    # Lexm;
    .param p1, "x1"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Lexm;->v:J

    return-wide p1
.end method

.method private a(J)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    .locals 7
    .param p1, "uid"    # J

    .prologue
    .line 2567
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-lez v3, :cond_0

    iget-object v3, p0, Lexm;->p:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2568
    :cond_0
    const/4 v0, 0x0

    .line 2583
    :cond_1
    :goto_0
    return-object v0

    .line 2570
    :cond_2
    const/4 v0, 0x0

    .line 2571
    .local v0, "keyWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    iget-object v3, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 2572
    .local v2, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v2, :cond_3

    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    .line 2574
    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2577
    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    .line 2578
    .local v1, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_3

    .line 2579
    move-object v0, v2

    .line 2580
    goto :goto_0
.end method

.method static synthetic a(Lexm;Lcom/alivc/live/conf/AlivcVideoConfUserInfo;)Lcom/alivc/live/conf/AlivcVideoConfUserInfo;
    .locals 0
    .param p0, "x0"    # Lexm;
    .param p1, "x1"    # Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    .prologue
    .line 94
    iput-object p1, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    return-object p1
.end method

.method static synthetic a(Lexm;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lexm;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lexm;->H:Ljava/lang/String;

    return-object p1
.end method

.method private a(JLcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;Lcma;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "userState"    # Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2481
    .local p4, "indexCallback":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 2510
    :goto_0
    return-void

    .line 2484
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v1, Lexm$35;

    invoke-direct {v1, p0, p3, p4}, Lexm$35;-><init>(Lexm;Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;Lcma;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lexm;Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;)V
    .locals 5
    .param p0, "x0"    # Lexm;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;

    .prologue
    const/4 v4, 0x0

    .line 94
    .line 42716
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->action:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->conferenceId:Ljava/lang/String;

    .line 42719
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->conferenceId:Ljava/lang/String;

    iget-object v1, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    .line 42720
    invoke-virtual {v1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getConferenceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 42721
    :cond_0
    sget-object v1, Lexm;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Invalid conf "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->conferenceId:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42733
    :cond_1
    :goto_1
    return-void

    .line 42721
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0

    .line 42725
    :cond_3
    sget-object v0, Lexm;->a:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Conf action push "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->action:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ","

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->conferenceId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42727
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->action:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x67

    if-eq v0, v1, :cond_4

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->action:Ljava/lang/Integer;

    .line 42728
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_4

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->action:Ljava/lang/Integer;

    .line 42729
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_5

    .line 42730
    :cond_4
    iget-object v0, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v0, :cond_1

    .line 42733
    invoke-virtual {p0, v4}, Lexm;->c(Z)V

    goto :goto_1

    .line 42734
    :cond_5
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->action:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_1

    .line 42736
    sget-object v0, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v1, "action: stop-ring"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42737
    invoke-virtual {p0, v4}, Lexm;->b(Z)V

    goto :goto_1
.end method

.method static synthetic a(Lexm;Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;)V
    .locals 9
    .param p0, "x0"    # Lexm;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 94
    .line 42742
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->status:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->conferenceId:Ljava/lang/String;

    .line 42745
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->conferenceId:Ljava/lang/String;

    iget-object v3, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    .line 42746
    invoke-virtual {v3}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getConferenceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 42747
    :cond_0
    sget-object v1, Lexm;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Invalid conf "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->conferenceId:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42810
    :cond_1
    :goto_1
    return-void

    .line 42747
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0

    .line 42751
    :cond_3
    sget-object v2, Lexm;->a:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "User "

    aput-object v4, v3, v1

    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->uid:Ljava/lang/Long;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string/jumbo v4, " status "

    aput-object v4, v3, v6

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->status:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42753
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lexm;->a(J)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v2

    .line 42754
    if-eqz v2, :cond_c

    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v3, :cond_c

    .line 42755
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    .line 42756
    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    .line 42757
    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUserState()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    move-result-object v5

    .line 42759
    invoke-direct {p0, v2}, Lexm;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)I

    move-result v2

    .line 42760
    iget-object v6, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->status:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v7, :cond_5

    .line 42761
    iget v3, p0, Lexm;->u:I

    if-ne v3, v0, :cond_4

    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-object v0, p0, Lexm;->I:Ljava/lang/String;

    .line 43150
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 42762
    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-nez v0, :cond_4

    .line 42763
    iget-wide v0, p0, Lexm;->v:J

    invoke-direct {p0, v0, v1}, Lexm;->a(J)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v0

    .line 42764
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v1, :cond_4

    .line 42765
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserStateDes(Ljava/lang/String;)V

    .line 42766
    iget-object v1, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v1, :cond_4

    .line 42767
    iget-object v1, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-direct {p0, v0}, Lexm;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)I

    move-result v0

    iget-wide v6, p0, Lexm;->v:J

    invoke-interface {v1, v3, v0, v6, v7}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;IJ)V

    .line 42771
    :cond_4
    iget-object v0, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v0, :cond_1

    .line 42772
    iget-object v0, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_KICK_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;IJ)V

    goto/16 :goto_1

    .line 42775
    :cond_5
    iget-object v6, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->status:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUserStateByStatus(I)Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    move-result-object v6

    .line 42776
    sget-object v7, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_REJECTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne v6, v7, :cond_6

    .line 42777
    iget v7, p0, Lexm;->t:I

    if-nez v7, :cond_6

    .line 42778
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_remote_is_reject_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lexm;->H:Ljava/lang/String;

    .line 42780
    invoke-virtual {p0, v0}, Lexm;->c(Z)V

    goto/16 :goto_1

    .line 42785
    :cond_6
    sget-object v7, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq v6, v7, :cond_7

    sget-object v7, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_LEAVED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq v6, v7, :cond_7

    sget-object v7, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_CONNECTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne v6, v7, :cond_a

    .line 42789
    :cond_7
    sget-object v7, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne v6, v7, :cond_9

    sget-object v7, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq v5, v7, :cond_8

    sget-object v7, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_CALL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne v5, v7, :cond_9

    :cond_8
    move v0, v1

    .line 42793
    :cond_9
    if-eqz v0, :cond_a

    .line 42795
    sget-object v0, Lexm;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dst "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " <-- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", return."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 42799
    :cond_a
    if-eq v5, v6, :cond_1

    .line 42800
    invoke-static {v5, v6}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->changeState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)Z

    move-result v0

    .line 42801
    if-eqz v0, :cond_b

    .line 42802
    sget-object v1, Lexm;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->uid:Ljava/lang/Long;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " state change "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, " to "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, " <--- "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42803
    invoke-virtual {v3, v6}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 42805
    :cond_b
    iget-object v0, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v0, :cond_1

    .line 42806
    iget-object v0, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;IJ)V

    goto/16 :goto_1

    .line 42811
    :cond_c
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->status:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v7, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->status:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v6, :cond_1

    .line 42812
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->status:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUserStateByStatus(I)Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    move-result-object v0

    .line 42813
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v1, Lexm$37;

    invoke-direct {v1, p0, p1}, Lexm$37;-><init>(Lexm;Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;)V

    invoke-direct {p0, v2, v3, v0, v1}, Lexm;->a(JLcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;Lcma;)V

    .line 42835
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne v0, v1, :cond_1

    .line 42837
    invoke-direct {p0}, Lexm;->s()V

    goto/16 :goto_1
.end method

.method static synthetic a(Lexm;Z)V
    .locals 4
    .param p0, "x0"    # Lexm;
    .param p1, "x1"    # Z

    .prologue
    const/4 v1, 0x0

    .line 94
    .line 42119
    iget-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexm;->c:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 42120
    :cond_0
    :goto_0
    return-void

    .line 42123
    :cond_1
    invoke-virtual {p0, v1}, Lexm;->b(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v2

    .line 42124
    if-eqz v2, :cond_0

    .line 42125
    invoke-virtual {p0, p1}, Lexm;->e(Z)V

    .line 42126
    iget-object v0, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v0, :cond_2

    .line 42128
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    :goto_1
    invoke-virtual {v3, v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 42129
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-nez p1, :cond_5

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setCameraMuted(Z)V

    .line 42131
    :cond_2
    iget-object v0, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-nez v0, :cond_3

    .line 42132
    new-instance v0, Lorg/webrtc/sdk/SophonSurfaceView;

    iget-object v1, p0, Lexm;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/webrtc/sdk/SophonSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    .line 42133
    sget-object v0, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v1, "NEW SURFACE VIEW for preview"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42135
    :cond_3
    sget-object v0, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v1, "Start local preview"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42136
    iget-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    iget-object v1, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v0, v1}, Lcom/alivc/live/conf/AlivcVideoConf;->openPreview(Lorg/webrtc/sdk/SophonSurfaceView;)V

    goto :goto_0

    .line 42128
    :cond_4
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    goto :goto_1

    :cond_5
    move v0, v1

    .line 42129
    goto :goto_2
.end method

.method static synthetic a(Lexm;ZZ)V
    .locals 1
    .param p0, "x0"    # Lexm;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    const/4 v0, 0x1

    .line 94
    invoke-direct {p0, v0, v0}, Lexm;->b(ZZ)V

    return-void
.end method

.method static synthetic a(Lexm;)Z
    .locals 1
    .param p0, "x0"    # Lexm;

    .prologue
    .line 94
    iget-boolean v0, p0, Lexm;->F:Z

    return v0
.end method

.method static synthetic b(Lexm;J)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    .locals 1
    .param p0, "x0"    # Lexm;
    .param p1, "x1"    # J

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lexm;->a(J)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;
    .locals 1
    .param p0, "x0"    # Lexm;

    .prologue
    .line 94
    iget-object v0, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    return-object v0
.end method

.method private b(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)V
    .locals 14
    .param p1, "windowObject"    # Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 2883
    if-eqz p1, :cond_0

    iget-object v10, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    if-nez v10, :cond_1

    .line 3032
    :cond_0
    :goto_0
    return-void

    .line 2887
    :cond_1
    :try_start_0
    iget-object v10, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    .line 40178
    iget v8, v10, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->c:I

    .line 2888
    .local v8, "subFlag":I
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeAudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .line 2889
    .local v7, "streamType":Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
    const/4 v4, 0x0

    .line 2890
    .local v4, "hasSmall":Z
    const/4 v2, 0x0

    .line 2891
    .local v2, "hasLarge":Z
    const/4 v3, 0x0

    .line 2892
    .local v3, "hasShare":Z
    and-int/lit8 v10, v8, 0x2

    if-eqz v10, :cond_5

    .line 2893
    const/4 v4, 0x1

    .line 2894
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeSmall:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .line 2904
    :cond_2
    :goto_1
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;->AliRTCSdk_Auto_Mode:Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    .line 2905
    .local v0, "destRenderMode":Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;
    if-eqz v3, :cond_3

    .line 2906
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;->AliRTCSdk_FillBlcak_Mode:Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    .line 2910
    :cond_3
    invoke-virtual {p1, v7}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;

    move-result-object v5

    .line 2911
    .local v5, "info":Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;
    if-eqz v5, :cond_7

    .line 2992
    :cond_4
    :goto_2
    if-nez v5, :cond_15

    .line 2993
    sget-object v11, Lexm;->a:Ljava/lang/String;

    const/4 v10, 0x2

    new-array v12, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v13, "sub media info fail: "

    aput-object v13, v12, v10

    const/4 v13, 0x1

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_3
    aput-object v10, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3027
    .end local v0    # "destRenderMode":Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;
    .end local v2    # "hasLarge":Z
    .end local v3    # "hasShare":Z
    .end local v4    # "hasSmall":Z
    .end local v5    # "info":Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;
    .end local v7    # "streamType":Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
    .end local v8    # "subFlag":I
    :catch_0
    move-exception v1

    .line 3028
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 2895
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "hasLarge":Z
    .restart local v3    # "hasShare":Z
    .restart local v4    # "hasSmall":Z
    .restart local v7    # "streamType":Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
    .restart local v8    # "subFlag":I
    :cond_5
    and-int/lit8 v10, v8, 0x4

    if-eqz v10, :cond_6

    .line 2896
    const/4 v2, 0x1

    .line 2897
    :try_start_1
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeLarge:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    goto :goto_1

    .line 2898
    :cond_6
    and-int/lit8 v10, v8, 0x8

    if-eqz v10, :cond_2

    .line 2899
    const/4 v3, 0x1

    .line 2900
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeScreenShare:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    goto :goto_1

    .line 2914
    .restart local v0    # "destRenderMode":Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;
    .restart local v5    # "info":Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;
    :cond_7
    const/4 v6, 0x0

    .line 2917
    .local v6, "needCheckAudio":Z
    if-eqz v3, :cond_c

    .line 2918
    const/4 v3, 0x0

    .line 2920
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;->AliRTCSdk_Auto_Mode:Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    .line 2922
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeLarge:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .line 2923
    invoke-virtual {p1, v7}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;

    move-result-object v5

    .line 2924
    if-eqz v5, :cond_9

    .line 2926
    iget-object v10, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    if-eqz v10, :cond_8

    .line 2927
    iget-object v10, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->a(I)V

    .line 2929
    :cond_8
    const/4 v2, 0x1

    .line 2930
    goto :goto_2

    .line 2933
    :cond_9
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeSmall:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .line 2934
    invoke-virtual {p1, v7}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;

    move-result-object v5

    .line 2935
    if-eqz v5, :cond_b

    .line 2937
    iget-object v10, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    if-eqz v10, :cond_a

    .line 2938
    iget-object v10, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->a(I)V

    .line 2940
    :cond_a
    const/4 v4, 0x1

    .line 2941
    goto :goto_2

    .line 2944
    :cond_b
    const/4 v6, 0x1

    .line 2947
    :cond_c
    if-nez v2, :cond_d

    if-eqz v4, :cond_13

    .line 2948
    :cond_d
    if-eqz v2, :cond_10

    .line 2949
    const/4 v2, 0x0

    .line 2951
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeSmall:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .line 2952
    invoke-virtual {p1, v7}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;

    move-result-object v5

    .line 2953
    if-eqz v5, :cond_f

    .line 2955
    iget-object v10, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    if-eqz v10, :cond_e

    .line 2956
    iget-object v10, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->a(I)V

    .line 2958
    :cond_e
    const/4 v4, 0x1

    .line 2959
    goto/16 :goto_2

    .line 2961
    :cond_f
    const/4 v6, 0x1

    .line 2963
    :cond_10
    if-eqz v4, :cond_13

    .line 2964
    const/4 v4, 0x0

    .line 2966
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeLarge:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .line 2967
    invoke-virtual {p1, v7}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;

    move-result-object v5

    .line 2968
    if-eqz v5, :cond_12

    .line 2970
    iget-object v10, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    if-eqz v10, :cond_11

    .line 2971
    iget-object v10, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->a(I)V

    .line 2973
    :cond_11
    const/4 v2, 0x1

    .line 2974
    goto/16 :goto_2

    .line 2976
    :cond_12
    const/4 v6, 0x1

    .line 2979
    :cond_13
    if-eqz v6, :cond_4

    .line 2980
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeAudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .line 2981
    invoke-virtual {p1, v7}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;

    move-result-object v5

    .line 2982
    if-eqz v5, :cond_4

    .line 2984
    iget-object v10, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    if-eqz v10, :cond_4

    .line 2985
    iget-object v10, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->a(I)V

    .line 2986
    iget-object v10, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    const/4 v11, 0x1

    .line 40206
    iput-boolean v11, v10, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->d:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 3029
    .end local v0    # "destRenderMode":Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;
    .end local v2    # "hasLarge":Z
    .end local v3    # "hasShare":Z
    .end local v4    # "hasSmall":Z
    .end local v5    # "info":Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;
    .end local v6    # "needCheckAudio":Z
    .end local v7    # "streamType":Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
    .end local v8    # "subFlag":I
    :catch_1
    move-exception v1

    .line 3030
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 2993
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v0    # "destRenderMode":Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;
    .restart local v2    # "hasLarge":Z
    .restart local v3    # "hasShare":Z
    .restart local v4    # "hasSmall":Z
    .restart local v5    # "info":Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;
    .restart local v7    # "streamType":Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
    .restart local v8    # "subFlag":I
    :cond_14
    :try_start_2
    const-string/jumbo v10, ""

    goto/16 :goto_3

    .line 2998
    :cond_15
    if-nez v2, :cond_16

    if-eqz v4, :cond_18

    .line 2999
    :cond_16
    sget-object v10, Lexm;->a:Ljava/lang/String;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "no need unsub media info when Small/Large"

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3025
    :cond_17
    :goto_4
    sget-object v11, Lexm;->a:Ljava/lang/String;

    const/4 v10, 0x4

    new-array v12, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v13, "sub media info: "

    aput-object v13, v12, v10

    const/4 v13, 0x1

    if-eqz v7, :cond_1d

    invoke-virtual {v7}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_5
    aput-object v10, v12, v13

    const/4 v10, 0x2

    const-string/jumbo v13, ", "

    aput-object v13, v12, v10

    const/4 v10, 0x3

    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v10

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3026
    iget-object v10, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    iget-object v11, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v10, v5, v0, v11}, Lcom/alivc/live/conf/AlivcVideoConf;->subscribe(Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;Lorg/webrtc/sdk/SophonSurfaceView;)V

    goto/16 :goto_0

    .line 3000
    :cond_18
    if-eqz v3, :cond_1a

    .line 3001
    sget-object v10, Lexm;->a:Ljava/lang/String;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "unsub media info: Small/Large"

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3002
    sget-object v10, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeLarge:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-virtual {p1, v10}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;

    move-result-object v9

    .line 3003
    .local v9, "unSubInfo":Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;
    if-eqz v9, :cond_19

    .line 3004
    iget-object v10, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v10, v9}, Lcom/alivc/live/conf/AlivcVideoConf;->unSubscribeVideoStream(Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;)V

    .line 3006
    :cond_19
    sget-object v10, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeSmall:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-virtual {p1, v10}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;

    move-result-object v9

    .line 3007
    if-eqz v9, :cond_17

    .line 3008
    iget-object v10, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v10, v9}, Lcom/alivc/live/conf/AlivcVideoConf;->unSubscribeVideoStream(Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;)V

    goto :goto_4

    .line 3011
    .end local v9    # "unSubInfo":Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;
    :cond_1a
    sget-object v10, Lexm;->a:Ljava/lang/String;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "unsub media info: Small/Large/Share"

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3012
    sget-object v10, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeSmall:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-virtual {p1, v10}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;

    move-result-object v9

    .line 3013
    .restart local v9    # "unSubInfo":Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;
    if-eqz v9, :cond_1b

    .line 3014
    iget-object v10, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v10, v9}, Lcom/alivc/live/conf/AlivcVideoConf;->unSubscribeVideoStream(Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;)V

    .line 3016
    :cond_1b
    sget-object v10, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeLarge:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-virtual {p1, v10}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;

    move-result-object v9

    .line 3017
    if-eqz v9, :cond_1c

    .line 3018
    iget-object v10, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v10, v9}, Lcom/alivc/live/conf/AlivcVideoConf;->unSubscribeVideoStream(Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;)V

    .line 3020
    :cond_1c
    sget-object v10, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeScreenShare:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-virtual {p1, v10}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;

    move-result-object v9

    .line 3021
    if-eqz v9, :cond_17

    .line 3022
    iget-object v10, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v10, v9}, Lcom/alivc/live/conf/AlivcVideoConf;->unSubscribeVideoStream(Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;)V

    goto/16 :goto_4

    .line 3025
    .end local v9    # "unSubInfo":Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;
    :cond_1d
    const-string/jumbo v10, ""
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5
.end method

.method private b(ZZ)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "beForce"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 3146
    if-eqz p1, :cond_4

    .line 3147
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lexm;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3163
    :cond_0
    :goto_0
    return-void

    .line 3150
    :cond_1
    iget-object v1, p0, Lexm;->d:Landroid/content/Context;

    invoke-static {v1}, Lief;->a(Landroid/content/Context;)Lief;

    move-result-object v1

    .line 41101
    iget-object v2, v1, Lief;->a:Liey;

    if-eqz v2, :cond_2

    .line 41102
    iget-object v1, v1, Lief;->a:Liey;

    invoke-virtual {v1}, Liey;->d()V

    .line 3151
    :cond_2
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;->AlivcVideoConfAudioOutputModeSpeaker:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    .line 3159
    .local v0, "destOutputMode":Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;
    :goto_1
    iget-object v1, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    if-eqz v1, :cond_3

    .line 3160
    iget-object v1, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v1, v0}, Lcom/alivc/live/conf/AlivcVideoConf;->setAudioOutputMode(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;)V

    .line 3162
    :cond_3
    sget-object v1, Lexm;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Enable speaker: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3153
    .end local v0    # "destOutputMode":Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;
    :cond_4
    if-nez p2, :cond_5

    invoke-virtual {p0}, Lexm;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3156
    :cond_5
    iget-object v1, p0, Lexm;->d:Landroid/content/Context;

    invoke-static {v1}, Lief;->a(Landroid/content/Context;)Lief;

    move-result-object v1

    .line 42092
    iget-object v2, v1, Lief;->a:Liey;

    if-eqz v2, :cond_6

    .line 42093
    iget-object v1, v1, Lief;->a:Liey;

    invoke-virtual {v1}, Liey;->c()V

    .line 3157
    :cond_6
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;->AlivcVideoConfAudioOutputModeReceiver:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    .restart local v0    # "destOutputMode":Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;
    goto :goto_1
.end method

.method static synthetic b(Lexm;Z)Z
    .locals 1
    .param p0, "x0"    # Lexm;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lexm;->C:Z

    return v0
.end method

.method static synthetic c(Lexm;)Lcom/alivc/live/conf/AlivcVideoConf;
    .locals 1
    .param p0, "x0"    # Lexm;

    .prologue
    .line 94
    iget-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    return-object v0
.end method

.method static synthetic c(Lexm;Z)V
    .locals 1
    .param p0, "x0"    # Lexm;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    .line 42141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lexm;->b(ZZ)V

    .line 94
    return-void
.end method

.method static synthetic d(Lexm;)Lcom/alivc/live/conf/AlivcVideoConfUserInfo;
    .locals 1
    .param p0, "x0"    # Lexm;

    .prologue
    .line 94
    iget-object v0, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    return-object v0
.end method

.method static synthetic d(Lexm;Z)Z
    .locals 0
    .param p0, "x0"    # Lexm;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lexm;->x:Z

    return p1
.end method

.method static synthetic e(Lexm;)I
    .locals 1
    .param p0, "x0"    # Lexm;

    .prologue
    .line 94
    iget v0, p0, Lexm;->u:I

    return v0
.end method

.method static synthetic e(Lexm;Z)Z
    .locals 0
    .param p0, "x0"    # Lexm;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lexm;->w:Z

    return p1
.end method

.method static synthetic f(Lexm;)V
    .locals 0
    .param p0, "x0"    # Lexm;

    .prologue
    .line 94
    invoke-direct {p0}, Lexm;->s()V

    return-void
.end method

.method static synthetic f(Lexm;Z)Z
    .locals 0
    .param p0, "x0"    # Lexm;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lexm;->A:Z

    return p1
.end method

.method static synthetic g(Lexm;)Z
    .locals 1
    .param p0, "x0"    # Lexm;

    .prologue
    .line 94
    iget-boolean v0, p0, Lexm;->z:Z

    return v0
.end method

.method static synthetic g(Lexm;Z)Z
    .locals 0
    .param p0, "x0"    # Lexm;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lexm;->z:Z

    return p1
.end method

.method static synthetic h(Lexm;)Z
    .locals 1
    .param p0, "x0"    # Lexm;

    .prologue
    .line 94
    iget-boolean v0, p0, Lexm;->w:Z

    return v0
.end method

.method static synthetic i(Lexm;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lexm;

    .prologue
    .line 94
    iget-object v0, p0, Lexm;->H:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lexm;)I
    .locals 1
    .param p0, "x0"    # Lexm;

    .prologue
    .line 94
    iget v0, p0, Lexm;->t:I

    return v0
.end method

.method static synthetic k(Lexm;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lexm;

    .prologue
    .line 94
    iget-object v0, p0, Lexm;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic l(Lexm;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lexm;

    .prologue
    .line 94
    iget-object v0, p0, Lexm;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Lexm;)Z
    .locals 1
    .param p0, "x0"    # Lexm;

    .prologue
    .line 94
    iget-boolean v0, p0, Lexm;->x:Z

    return v0
.end method

.method static synthetic n(Lexm;)J
    .locals 2
    .param p0, "x0"    # Lexm;

    .prologue
    .line 94
    iget-wide v0, p0, Lexm;->v:J

    return-wide v0
.end method

.method static synthetic o(Lexm;)Z
    .locals 1
    .param p0, "x0"    # Lexm;

    .prologue
    .line 94
    iget-boolean v0, p0, Lexm;->D:Z

    return v0
.end method

.method static synthetic p(Lexm;)Z
    .locals 1
    .param p0, "x0"    # Lexm;

    .prologue
    .line 94
    iget-boolean v0, p0, Lexm;->A:Z

    return v0
.end method

.method static synthetic r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lexm;->a:Ljava/lang/String;

    return-object v0
.end method

.method private s()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 2326
    invoke-direct {p0}, Lexm;->t()V

    .line 2327
    iget-object v0, p0, Lexm;->i:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    .line 2328
    new-instance v0, Lexm$34;

    invoke-direct {v0, p0}, Lexm$34;-><init>(Lexm;)V

    iput-object v0, p0, Lexm;->i:Ljava/util/TimerTask;

    .line 2359
    :cond_0
    invoke-static {}, Leyy;->a()Leyy;

    move-result-object v0

    iget-object v1, p0, Lexm;->i:Ljava/util/TimerTask;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Leyy;->a(Ljava/util/TimerTask;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lexm;->j:Ljava/util/concurrent/ScheduledFuture;

    .line 2360
    return-void
.end method

.method private t()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2363
    iget-object v0, p0, Lexm;->i:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 2364
    iget-object v0, p0, Lexm;->i:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 2365
    iput-object v2, p0, Lexm;->i:Ljava/util/TimerTask;

    .line 2367
    :cond_0
    iget-object v0, p0, Lexm;->j:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 2368
    iget-object v0, p0, Lexm;->j:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 2369
    iput-object v2, p0, Lexm;->j:Ljava/util/concurrent/ScheduledFuture;

    .line 2371
    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    .locals 6
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lexm;->p:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lexm;->p:Ljava/util/List;

    .line 194
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-ltz p1, :cond_0

    iget-object v3, p0, Lexm;->p:Ljava/util/List;

    .line 196
    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lt p1, v3, :cond_1

    .line 216
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 200
    :cond_1
    :try_start_1
    iget-object v3, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 201
    .local v1, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v1, :cond_2

    .line 204
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 193
    .end local v1    # "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 207
    :cond_3
    :try_start_2
    iget-object v3, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 208
    .local v0, "mainObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v0, :cond_0

    .line 209
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    .line 210
    iput-object v0, p0, Lexm;->q:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 211
    iput p1, p0, Lexm;->r:I

    .line 212
    sget-object v2, Lexm;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Main window index: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lexm;->r:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lexm;->q:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lexm;->p:Ljava/util/List;

    return-object v0
.end method

.method public final a(IIILcom/alibaba/android/teleconf/data/VideoConfInviteObject;Ljava/lang/String;)V
    .locals 5
    .param p1, "maxMemNumber"    # I
    .param p2, "videoType"    # I
    .param p3, "bizType"    # I
    .param p4, "inviteObject"    # Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;
    .param p5, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 155
    .line 4106
    iget-object v0, p0, Lexm;->d:Landroid/content/Context;

    if-nez v0, :cond_7

    .line 156
    :cond_0
    :goto_0
    iput p1, p0, Lexm;->s:I

    .line 157
    iput p2, p0, Lexm;->t:I

    .line 158
    iput-object p5, p0, Lexm;->G:Ljava/lang/String;

    .line 159
    if-eqz p4, :cond_b

    .line 4442
    if-nez p4, :cond_8

    .line 8136
    :goto_1
    iget-object v0, p0, Lexm;->f:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 8137
    new-instance v0, Lexm$30;

    invoke-direct {v0, p0}, Lexm$30;-><init>(Lexm;)V

    iput-object v0, p0, Lexm;->f:Landroid/content/BroadcastReceiver;

    .line 8183
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 8184
    const-string/jumbo v1, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8185
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8187
    iget-object v1, p0, Lexm;->e:Ldq;

    if-nez v1, :cond_2

    .line 8188
    iget-object v1, p0, Lexm;->d:Landroid/content/Context;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iput-object v1, p0, Lexm;->e:Ldq;

    .line 8190
    :cond_2
    iget-object v1, p0, Lexm;->e:Ldq;

    iget-object v2, p0, Lexm;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 8203
    iget-object v0, p0, Lexm;->g:Lied$h;

    if-nez v0, :cond_3

    .line 8204
    new-instance v0, Lexm$31;

    invoke-direct {v0, p0}, Lexm$31;-><init>(Lexm;)V

    iput-object v0, p0, Lexm;->g:Lied$h;

    .line 8292
    :cond_3
    iget-object v0, p0, Lexm;->h:Lcjo$a;

    if-nez v0, :cond_4

    .line 8293
    new-instance v0, Lexm$32;

    invoke-direct {v0, p0}, Lexm$32;-><init>(Lexm;)V

    iput-object v0, p0, Lexm;->h:Lcjo$a;

    .line 8312
    :cond_4
    iget-object v0, p0, Lexm;->d:Landroid/content/Context;

    invoke-static {v0}, Lief;->a(Landroid/content/Context;)Lief;

    move-result-object v0

    .line 9077
    iget-object v1, v0, Lief;->a:Liey;

    if-eqz v1, :cond_5

    .line 9078
    iget-object v0, v0, Lief;->a:Liey;

    invoke-virtual {v0}, Liey;->a()V

    .line 8313
    :cond_5
    iget-object v0, p0, Lexm;->d:Landroid/content/Context;

    invoke-static {v0}, Lief;->a(Landroid/content/Context;)Lief;

    move-result-object v0

    iget-object v1, p0, Lexm;->g:Lied$h;

    .line 10059
    iget-object v2, v0, Lief;->a:Liey;

    if-eqz v2, :cond_6

    .line 10060
    iget-object v0, v0, Lief;->a:Liey;

    invoke-virtual {v0, v1}, Liey;->a(Lied$h;)V

    .line 8314
    :cond_6
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    iget-object v1, p0, Lexm;->h:Lcjo$a;

    invoke-virtual {v0, v1}, Leyn;->a(Lcjo$a;)V

    .line 167
    const/4 v0, 0x1

    .line 10141
    invoke-direct {p0, v0, v4}, Lexm;->b(ZZ)V

    .line 169
    iput-boolean v4, p0, Lexm;->D:Z

    .line 170
    return-void

    .line 4109
    :cond_7
    sget-object v0, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v1, "Init video conf instance"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4110
    iget-object v0, p0, Lexm;->d:Landroid/content/Context;

    invoke-static {v0}, Lewy;->a(Landroid/content/Context;)Lcom/alivc/live/conf/AlivcVideoConf;

    move-result-object v0

    iput-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    .line 4111
    iget-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    if-eqz v0, :cond_0

    .line 4112
    iget-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v0, p0}, Lcom/alivc/live/conf/AlivcVideoConf;->setVideoConfCallBackListener(Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;)V

    .line 4113
    iget-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v0, p0}, Lcom/alivc/live/conf/AlivcVideoConf;->setVideoConfCollectStatusListener(Lcom/alivc/live/conf/AlivcVideoConfCollectStatusListener;)V

    .line 4114
    iget-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v0, p0}, Lcom/alivc/live/conf/AlivcVideoConf;->setVideoConfNotifyListener(Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;)V

    .line 4115
    iget-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v0, p0}, Lcom/alivc/live/conf/AlivcVideoConf;->setVideoConfErrorListener(Lcom/alivc/live/conf/AlivcVideoConfListener;)V

    goto/16 :goto_0

    .line 4446
    :cond_8
    iget-object v0, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    if-nez v0, :cond_9

    .line 4447
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    invoke-direct {v0}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;-><init>()V

    iput-object v0, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    .line 4449
    :cond_9
    iget-object v0, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    iget-object v1, p4, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->conferenceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->setConferenceId(Ljava/lang/String;)V

    .line 4450
    iget-object v0, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    iget-object v1, p4, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->setAppid(Ljava/lang/String;)V

    .line 4451
    iget-object v0, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    iget-object v1, p4, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->conferenceNonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->setNonce(Ljava/lang/String;)V

    .line 4452
    iget-object v0, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    iget v1, p4, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->conferenceTimestamp:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->setTimestamp(J)V

    .line 4453
    iget-object v0, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->setUserId(Ljava/lang/String;)V

    .line 4454
    iget-object v0, p4, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->gslbs:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 4455
    iget-object v0, p4, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->gslbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4456
    new-array v0, v0, [Ljava/lang/String;

    .line 4457
    iget-object v1, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    iget-object v2, p4, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->gslbs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->setGslb([Ljava/lang/String;)V

    .line 4459
    :cond_a
    iget-object v0, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    iget-object v1, p4, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->setToken(Ljava/lang/String;)V

    .line 4460
    iget-object v0, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    iget-object v1, p4, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->setSession(Ljava/lang/String;)V

    .line 4462
    iget-wide v0, p4, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->hostId:J

    iput-wide v0, p0, Lexm;->v:J

    .line 4463
    iget v0, p4, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->bizType:I

    iput v0, p0, Lexm;->u:I

    .line 4464
    iget-object v0, p4, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->bizExtInfo:Ljava/lang/String;

    iput-object v0, p0, Lexm;->I:Ljava/lang/String;

    .line 4466
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    new-instance v1, Levo;

    invoke-direct {v1, p4}, Levo;-><init>(Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;)V

    .line 5179
    iput-object v1, v0, Levm;->d:Levo;

    .line 4467
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    iget-wide v2, p4, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->callerId:J

    .line 6160
    iput-wide v2, v0, Levm;->a:J

    .line 4468
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    iget-object v1, p4, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->callerNick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Levm;->a(Ljava/lang/String;)V

    .line 4469
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    iget-wide v2, p4, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->startTime:J

    invoke-virtual {v0, v2, v3}, Levm;->a(J)V

    .line 4470
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    iget-wide v2, p4, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->confDuration:J

    .line 7156
    iput-wide v2, v0, Levm;->b:J

    goto/16 :goto_1

    .line 162
    :cond_b
    iput p3, p0, Lexm;->u:I

    goto/16 :goto_1
.end method

.method public final a(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V
    .locals 12
    .param p1, "member"    # Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 661
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    if-nez v5, :cond_1

    .line 662
    :cond_0
    sget-object v5, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v6, "Invalid members when kickoff members"

    invoke-static {v5, v6}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    :goto_0
    return-void

    .line 665
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    .line 666
    .local v3, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v3, :cond_2

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_3

    .line 667
    :cond_2
    sget-object v5, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v6, "Invalid user"

    invoke-static {v5, v6}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 670
    :cond_3
    new-instance v4, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    invoke-direct {v4}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;-><init>()V

    .line 671
    .local v4, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v4, :cond_4

    .line 672
    iput-object p1, v4, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    .line 674
    :cond_4
    invoke-direct {p0, v4}, Lexm;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)I

    move-result v2

    .line 676
    .local v2, "position":I
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;-><init>()V

    .line 677
    .local v1, "confControlModel":Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;->control:Ljava/lang/Integer;

    .line 678
    iget-object v5, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    invoke-virtual {v5}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getConferenceId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;->conferenceId:Ljava/lang/String;

    .line 679
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;->uids:Ljava/util/List;

    .line 680
    iget-object v5, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;->uids:Ljava/util/List;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    iget v5, p0, Lexm;->u:I

    if-ne v5, v11, :cond_5

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-object v5, p0, Lexm;->I:Ljava/lang/String;

    .line 12150
    invoke-static {v5, v10}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v5

    .line 682
    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    iget-wide v6, p0, Lexm;->v:J

    .line 683
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    .line 684
    invoke-virtual {p0, v10}, Lexm;->b(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v0

    .line 685
    .local v0, "callerWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v0, :cond_5

    iget-object v5, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v5, :cond_5

    .line 686
    iget-object v5, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserStateDes(Ljava/lang/String;)V

    .line 687
    iget-object v5, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v5, :cond_5

    .line 688
    iget-object v5, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    sget-object v6, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    iget-wide v8, p0, Lexm;->v:J

    invoke-interface {v5, v6, v10, v8, v9}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;IJ)V

    .line 693
    .end local v0    # "callerWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_5
    sget-object v5, Lexm;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Kickoff user"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string/jumbo v5, "EVENTBUTLER"

    .line 696
    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lexm$43;

    invoke-direct {v6, p0, v2}, Lexm$43;-><init>(Lexm;I)V

    const-class v7, Leyo$d;

    iget-object v8, p0, Lexm;->c:Landroid/app/Activity;

    invoke-interface {v5, v6, v7, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leyo$d;

    .line 695
    invoke-static {v1, v5}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;Leyo$d;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;Z)V
    .locals 10
    .param p1, "memberObject"    # Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;
    .param p2, "muted"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 775
    if-eqz p1, :cond_0

    .line 776
    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    .line 777
    .local v3, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v3, :cond_0

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 826
    .end local v3    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_0
    :goto_0
    return-void

    .line 780
    .restart local v3    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    const/4 v4, 0x0

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-direct {p0, v4, v6, v7, p2}, Lexm;->a(ZJZ)I

    move-result v2

    .line 782
    .local v2, "position":I
    new-instance v4, Lexm$3;

    invoke-direct {v4, p0, p2, v2}, Lexm$3;-><init>(Lexm;ZI)V

    const-class v5, Leyo$d;

    iget-object v6, p0, Lexm;->c:Landroid/app/Activity;

    .line 783
    invoke-static {v4, v5, v6}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leyo$d;

    .line 816
    .local v1, "operListener":Leyo$d;
    iget-object v4, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    if-eqz v4, :cond_0

    .line 817
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;-><init>()V

    .line 818
    .local v0, "confControlModel":Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;
    if-eqz p2, :cond_2

    const/4 v4, 0x2

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;->control:Ljava/lang/Integer;

    .line 819
    iget-object v4, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    invoke-virtual {v4}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getConferenceId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;->conferenceId:Ljava/lang/String;

    .line 820
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Long;

    const/4 v5, 0x0

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;->uids:Ljava/util/List;

    .line 821
    invoke-static {v0, v1}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;Leyo$d;)V

    .line 823
    sget-object v4, Lexm;->a:Ljava/lang/String;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Mute member: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ","

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 818
    :cond_2
    const/4 v4, 0x3

    goto :goto_1
.end method

.method public final a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;Z)V
    .locals 17
    .param p1, "windowObject"    # Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    .param p2, "audioOnly"    # Z

    .prologue
    .line 830
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v9, :cond_0

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v9}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v9

    if-nez v9, :cond_1

    .line 15879
    :cond_0
    :goto_0
    return-void

    .line 833
    :cond_1
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    .line 834
    .local v6, "subState":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;
    const/4 v9, 0x1

    .line 12174
    iput-boolean v9, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->a:Z

    .line 836
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v9}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v8

    .line 838
    .local v8, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    sget-object v9, Lexm;->a:Ljava/lang/String;

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "Watch/Publish user: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, ", beMain "

    aput-object v12, v10, v11

    const/4 v11, 0x3

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    .line 840
    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, ", hasSub "

    aput-object v12, v10, v11

    const/4 v11, 0x5

    .line 12194
    iget-boolean v12, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->b:Z

    .line 841
    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 838
    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const/4 v3, 0x0

    .line 13178
    .local v3, "firstFroPublish":Z
    iget v2, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->c:I

    .line 13194
    .local v2, "currFlag":I
    iget-boolean v9, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->b:Z

    .line 845
    if-nez v9, :cond_9

    .line 846
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-nez v9, :cond_2

    .line 847
    new-instance v9, Lorg/webrtc/sdk/SophonSurfaceView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lexm;->c:Landroid/app/Activity;

    invoke-direct {v9, v10}, Lorg/webrtc/sdk/SophonSurfaceView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p1

    iput-object v9, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    .line 848
    sget-object v9, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v10, "NEW SURFACE VIEW AND OVERLAY"

    invoke-static {v9, v10}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    :cond_2
    iget-wide v10, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v9

    invoke-virtual {v9}, Lccr;->c()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-eqz v9, :cond_8

    .line 851
    const/4 v4, 0x1

    .line 852
    .local v4, "flag":I
    if-nez p2, :cond_3

    .line 853
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 854
    const/16 v4, 0x9

    .line 863
    :cond_3
    :goto_1
    invoke-virtual {v6, v4}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->a(I)V

    .line 864
    const/4 v9, 0x1

    .line 13206
    iput-boolean v9, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->d:Z

    .line 866
    invoke-direct/range {p0 .. p1}, Lexm;->b(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)V

    .line 912
    .end local v4    # "flag":I
    :cond_4
    :goto_2
    iget-wide v10, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v9

    invoke-virtual {v9}, Lccr;->c()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_0

    .line 913
    const/4 v4, 0x1

    .line 914
    .restart local v4    # "flag":I
    if-nez p2, :cond_5

    .line 916
    const/4 v4, 0x7

    .line 918
    :cond_5
    if-nez v3, :cond_1d

    .line 919
    xor-int v9, v2, v4

    if-nez v9, :cond_1d

    .line 920
    sget-object v9, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v10, "The same publish completely, and return"

    invoke-static {v9, v10}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 856
    :cond_6
    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-eqz v9, :cond_7

    .line 857
    const/4 v4, 0x5

    goto :goto_1

    .line 859
    :cond_7
    const/4 v4, 0x3

    goto :goto_1

    .line 868
    .end local v4    # "flag":I
    :cond_8
    const/4 v3, 0x1

    goto :goto_2

    .line 871
    :cond_9
    iget-wide v10, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v9

    invoke-virtual {v9}, Lccr;->c()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-eqz v9, :cond_1c

    .line 872
    const/4 v4, 0x1

    .line 873
    .restart local v4    # "flag":I
    if-nez p2, :cond_a

    .line 874
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 875
    const/16 v4, 0x9

    .line 884
    :cond_a
    :goto_3
    xor-int v9, v4, v2

    if-nez v9, :cond_d

    .line 885
    sget-object v9, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v10, "The same media sub completely, and return"

    invoke-static {v9, v10}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 877
    :cond_b
    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-eqz v9, :cond_c

    .line 878
    const/4 v4, 0x5

    goto :goto_3

    .line 880
    :cond_c
    const/4 v4, 0x3

    goto :goto_3

    .line 890
    :cond_d
    const/4 v7, 0x0

    .line 891
    .local v7, "switchAction":Z
    and-int/lit8 v9, v2, 0x4

    if-eqz v9, :cond_e

    and-int/lit8 v9, v4, 0x2

    if-nez v9, :cond_f

    :cond_e
    and-int/lit8 v9, v2, 0x2

    if-eqz v9, :cond_10

    and-int/lit8 v9, v4, 0x4

    if-eqz v9, :cond_10

    .line 893
    :cond_f
    const/4 v7, 0x1

    .line 896
    :cond_10
    const/4 v5, 0x0

    .line 897
    .local v5, "subRefresh":Z
    const/4 v9, 0x1

    if-ne v4, v9, :cond_11

    const/4 v9, 0x1

    if-gt v2, v9, :cond_12

    :cond_11
    const/4 v9, 0x1

    if-le v4, v9, :cond_13

    const/4 v9, 0x1

    if-ne v2, v9, :cond_13

    .line 899
    :cond_12
    const/4 v5, 0x1

    .line 901
    :cond_13
    invoke-virtual {v6, v4}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->a(I)V

    .line 14206
    iput-boolean v5, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->d:Z

    .line 903
    if-nez v7, :cond_14

    .line 904
    invoke-direct/range {p0 .. p1}, Lexm;->b(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)V

    goto/16 :goto_2

    .line 15035
    :cond_14
    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v9, :cond_4

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    .line 15037
    invoke-virtual {v9}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v9

    if-eqz v9, :cond_4

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    if-eqz v9, :cond_4

    .line 15042
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v9}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v11

    .line 15043
    sget-object v9, Lexm;->a:Ljava/lang/String;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "switch sub media of "

    aput-object v13, v10, v12

    const/4 v12, 0x1

    iget-object v13, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    aput-object v13, v10, v12

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15045
    :try_start_0
    sget-object v9, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeAudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .line 15046
    and-int/lit8 v10, v2, 0x2

    if-eqz v10, :cond_17

    .line 15047
    sget-object v9, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeSmall:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-object v10, v9

    .line 15054
    :goto_4
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    .line 15178
    iget v12, v9, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->c:I

    .line 15055
    sget-object v9, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeAudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .line 15056
    and-int/lit8 v13, v12, 0x2

    if-eqz v13, :cond_19

    .line 15057
    sget-object v9, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeSmall:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .line 15064
    :cond_15
    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;

    move-result-object v13

    .line 15065
    if-nez v13, :cond_1b

    .line 15067
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    if-eqz v10, :cond_16

    .line 15068
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    invoke-virtual {v10, v2}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->a(I)V

    .line 15070
    :cond_16
    sget-object v10, Lexm;->a:Ljava/lang/String;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "No dest stream: "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v9}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 15078
    :catch_0
    move-exception v9

    .line 15079
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 15048
    :cond_17
    and-int/lit8 v10, v2, 0x4

    if-eqz v10, :cond_18

    .line 15049
    :try_start_1
    sget-object v9, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeLarge:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-object v10, v9

    goto :goto_4

    .line 15050
    :cond_18
    and-int/lit8 v10, v2, 0x8

    if-eqz v10, :cond_25

    .line 15051
    sget-object v9, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeScreenShare:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-object v10, v9

    goto :goto_4

    .line 15058
    :cond_19
    and-int/lit8 v13, v12, 0x4

    if-eqz v13, :cond_1a

    .line 15059
    sget-object v9, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeLarge:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    goto :goto_5

    .line 15060
    :cond_1a
    and-int/lit8 v13, v12, 0x8

    if-eqz v13, :cond_15

    .line 15061
    sget-object v9, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeScreenShare:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    goto :goto_5

    .line 15074
    :cond_1b
    sget-object v13, Lexm;->a:Ljava/lang/String;

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "switch subscribe media "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string/jumbo v16, ","

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v14, v15

    invoke-static {v14}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15076
    iget-wide v12, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 15077
    move-object/from16 v0, p0

    iget-object v12, v0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v12, v11, v10, v9}, Lcom/alivc/live/conf/AlivcVideoConf;->switchSubscribeVideoStream(Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 909
    .end local v4    # "flag":I
    .end local v5    # "subRefresh":Z
    .end local v7    # "switchAction":Z
    :cond_1c
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 925
    .restart local v4    # "flag":I
    :cond_1d
    invoke-virtual {v6, v4}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->a(I)V

    .line 15845
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v9, :cond_0

    .line 15848
    sget-object v9, Lexm;->a:Ljava/lang/String;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "publish really "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, ","

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15850
    :try_start_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    if-eqz v9, :cond_0

    .line 15851
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 15852
    const/4 v11, 0x1

    .line 15853
    if-eqz p1, :cond_1e

    .line 15854
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    .line 16178
    iget v11, v11, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->c:I

    .line 15856
    :cond_1e
    and-int/lit8 v12, v11, 0x4

    if-eqz v12, :cond_1f

    .line 15857
    const/4 v10, 0x1

    .line 15859
    :cond_1f
    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_20

    .line 15860
    const/4 v9, 0x1

    .line 15863
    :cond_20
    new-instance v11, Lcom/alivc/live/conf/AlivcPublishConfig;

    invoke-direct {v11}, Lcom/alivc/live/conf/AlivcPublishConfig;-><init>()V

    .line 15864
    if-nez v10, :cond_21

    if-eqz v9, :cond_23

    .line 15865
    :cond_21
    if-eqz v10, :cond_22

    if-eqz v9, :cond_22

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {v11, v9}, Lcom/alivc/live/conf/AlivcPublishConfig;->setEnableDualVideoStream(Z)V

    .line 15866
    sget-object v9, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->Media_Profile_480P_30:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    invoke-virtual {v11, v9}, Lcom/alivc/live/conf/AlivcPublishConfig;->setMediaProfile(Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;)V

    .line 15871
    :goto_7
    if-eqz v3, :cond_24

    .line 15872
    move-object/from16 v0, p0

    iget-object v9, v0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v9, v11}, Lcom/alivc/live/conf/AlivcVideoConf;->publish(Lcom/alivc/live/conf/AlivcPublishConfig;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 15877
    :catch_1
    move-exception v9

    .line 15878
    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 15865
    :cond_22
    const/4 v9, 0x0

    goto :goto_6

    .line 15868
    :cond_23
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v11, v9}, Lcom/alivc/live/conf/AlivcPublishConfig;->setEnableDualVideoStream(Z)V

    .line 15869
    sget-object v9, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->Media_Profile_AudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    invoke-virtual {v11, v9}, Lcom/alivc/live/conf/AlivcPublishConfig;->setMediaProfile(Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;)V

    goto :goto_7

    .line 15874
    :cond_24
    move-object/from16 v0, p0

    iget-object v9, v0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v9, v11}, Lcom/alivc/live/conf/AlivcVideoConf;->rePublish(Lcom/alivc/live/conf/AlivcPublishConfig;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .restart local v5    # "subRefresh":Z
    .restart local v7    # "switchAction":Z
    :cond_25
    move-object v10, v9

    goto/16 :goto_4
.end method

.method public final a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;)V
    .locals 14
    .param p1, "type"    # Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1115
    if-nez p1, :cond_1

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1118
    :cond_1
    sget-object v0, Lexm;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "Playing start ring "

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    invoke-static {}, Lewr;->a()Lewr;

    move-result-object v0

    .line 21160
    iget-object v13, v0, Lewr;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    .line 1121
    .local v13, "ringer":Lcom/alibaba/wukong/openav/external/utils/VoipRinger;
    if-eqz v13, :cond_2

    .line 1122
    invoke-static {}, Lewr;->a()Lewr;

    move-result-object v0

    invoke-virtual {v0}, Lewr;->b()V

    .line 1123
    iget-object v0, p0, Lexm;->m:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-eqz v0, :cond_2

    .line 1124
    const/4 v0, 0x0

    iput-object v0, p0, Lexm;->m:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    .line 1127
    :cond_2
    iget-object v0, p0, Lexm;->m:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-nez v0, :cond_3

    .line 1128
    new-instance v0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    iget-object v2, p0, Lexm;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lexm;->m:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    .line 1132
    :cond_3
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;->RING_INCOMING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

    if-ne p1, v0, :cond_8

    .line 1133
    iget-object v0, p0, Lexm;->d:Landroid/content/Context;

    invoke-static {v0}, Lief;->a(Landroid/content/Context;)Lief;

    move-result-object v0

    .line 21170
    iget-object v2, v0, Lief;->a:Liey;

    if-nez v2, :cond_6

    .line 21171
    const/4 v12, 0x0

    .line 1134
    .local v12, "isBluetoothHeadsetConnected":Z
    :goto_1
    if-nez v12, :cond_4

    .line 1135
    const/4 v0, 0x1

    .line 22141
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lexm;->b(ZZ)V

    .line 1141
    :cond_4
    sget v1, Leuj$k;->incoming:I

    .line 1142
    .local v1, "resId":I
    invoke-static {}, Lewx;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v12, :cond_7

    const/4 v4, 0x1

    .line 1143
    .local v4, "isRingMode":Z
    :goto_2
    iget-object v0, p0, Lexm;->m:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a(IIZZZLcom/alibaba/wukong/openav/external/utils/VoipRinger$a;)V

    .line 1151
    .end local v1    # "resId":I
    .end local v4    # "isRingMode":Z
    .end local v12    # "isBluetoothHeadsetConnected":Z
    :cond_5
    :goto_3
    iget-object v0, p0, Lexm;->m:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-eqz v0, :cond_0

    .line 1152
    invoke-static {}, Lewr;->a()Lewr;

    move-result-object v0

    iget-object v2, p0, Lexm;->m:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lewr;->a(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;Z)V

    goto :goto_0

    .line 21174
    :cond_6
    iget-object v0, v0, Lief;->a:Liey;

    invoke-virtual {v0}, Liey;->i()Z

    move-result v12

    goto :goto_1

    .line 1142
    .restart local v1    # "resId":I
    .restart local v12    # "isBluetoothHeadsetConnected":Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 1144
    .end local v1    # "resId":I
    .end local v12    # "isBluetoothHeadsetConnected":Z
    :cond_8
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;->RING_CALLING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

    if-ne p1, v0, :cond_5

    .line 1145
    const/4 v0, 0x1

    .line 23141
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lexm;->b(ZZ)V

    .line 1147
    sget v1, Leuj$k;->calling_suf:I

    .line 1148
    .restart local v1    # "resId":I
    iget-object v5, p0, Lexm;->m:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move v6, v1

    invoke-virtual/range {v5 .. v11}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a(IIZZZLcom/alibaba/wukong/openav/external/utils/VoipRinger$a;)V

    goto :goto_3
.end method

.method public final a(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 174
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10379
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    sget-object v0, Lexm;->a:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "init default members: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10374
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10377
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    .line 10378
    if-eqz v3, :cond_0

    .line 10381
    const/4 v0, 0x0

    .line 10382
    iget-object v1, p0, Lexm;->I:Ljava/lang/String;

    .line 11109
    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 10383
    const/4 v2, 0x0

    .line 10385
    iget-object v1, p0, Lexm;->p:Ljava/util/List;

    if-nez v1, :cond_6

    .line 10386
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lexm;->p:Ljava/util/List;

    .line 10391
    :goto_1
    new-instance v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;-><init>()V

    .line 10392
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    .line 10393
    new-instance v6, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-direct {v6}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;-><init>()V

    iput-object v6, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    .line 10394
    iget-object v6, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v6, v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUser(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 10395
    iget-object v6, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v7, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v6, v7}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 10396
    iget-object v6, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v7, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->OwnerType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    invoke-virtual {v6, v7}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setType(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;)V

    .line 10397
    iget-wide v6, p0, Lexm;->v:J

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    move-object v0, v1

    .line 10400
    :cond_2
    iget-object v6, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10401
    sget-object v1, Lexm;->a:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "Add cache self "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10403
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v2

    move-object v2, v0

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 10404
    if-eqz v0, :cond_3

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-eqz v3, :cond_3

    .line 10407
    new-instance v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    invoke-direct {v3}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;-><init>()V

    .line 10408
    const/4 v7, 0x0

    iput-boolean v7, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    .line 10409
    new-instance v7, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-direct {v7}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;-><init>()V

    iput-object v7, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    .line 10410
    iget-object v7, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v7, v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUser(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 10411
    iget-object v7, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v8, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v7, v8}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 10412
    iget-wide v8, p0, Lexm;->v:J

    iget-wide v10, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    move-object v2, v3

    .line 10415
    :cond_4
    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v7, v4, v8

    if-nez v7, :cond_5

    .line 10416
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 10418
    :cond_5
    iget-object v7, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 10419
    iget-object v7, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10421
    sget-object v3, Lexm;->a:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "Add cache init "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-wide v10, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 10388
    :cond_6
    iget-object v1, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_1

    .line 10425
    :cond_7
    if-eqz v2, :cond_8

    .line 10426
    iget-object v0, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setCaller(Z)V

    .line 10427
    iget v0, p0, Lexm;->u:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_8

    .line 10428
    iget-object v0, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v3, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_HOLD:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 10429
    iget-object v0, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setCameraMuted(Z)V

    .line 10430
    iget-object v0, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setMicMuted(Z)V

    .line 10431
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 10432
    iget-object v0, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    iget-object v2, p0, Lexm;->c:Landroid/app/Activity;

    sget v3, Leuj$l;->and_conference_member_state_des:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserStateDes(Ljava/lang/String;)V

    .line 10438
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lexm;->a(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    goto/16 :goto_0
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 14
    .param p2, "beRecall"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 587
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    if-nez v8, :cond_1

    .line 588
    :cond_0
    sget-object v8, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v9, "No members when adding members"

    invoke-static {v8, v9}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :goto_0
    return-void

    .line 592
    :cond_1
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;-><init>()V

    .line 593
    .local v0, "addMemberModel":Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;
    iget-object v8, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    invoke-virtual {v8}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getConferenceId()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;->conferenceId:Ljava/lang/String;

    .line 594
    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;->control:Ljava/lang/Integer;

    .line 595
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;->uids:Ljava/util/List;

    .line 597
    const/4 v4, -0x1

    .line 599
    .local v4, "position":I
    if-eqz p2, :cond_7

    .line 600
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    .line 601
    .local v3, "memberObject":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCanRecall()Z

    move-result v8

    if-nez v8, :cond_3

    .line 602
    :cond_2
    sget-object v8, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v9, "Can not recall. "

    invoke-static {v8, v9}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v5

    .line 607
    .local v5, "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v5, :cond_4

    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_5

    .line 608
    :cond_4
    sget-object v8, Lexm;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Not caller "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v10

    invoke-virtual {v10}, Lccr;->c()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 611
    :cond_5
    sget-object v8, Lexm;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Recall member "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v8, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;->uids:Ljava/util/List;

    iget-wide v10, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_RECALL_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 616
    .local v1, "confAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 11705
    const/4 v4, -0x1

    .line 11706
    invoke-direct {p0, v8, v9}, Lexm;->a(J)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .end local v4    # "position":I
    move-result-object v8

    .line 11707
    if-eqz v8, :cond_6

    iget-object v9, v8, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v9, :cond_6

    .line 11708
    iget-object v9, v8, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v10, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v9, v10}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 11709
    invoke-direct {p0, v8}, Lexm;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)I

    move-result v4

    .line 630
    .end local v3    # "memberObject":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;
    .end local v5    # "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .restart local v4    # "position":I
    :cond_6
    :goto_1
    move v6, v4

    .line 631
    .local v6, "recallPosition":I
    move-object v2, v1

    .line 632
    .local v2, "finalConfAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    const-string/jumbo v8, "EVENTBUTLER"

    .line 633
    invoke-static {v8}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v9, Lexm$42;

    invoke-direct {v9, p0, v2, v6}, Lexm$42;-><init>(Lexm;Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;I)V

    const-class v10, Leyo$d;

    iget-object v11, p0, Lexm;->c:Landroid/app/Activity;

    invoke-interface {v8, v9, v10, v11}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Leyo$d;

    .line 632
    invoke-static {v0, v8}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;Leyo$d;)V

    .line 656
    invoke-direct {p0}, Lexm;->s()V

    goto/16 :goto_0

    .line 618
    .end local v1    # "confAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .end local v2    # "finalConfAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .end local v6    # "recallPosition":I
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    .line 619
    .restart local v3    # "memberObject":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 622
    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v7

    .line 623
    .local v7, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v9

    invoke-virtual {v9}, Lccr;->c()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-eqz v9, :cond_8

    .line 624
    iget-object v9, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;->uids:Ljava/util/List;

    iget-wide v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 628
    .end local v3    # "memberObject":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;
    .end local v7    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_9
    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_ADD_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .restart local v1    # "confAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    goto :goto_1
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "bePreview"    # Z

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lexm;->F:Z

    .line 184
    return-void
.end method

.method public final a(ZZ)V
    .locals 7
    .param p1, "audioOnly"    # Z
    .param p2, "notifyAccept"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 387
    iget-object v1, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lexm;->p:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lexm;->p:Ljava/util/List;

    .line 390
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 391
    :cond_0
    sget-object v1, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v2, "Join conference invalid param"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_1
    :goto_0
    return-void

    .line 394
    :cond_2
    iget-boolean v1, p0, Lexm;->C:Z

    if-eqz v1, :cond_3

    .line 395
    sget-object v1, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v2, "Join conf is running"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :cond_3
    iput-boolean v5, p0, Lexm;->C:Z

    .line 399
    sget-object v1, Lexm;->a:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Join conf "

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lexm$22;

    invoke-direct {v2, p0, p1}, Lexm$22;-><init>(Lexm;Z)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 412
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "videoconf_conf_join"

    invoke-interface {v1, v6, v2, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 413
    iget-object v1, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    if-eqz v1, :cond_4

    .line 414
    iget-object v1, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    iget-object v2, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    sget-object v3, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfJoinMode;->AlivcVideoConfJoinModeAutomatic:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfJoinMode;

    invoke-virtual {v1, v2, v3}, Lcom/alivc/live/conf/AlivcVideoConf;->joinChat(Lcom/alivc/live/conf/AlivcVideoConfUserInfo;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfJoinMode;)V

    .line 417
    :cond_4
    invoke-direct {p0}, Lexm;->s()V

    .line 418
    if-eqz p2, :cond_1

    .line 420
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;-><init>()V

    .line 421
    .local v0, "statusModel":Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;
    iget-object v1, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    invoke-virtual {v1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getConferenceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->conferenceId:Ljava/lang/String;

    .line 422
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->uid:Ljava/lang/Long;

    .line 423
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->status:Ljava/lang/Integer;

    .line 424
    new-instance v1, Lexm$33;

    invoke-direct {v1, p0}, Lexm$33;-><init>(Lexm;)V

    invoke-static {v0, v1}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;Leyo$d;)V

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lexm;->r:I

    return v0
.end method

.method public final b(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lexm;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexm;->p:Ljava/util/List;

    .line 232
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lexm;->p:Ljava/util/List;

    .line 234
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 235
    :cond_0
    const/4 v0, 0x0

    .line 237
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;Z)V
    .locals 8
    .param p1, "windowObject"    # Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    .param p2, "exceptShareMedia"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 933
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-nez v3, :cond_1

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    .line 937
    .local v1, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v1, :cond_2

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 938
    :cond_2
    sget-object v2, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v3, "Can not stop watch yourself media data"

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 941
    :cond_3
    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    if-eqz v3, :cond_a

    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    .line 16194
    iget-boolean v3, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->b:Z

    .line 941
    if-eqz v3, :cond_a

    .line 942
    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    .line 17178
    iget v0, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->c:I

    .line 943
    .local v0, "subFlag":I
    if-nez p2, :cond_8

    .line 944
    and-int/lit8 v0, v0, 0x1

    .line 946
    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v3, :cond_4

    .line 947
    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v4, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 948
    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v3, :cond_4

    .line 949
    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lorg/webrtc/sdk/SophonSurfaceView;->setVisibility(I)V

    .line 959
    :cond_4
    :goto_1
    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    invoke-virtual {v3, v0}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->a(I)V

    .line 18085
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    if-eqz v3, :cond_0

    .line 18088
    sget-object v3, Lexm;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "unsubscribe media "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18090
    :try_start_0
    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    .line 18178
    iget v3, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->c:I

    .line 18092
    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    .line 18093
    const/4 v2, 0x1

    .line 18095
    :cond_5
    sget-object v3, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeSmall:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-virtual {p1, v3}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;

    move-result-object v3

    .line 18096
    iget-object v4, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    if-eqz v4, :cond_0

    .line 18097
    sget-object v4, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v5, "unsubscribeMediaData small/large video media"

    invoke-static {v4, v5}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18098
    if-eqz v3, :cond_6

    .line 18099
    iget-object v4, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v4, v3}, Lcom/alivc/live/conf/AlivcVideoConf;->unSubscribeVideoStream(Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;)V

    .line 18101
    :cond_6
    sget-object v3, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeLarge:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-virtual {p1, v3}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;

    move-result-object v3

    .line 18102
    if-eqz v3, :cond_7

    .line 18103
    iget-object v4, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v4, v3}, Lcom/alivc/live/conf/AlivcVideoConf;->unSubscribeVideoStream(Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;)V

    .line 18105
    :cond_7
    if-nez v2, :cond_0

    .line 18106
    sget-object v2, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v3, "unsubscribeMediaData all video media"

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18107
    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeScreenShare:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-virtual {p1, v2}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;

    move-result-object v2

    .line 18108
    iget-object v3, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v3, v2}, Lcom/alivc/live/conf/AlivcVideoConf;->unSubscribeVideoStream(Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 18111
    :catch_0
    move-exception v2

    .line 18112
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 953
    :cond_8
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_9

    .line 954
    and-int/lit8 v0, v0, 0x0

    goto :goto_1

    .line 956
    :cond_9
    and-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 18113
    :catch_1
    move-exception v2

    .line 18114
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 962
    .end local v0    # "subFlag":I
    :cond_a
    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    if-eqz v3, :cond_0

    .line 963
    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    .line 18198
    iput-boolean v2, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->b:Z

    .line 964
    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->a(I)V

    goto/16 :goto_0
.end method

.method public final b(Z)V
    .locals 5
    .param p1, "notify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 458
    if-eqz p1, :cond_0

    iget-object v1, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    if-eqz v1, :cond_0

    .line 459
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;-><init>()V

    .line 460
    .local v0, "statusModel":Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;
    iget-object v1, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    invoke-virtual {v1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getConferenceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->conferenceId:Ljava/lang/String;

    .line 461
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->uid:Ljava/lang/Long;

    .line 462
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->status:Ljava/lang/Integer;

    .line 463
    const-string/jumbo v1, "EVENTBUTLER"

    .line 464
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lexm$39;

    invoke-direct {v2, p0}, Lexm$39;-><init>(Lexm;)V

    const-class v3, Leyo$d;

    iget-object v4, p0, Lexm;->c:Landroid/app/Activity;

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leyo$d;

    .line 463
    invoke-static {v0, v1}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;Leyo$d;)V

    .line 476
    const/4 v1, 0x1

    iput-boolean v1, p0, Lexm;->E:Z

    .line 477
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_local_reject_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lexm;->H:Ljava/lang/String;

    .line 479
    .end local v0    # "statusModel":Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lexm;->c(Z)V

    .line 480
    return-void
.end method

.method public final c()Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lexm;->q:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    return-object v0
.end method

.method public final c(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lexm;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexm;->p:Ljava/util/List;

    .line 256
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lexm;->p:Ljava/util/List;

    .line 258
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 7
    .param p1, "beTerminated"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 484
    iget-boolean v3, p0, Lexm;->B:Z

    if-eqz v3, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lexm;->B:Z

    .line 490
    iget-boolean v3, p0, Lexm;->E:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    if-eqz v3, :cond_2

    .line 491
    iget-object v3, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    invoke-virtual {v3}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getConferenceId()Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "conferenceId":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 493
    sget-object v3, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v4, "Terminate the conference "

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;-><init>()V

    .line 496
    .local v0, "confControlModel":Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;->control:Ljava/lang/Integer;

    .line 497
    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;->conferenceId:Ljava/lang/String;

    .line 498
    const-string/jumbo v3, "EVENTBUTLER"

    .line 499
    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lexm$40;

    invoke-direct {v4, p0}, Lexm$40;-><init>(Lexm;)V

    const-class v5, Leyo$d;

    iget-object v6, p0, Lexm;->c:Landroid/app/Activity;

    invoke-interface {v3, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leyo$d;

    .line 498
    invoke-static {v0, v3}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;Leyo$d;)V

    .line 534
    .end local v0    # "confControlModel":Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;
    .end local v1    # "conferenceId":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v3, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lexm;->D:Z

    if-eqz v3, :cond_4

    .line 535
    iget-object v3, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v3}, Lcom/alivc/live/conf/AlivcVideoConf;->leaveChat()V

    goto :goto_0

    .line 512
    .restart local v1    # "conferenceId":Ljava/lang/String;
    :cond_3
    sget-object v3, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v4, "End the conference "

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    new-instance v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;

    invoke-direct {v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;-><init>()V

    .line 515
    .local v2, "statusModel":Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;
    iput-object v1, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->conferenceId:Ljava/lang/String;

    .line 516
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->uid:Ljava/lang/Long;

    .line 517
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->status:Ljava/lang/Integer;

    .line 518
    const-string/jumbo v3, "EVENTBUTLER"

    .line 519
    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lexm$41;

    invoke-direct {v4, p0}, Lexm$41;-><init>(Lexm;)V

    const-class v5, Leyo$d;

    iget-object v6, p0, Lexm;->c:Landroid/app/Activity;

    invoke-interface {v3, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leyo$d;

    .line 518
    invoke-static {v2, v3}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;Leyo$d;)V

    goto :goto_1

    .line 537
    .end local v1    # "conferenceId":Ljava/lang/String;
    .end local v2    # "statusModel":Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;
    :cond_4
    iget-object v3, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v3, :cond_0

    .line 538
    iget-object v3, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    iget-object v4, p0, Lexm;->H:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public final d()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 266
    iget-object v5, p0, Lexm;->p:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    sget-object v5, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v6, "Create video conf"

    invoke-static {v5, v6}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;-><init>()V

    .line 271
    .local v0, "createModel":Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->hostess:Ljava/lang/Long;

    .line 272
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->callerId:Ljava/lang/Long;

    .line 273
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->d()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->callerNick:Ljava/lang/String;

    .line 274
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->calleeIds:Ljava/util/List;

    .line 275
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->confType:Ljava/lang/Integer;

    .line 276
    iget v5, p0, Lexm;->t:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->calltype:Ljava/lang/Integer;

    .line 277
    iget-object v5, p0, Lexm;->G:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 278
    iget-object v5, p0, Lexm;->G:Ljava/lang/String;

    iput-object v5, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->conversationId:Ljava/lang/String;

    .line 280
    :cond_2
    iget v5, p0, Lexm;->u:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->bizType:Ljava/lang/String;

    .line 282
    const/4 v1, 0x0

    .line 283
    .local v1, "meetingRoomName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 284
    .local v2, "selfWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    iget-object v5, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 285
    .local v4, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v4, :cond_3

    iget-object v6, v4, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    .line 287
    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 290
    iget-object v6, v4, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    .line 291
    .local v3, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    invoke-virtual {v8}, Lccr;->c()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 292
    iget-object v6, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->calleeIds:Ljava/util/List;

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget v6, p0, Lexm;->u:I

    if-ne v6, v10, :cond_3

    iget-object v6, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->extInfo:Ljava/lang/String;

    .line 294
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 295
    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->extInfo:Ljava/lang/String;

    .line 296
    iget-object v6, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->extInfo:Ljava/lang/String;

    iput-object v6, p0, Lexm;->I:Ljava/lang/String;

    .line 297
    iget-object v1, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    goto :goto_1

    .line 300
    :cond_4
    move-object v2, v4

    goto :goto_1

    .line 303
    .end local v3    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v4    # "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_5
    if-eqz v2, :cond_6

    .line 304
    iget-object v5, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v5, v10}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setCaller(Z)V

    .line 305
    iget v5, p0, Lexm;->u:I

    if-ne v5, v10, :cond_6

    .line 306
    iget-object v5, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v6, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_HOLD:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 307
    iget-object v5, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v5, v10}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setCameraMuted(Z)V

    .line 308
    iget-object v5, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v5, v10}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setMicMuted(Z)V

    .line 309
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 310
    iget-object v5, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    iget-object v6, p0, Lexm;->c:Landroid/app/Activity;

    sget v7, Leuj$l;->and_conference_member_state_des:I

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v1, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserStateDes(Ljava/lang/String;)V

    .line 315
    :cond_6
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v5

    new-instance v6, Lexm$1;

    invoke-direct {v6, p0}, Lexm$1;-><init>(Lexm;)V

    invoke-virtual {v5, v6}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 327
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "videoconf_conf_start_click"

    invoke-interface {v5, v12, v6, v12}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 328
    new-instance v5, Lexm$11;

    invoke-direct {v5, p0, v0}, Lexm$11;-><init>(Lexm;Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;)V

    invoke-static {v0, v5}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;Leyo$d;)V

    goto/16 :goto_0
.end method

.method public final d(Z)V
    .locals 8
    .param p1, "muted"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 723
    iget-object v2, p0, Lexm;->p:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-direct {p0, v6, v2, v3, p1}, Lexm;->a(ZJZ)I

    .line 728
    new-instance v2, Lexm$2;

    invoke-direct {v2, p0, p1}, Lexm$2;-><init>(Lexm;Z)V

    const-class v3, Leyo$d;

    iget-object v4, p0, Lexm;->c:Landroid/app/Activity;

    .line 729
    invoke-static {v2, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leyo$d;

    .line 762
    .local v1, "operListener":Leyo$d;
    iget-object v2, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    if-eqz v2, :cond_0

    .line 763
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;-><init>()V

    .line 764
    .local v0, "confControlModel":Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;
    if-eqz p1, :cond_2

    const/16 v2, 0x9

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;->control:Ljava/lang/Integer;

    .line 765
    iget-object v2, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    invoke-virtual {v2}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getConferenceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;->conferenceId:Ljava/lang/String;

    .line 766
    new-array v2, v6, [Ljava/lang/Long;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;->uids:Ljava/util/List;

    .line 767
    invoke-static {v0, v1}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;Leyo$d;)V

    .line 769
    sget-object v2, Lexm;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Mute all "

    aput-object v4, v3, v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 764
    :cond_2
    const/16 v2, 0xa

    goto :goto_1
.end method

.method public final e()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 545
    iget-object v3, p0, Lexm;->d:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 578
    :goto_0
    return-void

    .line 548
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v1, "uncheckList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v3, p0, Lexm;->p:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 550
    iget-object v3, p0, Lexm;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 551
    .local v2, "userWindow":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    .line 553
    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    .line 554
    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 557
    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 560
    .end local v2    # "userWindow":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_2
    sget-object v3, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v4, "Adding member"

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 563
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "choose_mode"

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 564
    const-string/jumbo v3, "activity_identify"

    const-string/jumbo v4, "video_conf_choose_member_identity_flag"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string/jumbo v3, "count_limit"

    iget v4, p0, Lexm;->s:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 566
    const-string/jumbo v3, "count_limit_tips"

    sget v4, Leuj$l;->conference_choose_limit:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 568
    const-string/jumbo v3, "title"

    iget-object v4, p0, Lexm;->d:Landroid/content/Context;

    sget v5, Leuj$l;->dt_conference_select_member_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string/jumbo v3, "hide_org_external"

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 570
    const-string/jumbo v3, "intent_key_show_conference_room"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 571
    invoke-static {}, Levm;->a()Levm;

    move-result-object v3

    invoke-virtual {v3}, Levm;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 572
    const-string/jumbo v3, "key_request_select_user_list"

    check-cast v1, Ljava/util/ArrayList;

    .end local v1    # "uncheckList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 577
    :goto_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, p0, Lexm;->c:Landroid/app/Activity;

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 574
    .restart local v1    # "uncheckList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_3
    const-string/jumbo v3, "seleced_members"

    check-cast v1, Ljava/util/ArrayList;

    .end local v1    # "uncheckList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_2
.end method

.method public final e(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1003
    iget-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    if-nez v0, :cond_0

    .line 1012
    :goto_0
    return-void

    .line 1006
    :cond_0
    iput-boolean p1, p0, Lexm;->n:Z

    .line 1007
    if-eqz p1, :cond_1

    .line 1008
    iget-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    new-instance v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$CameraConfig;

    invoke-direct {v1}, Lcom/alivc/live/conf/AlivcVideoConfConstants$CameraConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alivc/live/conf/AlivcVideoConf;->openCamera(Lcom/alivc/live/conf/AlivcVideoConfConstants$CameraConfig;)V

    goto :goto_0

    .line 1010
    :cond_1
    iget-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v0}, Lcom/alivc/live/conf/AlivcVideoConf;->closeCamera()V

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 971
    iget-object v1, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    if-nez v1, :cond_0

    .line 980
    :goto_0
    return-void

    .line 974
    :cond_0
    invoke-virtual {p0}, Lexm;->j()Z

    move-result v0

    .line 975
    .local v0, "isMuted":Z
    if-eqz v0, :cond_1

    .line 976
    iget-object v1, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v1}, Lcom/alivc/live/conf/AlivcVideoConf;->openMic()V

    goto :goto_0

    .line 978
    :cond_1
    iget-object v1, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v1}, Lcom/alivc/live/conf/AlivcVideoConf;->closeMic()V

    goto :goto_0
.end method

.method public final f(Z)V
    .locals 4
    .param p1, "granted"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1046
    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lexm;->o:Z

    if-nez v2, :cond_1

    .line 1047
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lexm;->b(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v1

    .line 1048
    .local v1, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v2, :cond_0

    .line 1049
    iget-object v2, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCameraMuted()Z

    move-result v0

    .line 1050
    .local v0, "camMuted":Z
    if-nez v0, :cond_0

    .line 1051
    iget-object v2, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v3, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 1052
    iget-object v2, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v3, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->USER_RUN_STATE_VIDEO_RUN:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setRunState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;)V

    .line 1055
    .end local v0    # "camMuted":Z
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lexm$4;

    invoke-direct {v3, p0}, Lexm$4;-><init>(Lexm;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1064
    .end local v1    # "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_1
    iput-boolean p1, p0, Lexm;->o:Z

    .line 1065
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v0}, Lcom/alivc/live/conf/AlivcVideoConf;->onResume()V

    .line 1196
    :cond_0
    return-void
.end method

.method public final g(Z)V
    .locals 4
    .param p1, "up"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1174
    invoke-virtual {p0}, Lexm;->q()Z

    move-result v0

    .line 1175
    .local v0, "beRing":Z
    sget-object v1, Lexm;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Adjust volume: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    if-eqz p1, :cond_2

    .line 1177
    if-eqz v0, :cond_1

    .line 1178
    iget-object v1, p0, Lexm;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a(Landroid/content/Context;)V

    .line 1189
    :cond_0
    :goto_0
    return-void

    .line 1180
    :cond_1
    iget-object v1, p0, Lexm;->d:Landroid/content/Context;

    invoke-static {v1}, Lief;->a(Landroid/content/Context;)Lief;

    move-result-object v1

    .line 24110
    iget-object v2, v1, Lief;->a:Liey;

    if-eqz v2, :cond_0

    .line 24111
    iget-object v1, v1, Lief;->a:Liey;

    invoke-virtual {v1}, Liey;->f()V

    goto :goto_0

    .line 1183
    :cond_2
    if-eqz v0, :cond_3

    .line 1184
    iget-object v1, p0, Lexm;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 1186
    :cond_3
    iget-object v1, p0, Lexm;->d:Landroid/content/Context;

    invoke-static {v1}, Lief;->a(Landroid/content/Context;)Lief;

    move-result-object v1

    .line 24119
    iget-object v2, v1, Lief;->a:Liey;

    if-eqz v2, :cond_0

    .line 24120
    iget-object v1, v1, Lief;->a:Liey;

    invoke-virtual {v1}, Liey;->g()V

    goto :goto_0
.end method

.method public getViewForPublish(Lcom/alivc/live/conf/AlivcVideoConf;)Landroid/view/SurfaceView;
    .locals 1
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;

    .prologue
    .line 1688
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewForSubscribe(Lcom/alivc/live/conf/AlivcVideoConf;)Landroid/view/SurfaceView;
    .locals 1
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;

    .prologue
    .line 1693
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v0}, Lcom/alivc/live/conf/AlivcVideoConf;->onPause()V

    .line 1203
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1207
    iput-boolean v1, p0, Lexm;->B:Z

    .line 1209
    iget-object v0, p0, Lexm;->m:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lexm;->m:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->c()V

    .line 1211
    iput-object v3, p0, Lexm;->m:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    .line 1213
    :cond_0
    invoke-static {}, Lewr;->a()Lewr;

    move-result-object v0

    invoke-virtual {v0}, Lewr;->b()V

    .line 1215
    const/4 v0, 0x1

    .line 24141
    invoke-direct {p0, v0, v1}, Lexm;->b(ZZ)V

    .line 1216
    invoke-direct {p0}, Lexm;->t()V

    .line 24318
    iget-object v0, p0, Lexm;->d:Landroid/content/Context;

    invoke-static {v0}, Lief;->a(Landroid/content/Context;)Lief;

    move-result-object v0

    iget-object v1, p0, Lexm;->g:Lied$h;

    .line 25065
    iget-object v2, v0, Lief;->a:Liey;

    if-eqz v2, :cond_1

    .line 25066
    iget-object v0, v0, Lief;->a:Liey;

    invoke-virtual {v0, v1}, Liey;->b(Lied$h;)V

    .line 24319
    :cond_1
    iget-object v0, p0, Lexm;->d:Landroid/content/Context;

    invoke-static {v0}, Lief;->a(Landroid/content/Context;)Lief;

    move-result-object v0

    .line 25083
    iget-object v1, v0, Lief;->a:Liey;

    if-eqz v1, :cond_2

    .line 25084
    iget-object v0, v0, Lief;->a:Liey;

    invoke-virtual {v0}, Liey;->b()V

    .line 24320
    :cond_2
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    iget-object v1, p0, Lexm;->h:Lcjo$a;

    invoke-virtual {v0, v1}, Leyn;->b(Lcjo$a;)V

    .line 24321
    iput-object v3, p0, Lexm;->g:Lied$h;

    .line 24322
    iput-object v3, p0, Lexm;->h:Lcjo$a;

    .line 25194
    iget-object v0, p0, Lexm;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 25195
    iget-object v0, p0, Lexm;->e:Ldq;

    if-eqz v0, :cond_3

    .line 25196
    iget-object v0, p0, Lexm;->e:Ldq;

    iget-object v1, p0, Lexm;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 25198
    :cond_3
    iput-object v3, p0, Lexm;->f:Landroid/content/BroadcastReceiver;

    .line 26120
    :cond_4
    iget-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    if-eqz v0, :cond_6

    .line 26121
    iget-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v0, v3}, Lcom/alivc/live/conf/AlivcVideoConf;->setVideoConfCallBackListener(Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;)V

    .line 26122
    iget-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v0, v3}, Lcom/alivc/live/conf/AlivcVideoConf;->setVideoConfCollectStatusListener(Lcom/alivc/live/conf/AlivcVideoConfCollectStatusListener;)V

    .line 26123
    iget-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v0, v3}, Lcom/alivc/live/conf/AlivcVideoConf;->setVideoConfNotifyListener(Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;)V

    .line 26125
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    invoke-virtual {v0}, Levm;->c()Z

    move-result v0

    if-nez v0, :cond_5

    .line 26126
    sget-object v0, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v1, "Destroy video conf instance"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26127
    invoke-static {}, Lewy;->a()V

    .line 26128
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    invoke-virtual {v0}, Levm;->b()V

    .line 26131
    :cond_5
    iput-object v3, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    .line 1220
    :cond_6
    return-void
.end method

.method public final j()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 984
    iget-object v1, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    if-nez v1, :cond_1

    .line 988
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v1}, Lcom/alivc/live/conf/AlivcVideoConf;->isMicOpen()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final k()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 993
    invoke-virtual {p0}, Lexm;->l()Z

    move-result v0

    .line 994
    .local v0, "speakerOn":Z
    if-eqz v0, :cond_0

    .line 19141
    invoke-direct {p0, v2, v2}, Lexm;->b(ZZ)V

    .line 999
    :goto_0
    return-void

    .line 997
    :cond_0
    const/4 v1, 0x1

    .line 20141
    invoke-direct {p0, v1, v2}, Lexm;->b(ZZ)V

    goto :goto_0
.end method

.method public final l()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 1074
    const/4 v1, 0x1

    .line 1075
    .local v1, "isSpeakerOn":Z
    iget-object v4, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    if-eqz v4, :cond_0

    .line 1076
    iget-object v4, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v4}, Lcom/alivc/live/conf/AlivcVideoConf;->getAudioOutputMode()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    move-result-object v2

    .line 1077
    .local v2, "outputMode":Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;
    sget-object v4, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;->AlivcVideoConfAudioOutputModeReceiver:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    if-ne v2, v4, :cond_0

    .line 1078
    const/4 v1, 0x0

    .line 1081
    .end local v2    # "outputMode":Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;
    :cond_0
    iget-object v4, p0, Lexm;->d:Landroid/content/Context;

    invoke-static {v4}, Lief;->a(Landroid/content/Context;)Lief;

    move-result-object v4

    .line 20189
    iget-object v5, v4, Lief;->a:Liey;

    if-eqz v5, :cond_1

    .line 20190
    iget-object v4, v4, Lief;->a:Liey;

    invoke-virtual {v4}, Liey;->h()Z

    move-result v0

    .line 1082
    .local v0, "isOn":Z
    :goto_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_1
    return v3

    .end local v0    # "isOn":Z
    :cond_1
    move v0, v3

    .line 20192
    goto :goto_0

    .line 1082
    .restart local v0    # "isOn":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 1016
    iget-boolean v0, p0, Lexm;->n:Z

    return v0
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    if-nez v0, :cond_0

    .line 1025
    :goto_0
    return-void

    .line 1024
    :cond_0
    iget-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v0}, Lcom/alivc/live/conf/AlivcVideoConf;->switchCamera()V

    goto :goto_0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 1069
    iget-boolean v0, p0, Lexm;->o:Z

    return v0
.end method

.method public onCollectStatusInfo(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2060
    .local p2, "hashMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    return-void
.end method

.method public onCompleted(Lcom/alivc/live/conf/AlivcVideoConf;)V
    .locals 4
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1757
    sget-object v0, Lexm;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "The conference completed"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    iget-object v0, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v0, :cond_0

    .line 1759
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lexm$20;

    invoke-direct {v1, p0}, Lexm$20;-><init>(Lexm;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1768
    :cond_0
    return-void
.end method

.method public onConnectFail(Lcom/alivc/live/conf/AlivcVideoConf;)V
    .locals 0
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;

    .prologue
    .line 2103
    return-void
.end method

.method public onFirstFramereceived(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;I)V
    .locals 10
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "subId"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
    .param p5, "costTime"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1413
    sget-object v7, Lexm;->a:Ljava/lang/String;

    const/4 v6, 0x7

    new-array v8, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v9, "("

    aput-object v9, v8, v6

    const/4 v6, 0x1

    aput-object p2, v8, v6

    const/4 v6, 0x2

    const-string/jumbo v9, ")"

    aput-object v9, v8, v6

    const/4 v6, 0x3

    const-string/jumbo v9, "Fir frame ready : "

    aput-object v9, v8, v6

    const/4 v9, 0x4

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    aput-object v6, v8, v9

    const/4 v6, 0x5

    const-string/jumbo v9, ", cost "

    aput-object v9, v8, v6

    const/4 v6, 0x6

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    const-wide/16 v2, 0x0

    .line 1415
    .local v2, "destUid":J
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 29109
    const-wide/16 v6, 0x0

    invoke-static {p2, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1418
    :cond_0
    const/4 v1, 0x1

    .line 1419
    .local v1, "mediaRefresh":Z
    invoke-direct {p0, v2, v3}, Lexm;->a(J)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v5

    .line 1420
    .local v5, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v5, :cond_1

    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    if-eqz v6, :cond_1

    .line 1421
    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    const/4 v7, 0x1

    .line 29198
    iput-boolean v7, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->b:Z

    .line 1422
    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    .line 29202
    iget-boolean v1, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->d:Z

    .line 1424
    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCameraMuted()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1425
    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v7, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v6, v7}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 1434
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 1435
    invoke-direct {p0, v5}, Lexm;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)I

    move-result v0

    .line 1436
    .local v0, "destIndex":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_2

    iget-object v6, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v6, :cond_2

    .line 1437
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    new-instance v7, Lexm$14;

    invoke-direct {v7, p0, v5, v0}, Lexm$14;-><init>(Lexm;Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;I)V

    invoke-virtual {v6, v7}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1447
    .end local v0    # "destIndex":I
    :cond_2
    return-void

    .line 1413
    .end local v1    # "mediaRefresh":Z
    .end local v2    # "destUid":J
    .end local v5    # "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_3
    const-string/jumbo v6, ""

    goto :goto_0

    .line 1427
    .restart local v1    # "mediaRefresh":Z
    .restart local v2    # "destUid":J
    .restart local v5    # "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_4
    sget-object v4, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 1428
    .local v4, "state":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    sget-object v6, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeAudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-ne p4, v6, :cond_5

    .line 1429
    sget-object v4, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 1431
    :cond_5
    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v6, v4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    goto :goto_1
.end method

.method public onGetCurrentParticipantsStatusFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;)V
    .locals 4
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "alivcVideoConfError"    # Lcom/alivc/live/conf/AlivcVideoConfError;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1681
    if-eqz p2, :cond_0

    .line 1682
    sget-object v0, Lexm;->a:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Get Participants "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/alivc/live/conf/AlivcVideoConfError;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    :cond_0
    return-void
.end method

.method public onGetCurrentParticipantsStatusSuccess(Lcom/alivc/live/conf/AlivcVideoConf;[Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;)V
    .locals 18
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "pStatuses"    # [Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;

    .prologue
    .line 1595
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v14, v0

    if-nez v14, :cond_1

    .line 1677
    :cond_0
    return-void

    .line 1598
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v14, v0

    if-ge v9, v14, :cond_0

    .line 1599
    aget-object v12, p2, v9

    .line 1600
    .local v12, "status":Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;
    if-nez v12, :cond_3

    .line 1598
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1604
    :cond_3
    invoke-virtual {v12}, Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;->getUserId()Ljava/lang/String;

    move-result-object v14

    .line 34109
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1605
    .local v6, "destUid":J
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-eqz v14, :cond_2

    .line 1608
    move-object/from16 v0, p0

    iget v14, v0, Lexm;->u:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    move-object/from16 v0, p0

    iget-wide v14, v0, Lexm;->v:J

    cmp-long v14, v6, v14

    if-eqz v14, :cond_2

    .line 1612
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lexm;->a(J)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v13

    .line 1613
    .local v13, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v13, :cond_2

    iget-object v14, v13, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v14, :cond_2

    .line 1614
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lexm;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)I

    move-result v11

    .line 1616
    .local v11, "pos":I
    iget-object v14, v13, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v14}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isMicMuted()Z

    move-result v10

    .line 1617
    .local v10, "micMuted":Z
    invoke-virtual {v12}, Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;->isEnableMic()Z

    move-result v14

    if-ne v10, v14, :cond_5

    .line 1618
    iget-object v15, v13, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-nez v10, :cond_7

    const/4 v14, 0x1

    :goto_2
    invoke-virtual {v15, v14}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setMicMuted(Z)V

    .line 1621
    invoke-virtual {v12}, Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;->isEnableMic()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1622
    sget-object v4, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_UNMUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 1627
    .local v4, "destAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    :goto_3
    move-object v5, v4

    .line 1629
    .local v5, "finalAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    move v8, v11

    .local v8, "finalPos":I
    const/4 v14, -0x1

    if-eq v11, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v14, :cond_5

    .line 1630
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v14

    new-instance v15, Lexm$17;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5, v8}, Lexm$17;-><init>(Lexm;Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;I)V

    invoke-virtual {v14, v15}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1640
    .end local v4    # "destAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .end local v5    # "finalAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .end local v8    # "finalPos":I
    :cond_5
    iget-object v14, v13, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v14}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCameraMuted()Z

    move-result v2

    .line 1641
    .local v2, "cameraMuted":Z
    invoke-virtual {v12}, Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;->isEnableCamera()Z

    move-result v14

    if-ne v2, v14, :cond_2

    .line 1642
    iget-object v15, v13, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-nez v2, :cond_9

    const/4 v14, 0x1

    :goto_4
    invoke-virtual {v15, v14}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setCameraMuted(Z)V

    .line 1643
    invoke-virtual {v12}, Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;->isEnableCamera()Z

    move-result v14

    if-nez v14, :cond_a

    .line 1644
    iget-object v14, v13, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v14}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUserState()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    move-result-object v14

    sget-object v15, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-static {v14, v15}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->changeState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)Z

    move-result v3

    .line 1645
    .local v3, "canChange":Z
    if-eqz v3, :cond_6

    .line 1646
    iget-object v14, v13, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v15, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v14, v15}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 1656
    :cond_6
    :goto_5
    invoke-virtual {v12}, Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;->isEnableCamera()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1657
    sget-object v4, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_OPEN_CAM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 1662
    .restart local v4    # "destAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    :goto_6
    move-object v5, v4

    .line 1664
    .restart local v5    # "finalAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    move v8, v11

    .restart local v8    # "finalPos":I
    const/4 v14, -0x1

    if-eq v11, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v14, :cond_2

    .line 1665
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v14

    new-instance v15, Lexm$18;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5, v8}, Lexm$18;-><init>(Lexm;Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;I)V

    invoke-virtual {v14, v15}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1618
    .end local v2    # "cameraMuted":Z
    .end local v3    # "canChange":Z
    .end local v4    # "destAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .end local v5    # "finalAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .end local v8    # "finalPos":I
    :cond_7
    const/4 v14, 0x0

    goto :goto_2

    .line 1624
    :cond_8
    sget-object v4, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_MUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .restart local v4    # "destAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    goto :goto_3

    .line 1642
    .end local v4    # "destAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .restart local v2    # "cameraMuted":Z
    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    .line 1649
    :cond_a
    iget-object v14, v13, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v14}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUserState()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    move-result-object v14

    sget-object v15, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-static {v14, v15}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->changeState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)Z

    move-result v3

    .line 1650
    .restart local v3    # "canChange":Z
    if-eqz v3, :cond_6

    .line 1651
    iget-object v14, v13, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v15, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v14, v15}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    goto :goto_5

    .line 1659
    :cond_b
    sget-object v4, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_CLOSE_CAM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .restart local v4    # "destAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    goto :goto_6
.end method

.method public onJoin(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V
    .locals 4
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "userId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1708
    sget-object v0, Lexm;->a:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "User "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " join the conference"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    return-void
.end method

.method public onJoinChatFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;)V
    .locals 6
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "alivcVideoConfError"    # Lcom/alivc/live/conf/AlivcVideoConfError;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1288
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "join the video conf fail "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/alivc/live/conf/AlivcVideoConfError;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1289
    .local v0, "errLog":Ljava/lang/String;
    sget-object v1, Lexm;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "videoconf_conf_join_fail"

    invoke-interface {v1, v5, v2, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1292
    iput-boolean v4, p0, Lexm;->D:Z

    .line 1293
    iput-boolean v4, p0, Lexm;->C:Z

    .line 1294
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lexm$8;

    invoke-direct {v2, p0, v0}, Lexm$8;-><init>(Lexm;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1302
    return-void
.end method

.method public onJoinChatSuccess(Lcom/alivc/live/conf/AlivcVideoConf;)V
    .locals 10
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 1224
    iget-boolean v3, p0, Lexm;->B:Z

    if-eqz v3, :cond_1

    .line 1225
    sget-object v3, Lexm;->a:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "join video conf when leaving "

    aput-object v5, v4, v0

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    :cond_0
    :goto_0
    return-void

    .line 1228
    :cond_1
    sget-object v3, Lexm;->a:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v6, "join the video conf success "

    aput-object v6, v4, v0

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "videoconf_conf_join_success"

    invoke-interface {v3, v7, v4, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1231
    iput-boolean v5, p0, Lexm;->D:Z

    .line 1232
    iput-boolean v0, p0, Lexm;->C:Z

    .line 1233
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lexm$5;

    invoke-direct {v4, p0}, Lexm$5;-><init>(Lexm;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1242
    iget-object v3, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    if-eqz v3, :cond_2

    .line 1243
    iget-object v3, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v3}, Lcom/alivc/live/conf/AlivcVideoConf;->getCurrentParticipantsStatus()V

    .line 26594
    :cond_2
    iget-object v3, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    if-nez v3, :cond_7

    .line 1247
    :cond_3
    :goto_1
    iget-object v3, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    if-eqz v3, :cond_4

    .line 1249
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;-><init>()V

    .line 1250
    .local v1, "statusModel":Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;
    iget-object v3, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    invoke-virtual {v3}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getConferenceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->conferenceId:Ljava/lang/String;

    .line 1251
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->uid:Ljava/lang/Long;

    .line 1252
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->status:Ljava/lang/Integer;

    .line 1253
    new-instance v3, Lexm$6;

    invoke-direct {v3, p0}, Lexm$6;-><init>(Lexm;)V

    invoke-static {v1, v3}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;Leyo$d;)V

    .line 1270
    .end local v1    # "statusModel":Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;
    :cond_4
    iget-object v3, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v3, :cond_0

    .line 1271
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lexm$7;

    invoke-direct {v4, p0}, Lexm$7;-><init>(Lexm;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1278
    iget v3, p0, Lexm;->u:I

    if-ne v3, v5, :cond_5

    iget-wide v6, p0, Lexm;->v:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-eqz v3, :cond_6

    :cond_5
    move v0, v5

    .line 1279
    .local v0, "beNotHost":Z
    :cond_6
    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lexm;->z:Z

    if-eqz v3, :cond_0

    .line 1280
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Leuj$l;->dt_conf_video_bluetooth_output_tips:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1281
    .local v2, "warning":Ljava/lang/String;
    iget-object v3, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    const-string/jumbo v4, "200"

    invoke-interface {v3, v4, v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 26597
    .end local v0    # "beNotHost":Z
    .end local v2    # "warning":Ljava/lang/String;
    :cond_7
    new-instance v6, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullMembersModel;

    invoke-direct {v6}, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullMembersModel;-><init>()V

    .line 26598
    iget-object v3, p0, Lexm;->l:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    invoke-virtual {v3}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getConferenceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullMembersModel;->conferenceId:Ljava/lang/String;

    .line 26599
    new-instance v3, Lexm$36;

    invoke-direct {v3, p0}, Lexm$36;-><init>(Lexm;)V

    const-class v4, Leyo$d;

    iget-object v7, p0, Lexm;->c:Landroid/app/Activity;

    .line 26600
    invoke-static {v3, v4, v7}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leyo$d;

    .line 27149
    if-eqz v6, :cond_3

    .line 27152
    const-class v4, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;

    .line 27153
    if-eqz v4, :cond_3

    .line 27154
    new-instance v7, Leyf$8;

    invoke-direct {v7, v3}, Leyf$8;-><init>(Leyo$d;)V

    invoke-interface {v4, v6, v7}, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;->pullMembers(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullMembersModel;Liyv;)V

    goto/16 :goto_1
.end method

.method public onKickOut(Lcom/alivc/live/conf/AlivcVideoConf;)V
    .locals 4
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 2041
    iget-object v0, p0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    if-nez v0, :cond_1

    .line 2055
    :cond_0
    :goto_0
    return-void

    .line 2044
    :cond_1
    sget-object v0, Lexm;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Kick out "

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    iget-object v0, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v0, :cond_0

    .line 2046
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lexm$28;

    invoke-direct {v1, p0}, Lexm$28;-><init>(Lexm;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onLeave(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V
    .locals 10
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "userId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1713
    sget-object v6, Lexm;->a:Ljava/lang/String;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "User "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, " leave the conference"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1715
    sget-object v6, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v7, "Invalid user when leaved "

    invoke-static {v6, v7}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    :cond_0
    :goto_0
    return-void

    .line 35109
    :cond_1
    const-wide/16 v6, 0x0

    invoke-static {p2, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1720
    .local v0, "destUid":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_0

    .line 1723
    invoke-direct {p0, v0, v1}, Lexm;->a(J)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v3

    .line 1724
    .local v3, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v3, :cond_0

    .line 1725
    iget-object v6, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v6, :cond_2

    .line 1726
    iget-object v6, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v7, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_LEAVED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v6, v7}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 1727
    iget-object v6, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setMicMuted(Z)V

    .line 1729
    :cond_2
    iget-object v6, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    if-eqz v6, :cond_3

    .line 1730
    iget-object v6, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    const/4 v7, 0x0

    .line 35174
    iput-boolean v7, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->a:Z

    .line 1731
    iget-object v6, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    const/4 v7, 0x0

    .line 35198
    iput-boolean v7, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->b:Z

    .line 1732
    iget-object v6, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->a(I)V

    .line 1734
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a(Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;)V

    .line 1735
    iget v6, p0, Lexm;->t:I

    if-nez v6, :cond_4

    .line 1737
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lexm;->c(Z)V

    goto :goto_0

    .line 1739
    :cond_4
    move-wide v4, v0

    .line 1740
    .local v4, "finalUid":J
    invoke-direct {p0, v3}, Lexm;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)I

    move-result v2

    .line 1741
    .local v2, "finalStartIndex":I
    iget-object v6, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v6, :cond_0

    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 1742
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    new-instance v7, Lexm$19;

    invoke-direct {v7, p0, v2, v4, v5}, Lexm$19;-><init>(Lexm;IJ)V

    invoke-virtual {v6, v7}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onLeaveChatFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;)V
    .locals 5
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "alivcVideoConfError"    # Lcom/alivc/live/conf/AlivcVideoConfError;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1322
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Leave chat fail "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/alivc/live/conf/AlivcVideoConfError;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1323
    .local v0, "errLog":Ljava/lang/String;
    sget-object v1, Lexm;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    iput-boolean v4, p0, Lexm;->D:Z

    .line 1325
    iput-boolean v4, p0, Lexm;->B:Z

    .line 1326
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lexm$10;

    invoke-direct {v2, p0, v0}, Lexm$10;-><init>(Lexm;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1334
    return-void
.end method

.method public onLeaveChatSuccess(Lcom/alivc/live/conf/AlivcVideoConf;)V
    .locals 3
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1306
    sget-object v0, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v1, "Leave chat success"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    iput-boolean v2, p0, Lexm;->D:Z

    .line 1308
    iput-boolean v2, p0, Lexm;->B:Z

    .line 1309
    iget-object v0, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v0, :cond_0

    .line 1310
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lexm$9;

    invoke-direct {v1, p0}, Lexm$9;-><init>(Lexm;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1318
    :cond_0
    return-void
.end method

.method public onMainPresenter(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V
    .locals 0
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 2037
    return-void
.end method

.method public onMute(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;Ljava/lang/String;)V
    .locals 12
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "mediaMode"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;
    .param p3, "userId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1883
    sget-object v8, Lexm;->a:Ljava/lang/String;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "User "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p3, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, " muted"

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    const-wide/16 v4, 0x0

    .line 1885
    .local v4, "destUid":J
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 39109
    const-wide/16 v8, 0x0

    invoke-static {p3, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1888
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_2

    .line 1930
    :cond_1
    :goto_0
    return-void

    .line 1891
    :cond_2
    invoke-direct {p0, v4, v5}, Lexm;->a(J)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v7

    .line 1892
    .local v7, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v7, :cond_1

    iget-object v8, v7, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v8, :cond_1

    .line 1897
    sget-object v8, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;->AlivcVideoConfMediaModeAudio:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    if-ne p2, v8, :cond_4

    .line 1898
    iget-object v8, v7, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isMicMuted()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1901
    iget-object v8, v7, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setMicMuted(Z)V

    .line 1902
    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_MUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 1915
    .local v1, "destAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    :cond_3
    :goto_1
    iget-object v8, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v8, :cond_1

    .line 1916
    invoke-direct {p0, v7}, Lexm;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)I

    move-result v2

    .line 1918
    .local v2, "destPosition":I
    move-object v3, v1

    .line 1919
    .local v3, "finalAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    move v6, v2

    .line 1920
    .local v6, "finalPosition":I
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v8

    new-instance v9, Lexm$24;

    invoke-direct {v9, p0, v3, v6}, Lexm$24;-><init>(Lexm;Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;I)V

    invoke-virtual {v8, v9}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1904
    .end local v1    # "destAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .end local v2    # "destPosition":I
    .end local v3    # "finalAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .end local v6    # "finalPosition":I
    :cond_4
    iget-object v8, v7, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCameraMuted()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1907
    iget-object v8, v7, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setCameraMuted(Z)V

    .line 1908
    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_CLOSE_CAM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 1910
    .restart local v1    # "destAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    iget-object v8, v7, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUserState()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    move-result-object v8

    sget-object v9, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-static {v8, v9}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->changeState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)Z

    move-result v0

    .line 1911
    .local v0, "canChange":Z
    if-eqz v0, :cond_3

    .line 1912
    iget-object v8, v7, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v9, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v8, v9}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    goto :goto_1
.end method

.method public onMuteAll(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;[Ljava/lang/String;)V
    .locals 6
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "var2"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;
    .param p3, "uids"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 1986
    sget-object v2, Lexm;->a:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "all muted"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    iget-wide v2, p0, Lexm;->v:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 2007
    :cond_0
    :goto_0
    return-void

    .line 1991
    :cond_1
    const/4 v2, 0x1

    :try_start_0
    iget-wide v4, p0, Lexm;->v:J

    const/4 v3, 0x1

    invoke-direct {p0, v2, v4, v5, v3}, Lexm;->a(ZJZ)I

    .line 1992
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lexm$26;

    invoke-direct {v3, p0}, Lexm$26;-><init>(Lexm;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2000
    iget-object v2, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v2, :cond_0

    .line 2001
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->dt_conf_video_receive_mute_all_tips:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2002
    .local v1, "toast":Ljava/lang/String;
    iget-object v2, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    const-string/jumbo v3, "200"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a_(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2004
    .end local v1    # "toast":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2005
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onNetworkStatusUpdate(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;)V
    .locals 5
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "alivcVideoConfNetworkStatus"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 2089
    if-eqz p2, :cond_0

    .line 2090
    sget-object v1, Lexm;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Net status update: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;->AlivcVideoConfNetworkStatusPoor:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    if-ne p2, v1, :cond_0

    .line 2092
    iget-object v1, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v1, :cond_0

    .line 2093
    iget-object v1, p0, Lexm;->c:Landroid/app/Activity;

    sget v2, Leuj$l;->dt_conference_video_weak_net_warn:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2094
    .local v0, "toast":Ljava/lang/String;
    iget-object v1, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    const-string/jumbo v2, "200"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    .end local v0    # "toast":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onPublish(Lcom/alivc/live/conf/AlivcVideoConf;[Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;)V
    .locals 16
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "alivcVideoConfPublisherInfos"    # [Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1772
    move-object/from16 v0, p0

    iget-object v12, v0, Lexm;->k:Lcom/alivc/live/conf/AlivcVideoConf;

    if-eqz v12, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v12, v0

    if-gtz v12, :cond_1

    .line 37175
    :cond_0
    :goto_0
    return-void

    .line 1775
    :cond_1
    const/4 v9, 0x0

    .line 1776
    .local v9, "newMemberJoin":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p2

    array-length v12, v0

    if-ge v8, v12, :cond_7

    .line 1777
    aget-object v10, p2, v8

    .line 1778
    .local v10, "participantInfo":Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;
    if-nez v10, :cond_3

    .line 1776
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1781
    :cond_3
    const-wide/16 v4, 0x0

    .line 1782
    .local v4, "destUid":J
    invoke-virtual {v10}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->getUserId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1783
    invoke-virtual {v10}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->getUserId()Ljava/lang/String;

    move-result-object v12

    .line 36109
    const-wide/16 v14, 0x0

    invoke-static {v12, v14, v15}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1785
    :cond_4
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_2

    .line 1788
    sget-object v12, Lexm;->a:Ljava/lang/String;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "onPublish "

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v13}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    const/4 v9, 0x1

    .line 1791
    move-wide v6, v4

    .line 1792
    .local v6, "finalDestUid":J
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lexm;->a(J)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v11

    .line 1793
    .local v11, "windowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v11, :cond_6

    iget-object v12, v11, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v12, :cond_6

    .line 1794
    sget-object v12, Lexm;->a:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "onPublish sub info update"

    aput-object v15, v13, v14

    invoke-static {v13}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    iget-object v12, v11, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v12}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUserState()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    move-result-object v12

    sget-object v13, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_CONNECTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-static {v12, v13}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->changeState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)Z

    move-result v2

    .line 1797
    .local v2, "canChange":Z
    if-eqz v2, :cond_5

    .line 1798
    iget-object v12, v11, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v13, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_CONNECTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v12, v13}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 1800
    :cond_5
    invoke-virtual {v11, v10}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a(Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;)V

    .line 1801
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lexm;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)I

    move-result v3

    .line 1802
    .local v3, "finalStartIndex":I
    const/4 v12, -0x1

    if-eq v3, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v12, :cond_2

    .line 1803
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v12

    new-instance v13, Lexm$21;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3, v6, v7}, Lexm$21;-><init>(Lexm;IJ)V

    invoke-virtual {v12, v13}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 1813
    .end local v2    # "canChange":Z
    .end local v3    # "finalStartIndex":I
    :cond_6
    sget-object v12, Lexm;->a:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "onPublish add to cache"

    aput-object v15, v13, v14

    invoke-static {v13}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    new-instance v12, Lexm$23;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v10, v6, v7}, Lexm$23;-><init>(Lexm;Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;J)V

    .line 36474
    const-wide/16 v14, 0x0

    cmp-long v13, v6, v14

    if-lez v13, :cond_2

    .line 36477
    sget-object v13, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_CONNECTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v13, v12}, Lexm;->a(JLcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;Lcma;)V

    goto/16 :goto_2

    .line 1844
    .end local v4    # "destUid":J
    .end local v6    # "finalDestUid":J
    .end local v10    # "participantInfo":Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;
    .end local v11    # "windowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_7
    if-eqz v9, :cond_0

    .line 37172
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lexm;->y:Z

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lexm;->u:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    move-object/from16 v0, p0

    iget-wide v12, v0, Lexm;->v:J

    .line 37174
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v14

    invoke-virtual {v14}, Lccr;->c()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_0

    .line 37177
    :cond_8
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lexm;->y:Z

    .line 37179
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v12

    new-instance v13, Lexm$38;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lexm$38;-><init>(Lexm;)V

    invoke-virtual {v12, v13}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public onPublishFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;Ljava/lang/String;)V
    .locals 8
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "alivcVideoConfError"    # Lcom/alivc/live/conf/AlivcVideoConfError;
    .param p3, "publishId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 1372
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Publish audio/video  fail "

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/alivc/live/conf/AlivcVideoConfError;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ","

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1373
    .local v1, "errLog":Ljava/lang/String;
    sget-object v3, Lexm;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    invoke-virtual {p0, v6}, Lexm;->b(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v2

    .line 1375
    .local v2, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v2, :cond_0

    .line 1376
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    .line 28198
    iput-boolean v6, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->b:Z

    .line 1377
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    invoke-virtual {v3, v6}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->a(I)V

    .line 1379
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lexm$13;

    invoke-direct {v4, p0, v1}, Lexm$13;-><init>(Lexm;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1387
    const/4 v0, 0x0

    .line 1388
    .local v0, "beTerminated":Z
    iget-wide v4, p0, Lexm;->v:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    iget v3, p0, Lexm;->t:I

    if-nez v3, :cond_2

    .line 1390
    :cond_1
    const/4 v0, 0x1

    .line 1392
    :cond_2
    invoke-virtual {p0, v0}, Lexm;->c(Z)V

    .line 1393
    return-void
.end method

.method public onPublishScreenShareFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;Ljava/lang/String;)V
    .locals 0
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "error"    # Lcom/alivc/live/conf/AlivcVideoConfError;
    .param p3, "publishId"    # Ljava/lang/String;

    .prologue
    .line 1581
    return-void
.end method

.method public onPublishScreenShareSuccess(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V
    .locals 0
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "publishId"    # Ljava/lang/String;

    .prologue
    .line 1576
    return-void
.end method

.method public onPublishSuccess(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V
    .locals 8
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "publishId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1338
    sget-object v3, Lexm;->a:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "Publish success "

    aput-object v5, v4, v6

    aput-object p2, v4, v7

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    invoke-virtual {p0, v6}, Lexm;->b(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v2

    .line 1340
    .local v2, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v2, :cond_2

    .line 1341
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    .line 27198
    iput-boolean v7, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->b:Z

    .line 1343
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    .line 28178
    iget v1, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->c:I

    .line 1344
    .local v1, "publishFlag":I
    const/4 v0, 0x0

    .line 1345
    .local v0, "hasVideo":Z
    and-int/lit8 v3, v1, 0x4

    if-nez v3, :cond_0

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 1347
    :cond_0
    const/4 v0, 0x1

    .line 1349
    :cond_1
    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lexm;->o:Z

    if-eqz v3, :cond_3

    .line 1350
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v4, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 1355
    :goto_0
    iget-object v3, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v3, :cond_2

    .line 1356
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lexm$12;

    invoke-direct {v4, p0}, Lexm$12;-><init>(Lexm;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1368
    .end local v0    # "hasVideo":Z
    .end local v1    # "publishFlag":I
    :cond_2
    return-void

    .line 1352
    .restart local v0    # "hasVideo":Z
    .restart local v1    # "publishFlag":I
    :cond_3
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v4, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    goto :goto_0
.end method

.method public onSDKError(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;)V
    .locals 4
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "alivcVideoConfError"    # Lcom/alivc/live/conf/AlivcVideoConfError;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 2071
    if-eqz p2, :cond_0

    .line 2072
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "SDK internal err: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/alivc/live/conf/AlivcVideoConfError;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2073
    .local v0, "errMsg":Ljava/lang/String;
    sget-object v1, Lexm;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Server_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    if-ne p2, v1, :cond_0

    .line 2075
    iget-object v1, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v1, :cond_0

    .line 2076
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lexm$29;

    invoke-direct {v2, p0, v0}, Lexm$29;-><init>(Lexm;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2085
    .end local v0    # "errMsg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onSubscribe(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V
    .locals 4
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "userId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1873
    sget-object v0, Lexm;->a:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "User "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " subscribe me"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    return-void
.end method

.method public onSubscribeFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
    .locals 15
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "alivcVideoConfError"    # Lcom/alivc/live/conf/AlivcVideoConfError;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "subId"    # Ljava/lang/String;
    .param p5, "type"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1499
    const-string/jumbo v5, ""

    .line 1500
    .local v5, "errType":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1501
    invoke-virtual/range {p2 .. p2}, Lcom/alivc/live/conf/AlivcVideoConfError;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1503
    :cond_0
    const-string/jumbo v9, ""

    .line 1504
    .local v9, "streamType":Ljava/lang/String;
    if-eqz p5, :cond_1

    .line 1505
    invoke-virtual/range {p5 .. p5}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1507
    :cond_1
    sget-object v11, Lexm;->a:Ljava/lang/String;

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "Subscribe audio/video  fail: "

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v5, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, ","

    aput-object v14, v12, v13

    const/4 v13, 0x3

    aput-object v9, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    sget-object v11, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeAudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-object/from16 v0, p5

    if-eq v0, v11, :cond_4

    .line 1510
    const/4 v3, 0x1

    .line 1511
    .local v3, "destFlag":I
    sget-object v11, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeSmall:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-object/from16 v0, p5

    if-ne v0, v11, :cond_5

    .line 1512
    const/4 v3, 0x3

    .line 1519
    :cond_2
    :goto_0
    const-wide/16 v6, 0x0

    .line 1520
    .local v6, "destUid":J
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 31109
    const-wide/16 v12, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v12, v13}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1523
    :cond_3
    const-wide/16 v12, 0x0

    cmp-long v11, v6, v12

    if-nez v11, :cond_7

    .line 1556
    .end local v3    # "destFlag":I
    .end local v6    # "destUid":J
    :cond_4
    :goto_1
    return-void

    .line 1513
    .restart local v3    # "destFlag":I
    :cond_5
    sget-object v11, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeLarge:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-object/from16 v0, p5

    if-ne v0, v11, :cond_6

    .line 1514
    const/4 v3, 0x5

    goto :goto_0

    .line 1515
    :cond_6
    sget-object v11, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeScreenShare:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-object/from16 v0, p5

    if-ne v0, v11, :cond_2

    .line 1516
    const/16 v3, 0x9

    goto :goto_0

    .line 1526
    .restart local v6    # "destUid":J
    :cond_7
    sget-object v11, Lexm;->a:Ljava/lang/String;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "Subscribe fail"

    aput-object v14, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    invoke-direct {p0, v6, v7}, Lexm;->a(J)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v10

    .line 1528
    .local v10, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v10, :cond_4

    iget-object v11, v10, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    if-eqz v11, :cond_4

    .line 1529
    iget-object v11, v10, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    .line 31178
    iget v2, v11, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->c:I

    .line 1530
    .local v2, "currState":I
    if-ne v3, v2, :cond_8

    iget-object v11, v10, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    .line 31213
    iget v11, v11, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->e:I

    .line 1530
    const/4 v12, 0x2

    if-ge v11, v12, :cond_8

    .line 1531
    sget-object v11, Lexm;->a:Ljava/lang/String;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "Subscribe user fail for try again :"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object p3, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    invoke-direct {p0, v10}, Lexm;->b(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)V

    .line 1533
    iget-object v11, v10, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    .line 32210
    iget v12, v11, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->e:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->e:I

    goto :goto_1

    .line 1535
    :cond_8
    sget-object v11, Lexm;->a:Ljava/lang/String;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "Subscribe user fail for update :"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object p3, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    iget-object v11, v10, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v11, :cond_9

    .line 1537
    iget-object v11, v10, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v12, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v11, v12}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 1539
    :cond_9
    iget-object v11, v10, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    .line 33202
    iget-boolean v8, v11, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->d:Z

    .line 1540
    .local v8, "mediaRefresh":Z
    if-eqz v8, :cond_4

    .line 1541
    invoke-direct {p0, v10}, Lexm;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)I

    move-result v4

    .line 1542
    .local v4, "destIndex":I
    const/4 v11, -0x1

    if-eq v4, v11, :cond_4

    iget-object v11, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v11, :cond_4

    .line 1543
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v11

    new-instance v12, Lexm$16;

    invoke-direct {v12, p0, v10, v4}, Lexm$16;-><init>(Lexm;Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;I)V

    invoke-virtual {v11, v12}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method

.method public onSubscribeRenderReady(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
    .locals 0
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "subId"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .prologue
    .line 1410
    return-void
.end method

.method public onSubscribeSuccess(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
    .locals 11
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "subId"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1451
    sget-object v8, Lexm;->a:Ljava/lang/String;

    const/4 v7, 0x5

    new-array v9, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v10, "("

    aput-object v10, v9, v7

    const/4 v7, 0x1

    aput-object p2, v9, v7

    const/4 v7, 0x2

    const-string/jumbo v10, ")"

    aput-object v10, v9, v7

    const/4 v7, 0x3

    const-string/jumbo v10, "Subscribe suc : "

    aput-object v10, v9, v7

    const/4 v10, 0x4

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    aput-object v7, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    const-wide/16 v2, 0x0

    .line 1454
    .local v2, "destUid":J
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 30109
    const-wide/16 v8, 0x0

    invoke-static {p2, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1457
    :cond_0
    const/4 v4, 0x1

    .line 1458
    .local v4, "mediaRefresh":Z
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeAudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-ne p4, v7, :cond_4

    const/4 v0, 0x1

    .line 1459
    .local v0, "audioOnly":Z
    :goto_1
    invoke-direct {p0, v2, v3}, Lexm;->a(J)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v6

    .line 1460
    .local v6, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v6, :cond_1

    iget-object v7, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    if-eqz v7, :cond_1

    .line 1461
    iget-object v7, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    const/4 v8, 0x1

    .line 30198
    iput-boolean v8, v7, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->b:Z

    .line 1462
    iget-object v7, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCameraMuted()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1463
    iget-object v7, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v8, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v7, v8}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 1472
    :goto_2
    iget-object v7, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    .line 30202
    iget-boolean v4, v7, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->d:Z

    .line 1475
    :cond_1
    if-eqz v4, :cond_2

    .line 1476
    invoke-direct {p0, v6}, Lexm;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)I

    move-result v1

    .line 1477
    .local v1, "destIndex":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_2

    iget-object v7, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v7, :cond_2

    .line 1478
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v7

    new-instance v8, Lexm$15;

    invoke-direct {v8, p0, v6, v1, v0}, Lexm$15;-><init>(Lexm;Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;IZ)V

    invoke-virtual {v7, v8}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1491
    .end local v1    # "destIndex":I
    :cond_2
    return-void

    .line 1451
    .end local v0    # "audioOnly":Z
    .end local v2    # "destUid":J
    .end local v4    # "mediaRefresh":Z
    .end local v6    # "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_3
    const-string/jumbo v7, ""

    goto :goto_0

    .line 1458
    .restart local v2    # "destUid":J
    .restart local v4    # "mediaRefresh":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1465
    .restart local v0    # "audioOnly":Z
    .restart local v6    # "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_5
    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 1466
    .local v5, "state":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    if-eqz v0, :cond_6

    .line 1467
    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 1469
    :cond_6
    iget-object v7, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v7, v5}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    goto :goto_2
.end method

.method public onSystemError(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;)V
    .locals 4
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "alivcVideoConfError"    # Lcom/alivc/live/conf/AlivcVideoConfError;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 2064
    if-eqz p2, :cond_0

    .line 2065
    sget-object v0, Lexm;->a:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "onSystemError "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/alivc/live/conf/AlivcVideoConfError;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    :cond_0
    return-void
.end method

.method public onUnMute(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;Ljava/lang/String;)V
    .locals 12
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "mediaMode"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;
    .param p3, "userId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1934
    sget-object v8, Lexm;->a:Ljava/lang/String;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "User "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p3, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, " unmuted"

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    const-wide/16 v4, 0x0

    .line 1936
    .local v4, "destUid":J
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 40109
    const-wide/16 v8, 0x0

    invoke-static {p3, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1939
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_2

    .line 1982
    :cond_1
    :goto_0
    return-void

    .line 1942
    :cond_2
    invoke-direct {p0, v4, v5}, Lexm;->a(J)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v7

    .line 1943
    .local v7, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v7, :cond_1

    iget-object v8, v7, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v8, :cond_1

    .line 1949
    sget-object v8, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;->AlivcVideoConfMediaModeAudio:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    if-ne p2, v8, :cond_4

    .line 1950
    iget-object v8, v7, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isMicMuted()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1953
    iget-object v8, v7, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setMicMuted(Z)V

    .line 1954
    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_UNMUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 1967
    .local v1, "destAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    :cond_3
    :goto_1
    iget-object v8, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v8, :cond_1

    .line 1968
    invoke-direct {p0, v7}, Lexm;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)I

    move-result v2

    .line 1970
    .local v2, "destPosition":I
    move-object v3, v1

    .line 1971
    .local v3, "finalAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    move v6, v2

    .line 1972
    .local v6, "finalPosition":I
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v8

    new-instance v9, Lexm$25;

    invoke-direct {v9, p0, v3, v6}, Lexm$25;-><init>(Lexm;Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;I)V

    invoke-virtual {v8, v9}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1956
    .end local v1    # "destAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .end local v2    # "destPosition":I
    .end local v3    # "finalAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .end local v6    # "finalPosition":I
    :cond_4
    iget-object v8, v7, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCameraMuted()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1959
    iget-object v8, v7, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setCameraMuted(Z)V

    .line 1960
    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_OPEN_CAM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 1961
    .restart local v1    # "destAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    iget-object v8, v7, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUserState()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    move-result-object v8

    sget-object v9, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-static {v8, v9}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->changeState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)Z

    move-result v0

    .line 1962
    .local v0, "canChange":Z
    if-eqz v0, :cond_3

    .line 1963
    iget-object v8, v7, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v9, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v8, v9}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    goto :goto_1
.end method

.method public onUnMuteAll(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;[Ljava/lang/String;)V
    .locals 6
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "var2"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;
    .param p3, "uids"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2011
    sget-object v2, Lexm;->a:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "all unmuted"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    iget-wide v2, p0, Lexm;->v:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 2032
    :cond_0
    :goto_0
    return-void

    .line 2016
    :cond_1
    const/4 v2, 0x1

    :try_start_0
    iget-wide v4, p0, Lexm;->v:J

    const/4 v3, 0x0

    invoke-direct {p0, v2, v4, v5, v3}, Lexm;->a(ZJZ)I

    .line 2017
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lexm$27;

    invoke-direct {v3, p0}, Lexm$27;-><init>(Lexm;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2025
    iget-object v2, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v2, :cond_0

    .line 2026
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->dt_conf_video_receive_unmute_all_tips:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2027
    .local v1, "toast":Ljava/lang/String;
    iget-object v2, p0, Lexm;->b:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    const-string/jumbo v3, "200"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a_(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2029
    .end local v1    # "toast":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2030
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onUnPublish(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V
    .locals 10
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "userId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 1852
    sget-object v3, Lexm;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "some one unpublish "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    const-wide/16 v0, 0x0

    .line 1854
    .local v0, "destUid":J
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 38109
    invoke-static {p2, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1857
    :cond_0
    cmp-long v3, v0, v8

    if-nez v3, :cond_2

    .line 1869
    :cond_1
    :goto_0
    return-void

    .line 1860
    :cond_2
    invoke-direct {p0, v0, v1}, Lexm;->a(J)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v2

    .line 1861
    .local v2, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v2, :cond_1

    .line 1862
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a(Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;)V

    .line 1863
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    if-eqz v3, :cond_1

    .line 1864
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    .line 38174
    iput-boolean v6, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->a:Z

    .line 1865
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    .line 38198
    iput-boolean v6, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->b:Z

    .line 1866
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    invoke-virtual {v3, v6}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->a(I)V

    goto :goto_0
.end method

.method public onUnPublishScreenShareFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;Ljava/lang/String;)V
    .locals 0
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "error"    # Lcom/alivc/live/conf/AlivcVideoConfError;
    .param p3, "publishId"    # Ljava/lang/String;

    .prologue
    .line 1591
    return-void
.end method

.method public onUnPublishScreenShareSuccess(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V
    .locals 0
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "publishId"    # Ljava/lang/String;

    .prologue
    .line 1586
    return-void
.end method

.method public onUnSubscribe(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V
    .locals 4
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "userId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1878
    sget-object v0, Lexm;->a:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "User "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " unsubscribe me"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    return-void
.end method

.method public onUnpublishFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;Ljava/lang/String;)V
    .locals 4
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "alivcVideoConfError"    # Lcom/alivc/live/conf/AlivcVideoConfError;
    .param p3, "publishId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1403
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Unpublish audio/video  fail "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/alivc/live/conf/AlivcVideoConfError;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ","

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1404
    .local v0, "errLog":Ljava/lang/String;
    sget-object v1, Lexm;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    return-void
.end method

.method public onUnpublishSuccess(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V
    .locals 4
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "publishId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1397
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Unpublish audio/video  success "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1398
    .local v0, "errLog":Ljava/lang/String;
    sget-object v1, Lexm;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    return-void
.end method

.method public onUnsubscribeFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
    .locals 4
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "alivcVideoConfError"    # Lcom/alivc/live/conf/AlivcVideoConfError;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "subId"    # Ljava/lang/String;
    .param p5, "type"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1569
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "unsubscribe audio/video  fail "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/alivc/live/conf/AlivcVideoConfError;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ","

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1570
    .local v0, "errLog":Ljava/lang/String;
    sget-object v1, Lexm;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    return-void
.end method

.method public onUnsubscribeSuccess(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
    .locals 4
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "subId"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1560
    sget-object v0, Lexm;->a:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Unsubscribe user "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " success"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    return-void
.end method

.method public final p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1158
    sget-object v0, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v1, "Stop ring"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    iget-object v0, p0, Lexm;->m:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lexm;->m:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->b()V

    .line 1162
    :cond_0
    return-void
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Lexm;->m:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lexm;->m:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a()Z

    move-result v0

    .line 1169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseViewWhenUnpublish(Lcom/alivc/live/conf/AlivcVideoConf;Landroid/view/SurfaceView;)V
    .locals 2
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "surfaceView"    # Landroid/view/SurfaceView;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1698
    sget-object v0, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v1, "release view when unpublish"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    return-void
.end method

.method public releaseViewWhenUnsubscribe(Lcom/alivc/live/conf/AlivcVideoConf;Landroid/view/SurfaceView;)V
    .locals 2
    .param p1, "alivcVideoConf"    # Lcom/alivc/live/conf/AlivcVideoConf;
    .param p2, "surfaceView"    # Landroid/view/SurfaceView;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1703
    sget-object v0, Lexm;->a:Ljava/lang/String;

    const-string/jumbo v1, "release view when unsubscribe"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    return-void
.end method
