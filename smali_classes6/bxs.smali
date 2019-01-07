.class public Lbxs;
.super Ljava/lang/Object;
.source "LargeLiveManager.java"


# static fields
.field private static volatile b:Lbxs;


# instance fields
.field public a:Lbxr;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static a()Lbxs;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lbxs;->b:Lbxs;

    if-nez v0, :cond_1

    .line 20
    const-class v1, Lbxs;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lbxs;->b:Lbxs;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lbxs;

    invoke-direct {v0}, Lbxs;-><init>()V

    sput-object v0, Lbxs;->b:Lbxs;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lbxs;->b:Lbxs;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
