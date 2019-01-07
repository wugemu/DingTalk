.class public Larg;
.super Ljava/lang/Object;
.source "CalendarDiurnalScaleManager.java"


# static fields
.field private static volatile c:Larg;


# instance fields
.field public a:F

.field public b:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Larg$1;

    invoke-direct {v0, p0}, Larg$1;-><init>(Larg;)V

    iput-object v0, p0, Larg;->b:Ljava/lang/Runnable;

    .line 29
    const-string/jumbo v0, "pref_key_calendar_diurnal_view_scale"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Larg;->a:F

    .line 30
    return-void
.end method

.method static synthetic a(Larg;)F
    .locals 1
    .param p0, "x0"    # Larg;

    .prologue
    .line 15
    iget v0, p0, Larg;->a:F

    return v0
.end method

.method public static a()Larg;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Larg;->c:Larg;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Larg;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Larg;->c:Larg;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Larg;

    invoke-direct {v0}, Larg;-><init>()V

    sput-object v0, Larg;->c:Larg;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Larg;->c:Larg;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
