.class public Lewg;
.super Ljava/lang/Object;
.source "TeleConfCallHelper.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lewg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lewg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lewg;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static a()Lewg;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lewg;->b:Lewg;

    if-nez v0, :cond_1

    .line 30
    const-class v1, Lewg;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lewg;->b:Lewg;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lewg;

    invoke-direct {v0}, Lewg;-><init>()V

    sput-object v0, Lewg;->b:Lewg;

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    sget-object v0, Lewg;->b:Lewg;

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

.method public static b()V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    sget v1, Levh;->c:I

    invoke-virtual {v0, v1}, Levi;->a(I)V

    .line 85
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    .line 1155
    invoke-virtual {v0}, Levi;->r()V

    .line 87
    invoke-static {}, Lews;->a()Lews;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_CONF:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v0, v1}, Lews;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 88
    return-void
.end method

.method public static c()Z
    .locals 6

    .prologue
    .line 92
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    invoke-virtual {v1}, Levi;->q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v0

    .line 93
    .local v0, "object":Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerId:Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerId:Ljava/lang/Long;

    .line 95
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 96
    const/4 v1, 0x1

    .line 98
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lewg;->a:Ljava/lang/String;

    return-object v0
.end method
