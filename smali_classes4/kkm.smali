.class public final Lkkm;
.super Ljava/lang/Object;
.source "NetworkStatus.java"


# static fields
.field private static a:Landroid/telephony/TelephonyManager;

.field private static b:Lkkm;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lkkm;->a:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 48
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lkkm;->a:Landroid/telephony/TelephonyManager;

    .line 50
    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lkkm;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const-class v1, Lkkm;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 56
    :try_start_0
    const-string/jumbo v0, "mtopsdk.NetworkStatus"

    const-string/jumbo v2, "parameter context for getInstance(Context context) is null."

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    const/4 v0, 0x0

    .line 62
    :goto_0
    monitor-exit v1

    return-object v0

    .line 59
    :cond_0
    :try_start_1
    sget-object v0, Lkkm;->b:Lkkm;

    if-nez v0, :cond_1

    .line 60
    new-instance v0, Lkkm;

    invoke-direct {v0, p0}, Lkkm;-><init>(Landroid/content/Context;)V

    sput-object v0, Lkkm;->b:Lkkm;

    .line 62
    :cond_1
    sget-object v0, Lkkm;->b:Lkkm;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
