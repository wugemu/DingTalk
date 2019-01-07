.class public Ljpd;
.super Ljava/lang/Object;
.source "DingtalkManager.java"


# static fields
.field private static volatile b:Ljpd;


# instance fields
.field public a:Ljpf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljpd;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Ljpd;->b:Ljpd;

    if-nez v0, :cond_1

    .line 15
    const-class v1, Ljpd;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Ljpd;->b:Ljpd;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ljpd;

    invoke-direct {v0}, Ljpd;-><init>()V

    sput-object v0, Ljpd;->b:Ljpd;

    .line 19
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_1
    sget-object v0, Ljpd;->b:Ljpd;

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
