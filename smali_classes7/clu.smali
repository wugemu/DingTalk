.class public Lclu;
.super Ljava/lang/Object;
.source "CalendarProxy.java"


# static fields
.field private static a:Lclv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lclv",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lclu;->a:Lclv;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Calendar;
    .locals 4

    .prologue
    .line 1027
    sget-object v0, Lclu;->a:Lclv;

    if-nez v0, :cond_1

    .line 1029
    const-class v1, Lclu;

    monitor-enter v1

    .line 1031
    :try_start_0
    sget-object v0, Lclu;->a:Lclv;

    if-nez v0, :cond_0

    .line 1032
    new-instance v0, Lclv;

    invoke-direct {v0}, Lclv;-><init>()V

    .line 1033
    new-instance v2, Lclu$1;

    invoke-direct {v2}, Lclu$1;-><init>()V

    .line 2032
    iput-object v2, v0, Lclv;->b:Lclv$a;

    .line 1040
    sput-object v0, Lclu;->a:Lclv;

    .line 1042
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_1
    sget-object v1, Lclu;->a:Lclv;

    .line 2040
    const/4 v0, 0x0

    .line 2042
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 2044
    iget-object v2, v1, Lclv;->a:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_2

    .line 2045
    iget-object v0, v1, Lclv;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2048
    :cond_2
    if-nez v0, :cond_3

    .line 2050
    invoke-virtual {v1}, Lclv;->a()Ljava/lang/Object;

    move-result-object v0

    .line 2051
    if-eqz v0, :cond_3

    .line 2052
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lclv;->a:Ljava/lang/ref/SoftReference;

    .line 19
    :cond_3
    :goto_0
    check-cast v0, Ljava/util/Calendar;

    return-object v0

    .line 1042
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2057
    :cond_4
    invoke-virtual {v1}, Lclv;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
