.class public Lari;
.super Ljava/lang/Object;
.source "CalendarShareManager.java"


# static fields
.field private static volatile b:Lari;


# instance fields
.field public a:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1203
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    const-string/jumbo v1, "calendar_function"

    const-string/jumbo v2, "ding_calendar_share_receiver_max_num"

    invoke-virtual {v0, v1, v2}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1206
    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 19
    iput v0, p0, Lari;->a:I

    .line 20
    return-void
.end method

.method public static a()Lari;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lari;->b:Lari;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Lari;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lari;->b:Lari;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lari;

    invoke-direct {v0}, Lari;-><init>()V

    sput-object v0, Lari;->b:Lari;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lari;->b:Lari;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
