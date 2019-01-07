.class public Lcpo;
.super Ljava/lang/Object;
.source "RollbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcpo$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcpo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static a()Lcpo;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcpo;->a:Lcpo;

    if-nez v0, :cond_0

    .line 31
    const-class v1, Lcpo;

    monitor-enter v1

    .line 32
    :try_start_0
    new-instance v0, Lcpo;

    invoke-direct {v0}, Lcpo;-><init>()V

    sput-object v0, Lcpo;->a:Lcpo;

    .line 33
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_0
    sget-object v0, Lcpo;->a:Lcpo;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
