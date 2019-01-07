.class public Lcae;
.super Ljava/lang/Object;
.source "DingtalkManager.java"


# static fields
.field private static volatile b:Lcae;


# instance fields
.field public a:Lcag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcae;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcae;->b:Lcae;

    if-nez v0, :cond_1

    .line 15
    const-class v1, Lcae;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Lcae;->b:Lcae;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcae;

    invoke-direct {v0}, Lcae;-><init>()V

    sput-object v0, Lcae;->b:Lcae;

    .line 19
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_1
    sget-object v0, Lcae;->b:Lcae;

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
