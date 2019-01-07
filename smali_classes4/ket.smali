.class public Lket;
.super Ljava/lang/Object;


# static fields
.field private static c:Lket;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lkeu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lket;->b:Ljava/util/Map;

    iput-object p1, p0, Lket;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lket;
    .locals 2

    if-nez p0, :cond_0

    const-string/jumbo v0, "[TinyDataManager]:mContext is null, TinyDataManager.getInstance(Context) failed."

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lket;->c:Lket;

    if-nez v0, :cond_2

    const-class v1, Lket;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lket;->c:Lket;

    if-nez v0, :cond_1

    new-instance v0, Lket;

    invoke-direct {v0, p0}, Lket;-><init>(Landroid/content/Context;)V

    sput-object v0, Lket;->c:Lket;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v0, Lket;->c:Lket;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
