.class public Ldex;
.super Ljava/lang/Object;
.source "RecruitmentGuideTipsManager.java"


# static fields
.field private static volatile b:Ldex;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static a()Ldex;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Ldex;->b:Ldex;

    if-nez v0, :cond_1

    .line 18
    const-class v1, Ldex;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Ldex;->b:Ldex;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Ldex;

    invoke-direct {v0}, Ldex;-><init>()V

    sput-object v0, Ldex;->b:Ldex;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Ldex;->b:Ldex;

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
