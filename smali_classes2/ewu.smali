.class public Lewu;
.super Lewv;
.source "TeleFloatingVoipConfManager.java"


# static fields
.field private static final f:Ljava/lang/String;

.field private static volatile g:Lewv;


# instance fields
.field private h:Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lewu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lewu;->f:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lewv;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic a(Lewu;)Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;
    .locals 1
    .param p0, "x0"    # Lewu;

    .prologue
    .line 21
    iget-object v0, p0, Lewu;->h:Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    return-object v0
.end method

.method static synthetic a(Lewu;Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;)Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;
    .locals 0
    .param p0, "x0"    # Lewu;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    .prologue
    .line 21
    iput-object p1, p0, Lewu;->h:Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    return-object p1
.end method

.method public static a()Lewv;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lewu;->g:Lewv;

    if-nez v0, :cond_1

    .line 30
    const-class v1, Lewv;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lewu;->g:Lewv;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lewu;

    invoke-direct {v0}, Lewu;-><init>()V

    sput-object v0, Lewu;->g:Lewv;

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    sget-object v0, Lewu;->g:Lewv;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(JLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "uid"    # J
    .param p3, "nick"    # Ljava/lang/String;
    .param p4, "mediaId"    # Ljava/lang/String;
    .param p5, "isCaller"    # Z
    .param p6, "toPstn"    # Z

    .prologue
    .line 51
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method protected final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 55
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewu;->f:Ljava/lang/String;

    const-string/jumbo v3, "Show void-conf floating"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 58
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v1

    const v2, 0x28bf8

    .line 1792
    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Levu;->a(ILjava/lang/String;)V

    .line 59
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lewu$1;

    invoke-direct {v2, p0, v0}, Lewu$1;-><init>(Lewu;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method

.method protected final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 78
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewu;->f:Ljava/lang/String;

    const-string/jumbo v3, "Hide void-conf floating"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 81
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v1

    invoke-virtual {v1}, Levu;->d()V

    .line 82
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lewu$2;

    invoke-direct {v2, p0, v0}, Lewu$2;-><init>(Lewu;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method

.method protected final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 98
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    sget v1, Levh;->c:I

    invoke-virtual {v0, v1}, Levn;->a(I)V

    .line 99
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Levn;->c(J)V

    .line 100
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Levn;->b(J)V

    .line 101
    return-void
.end method
