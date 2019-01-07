.class public Leyd;
.super Ljava/lang/Object;
.source "ConferenceCallAdminImpl.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Leyd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Leyd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leyd;->a:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput-object v0, Leyd;->b:Leyd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static a()Leyd;
    .locals 4

    .prologue
    .line 62
    sget-object v0, Leyd;->b:Leyd;

    .line 63
    .local v0, "localInstance":Leyd;
    if-nez v0, :cond_1

    .line 64
    const-class v3, Leyd;

    monitor-enter v3

    .line 65
    :try_start_0
    sget-object v0, Leyd;->b:Leyd;

    .line 66
    if-nez v0, :cond_0

    .line 67
    new-instance v1, Leyd;

    invoke-direct {v1}, Leyd;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Leyd;
    .local v1, "localInstance":Leyd;
    :try_start_1
    sput-object v1, Leyd;->b:Leyd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 69
    .end local v1    # "localInstance":Leyd;
    .restart local v0    # "localInstance":Leyd;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 71
    :cond_1
    return-object v0

    .line 69
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Leyd;
    .restart local v1    # "localInstance":Leyd;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Leyd;
    .restart local v0    # "localInstance":Leyd;
    goto :goto_0
.end method
