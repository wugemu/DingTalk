.class public Levv;
.super Ljava/lang/Object;
.source "TeleConfPushListeners.java"


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field public a:Lcjo$a;

.field public b:Lcjo$a;

.field public c:Lcjo$a;

.field public d:Lcjo$a;

.field e:[Ljava/lang/String;

.field private g:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

.field private h:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

.field private i:Leuv;

.field private j:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

.field private k:Leze;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Levv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Levv;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Leze;Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;Leuv;Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;)V
    .locals 3
    .param p1, "activity"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p2, "compereHolder"    # Leze;
    .param p3, "avatarAdapter"    # Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;
    .param p4, "recordAdapter"    # Leuv;
    .param p5, "callback"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u4e00"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "\u4e8c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "\u4e09"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "\u56db"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "\u4e94"

    aput-object v2, v0, v1

    iput-object v0, p0, Levv;->e:[Ljava/lang/String;

    .line 68
    iput-object p1, p0, Levv;->g:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .line 69
    iput-object p2, p0, Levv;->k:Leze;

    .line 70
    iput-object p3, p0, Levv;->h:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    .line 71
    iput-object p4, p0, Levv;->i:Leuv;

    .line 72
    iput-object p5, p0, Levv;->j:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    .line 1098
    new-instance v0, Levv$1;

    invoke-direct {v0, p0}, Levv$1;-><init>(Levv;)V

    iput-object v0, p0, Levv;->a:Lcjo$a;

    .line 1144
    new-instance v0, Levv$2;

    invoke-direct {v0, p0}, Levv$2;-><init>(Levv;)V

    iput-object v0, p0, Levv;->b:Lcjo$a;

    .line 1318
    new-instance v0, Levv$3;

    invoke-direct {v0, p0}, Levv$3;-><init>(Levv;)V

    iput-object v0, p0, Levv;->c:Lcjo$a;

    .line 1553
    new-instance v0, Levv$4;

    invoke-direct {v0, p0}, Levv$4;-><init>(Levv;)V

    iput-object v0, p0, Levv;->d:Lcjo$a;

    .line 1090
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    iget-object v1, p0, Levv;->a:Lcjo$a;

    invoke-virtual {v0, v1}, Leyn;->a(Lcjo$a;)V

    .line 1091
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    iget-object v1, p0, Levv;->b:Lcjo$a;

    invoke-virtual {v0, v1}, Leyn;->a(Lcjo$a;)V

    .line 1092
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    iget-object v1, p0, Levv;->c:Lcjo$a;

    invoke-virtual {v0, v1}, Leyn;->a(Lcjo$a;)V

    .line 1093
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    iget-object v1, p0, Levv;->d:Lcjo$a;

    invoke-virtual {v0, v1}, Leyn;->a(Lcjo$a;)V

    .line 75
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0}, Lewh;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Levv;->l:I

    .line 76
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Levv;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Levv;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Levv;
    .param p1, "x1"    # I

    .prologue
    .line 44
    .line 2590
    iget-object v0, p0, Levv;->g:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    if-eqz v0, :cond_0

    .line 2591
    iget-object v0, p0, Levv;->g:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2593
    :cond_0
    const/4 v0, 0x0

    .line 44
    goto :goto_0
.end method

.method static synthetic a(Levv;)V
    .locals 3
    .param p0, "x0"    # Levv;

    .prologue
    .line 44
    .line 1603
    const-string/jumbo v0, "tele_conf"

    const-string/jumbo v1, "conference_call"

    const-string/jumbo v2, "onReceivePush"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method static synthetic a(Levv;Z)V
    .locals 2
    .param p0, "x0"    # Levv;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    const/4 v0, 0x1

    .line 2597
    iget-object v1, p0, Levv;->j:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    if-eqz v1, :cond_0

    .line 2598
    iget-object v1, p0, Levv;->j:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a(Z)V

    .line 44
    :cond_0
    return-void
.end method

.method static synthetic a(Levv;J)Z
    .locals 3
    .param p0, "x0"    # Levv;
    .param p1, "x1"    # J

    .prologue
    .line 44
    .line 2583
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->e()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 2584
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2586
    :cond_0
    const/4 v0, 0x1

    .line 44
    goto :goto_0
.end method

.method static synthetic b(Levv;)Leuv;
    .locals 1
    .param p0, "x0"    # Levv;

    .prologue
    .line 44
    iget-object v0, p0, Levv;->i:Leuv;

    return-object v0
.end method

.method static synthetic c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;
    .locals 1
    .param p0, "x0"    # Levv;

    .prologue
    .line 44
    iget-object v0, p0, Levv;->h:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    return-object v0
.end method

.method static synthetic d(Levv;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;
    .locals 1
    .param p0, "x0"    # Levv;

    .prologue
    .line 44
    iget-object v0, p0, Levv;->j:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    return-object v0
.end method

.method static synthetic e(Levv;)Leze;
    .locals 1
    .param p0, "x0"    # Levv;

    .prologue
    .line 44
    iget-object v0, p0, Levv;->k:Leze;

    return-object v0
.end method

.method static synthetic f(Levv;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .locals 1
    .param p0, "x0"    # Levv;

    .prologue
    .line 44
    iget-object v0, p0, Levv;->g:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    return-object v0
.end method

.method static synthetic g(Levv;)I
    .locals 1
    .param p0, "x0"    # Levv;

    .prologue
    .line 44
    iget v0, p0, Levv;->l:I

    return v0
.end method
