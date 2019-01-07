.class public Legr;
.super Ljava/lang/Object;
.source "FocusDeviceDataCenter.java"


# static fields
.field private static volatile c:Legr;


# instance fields
.field public a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

.field public b:Lcom/alibaba/android/projection/data/FocusDeviceObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iput-object v0, p0, Legr;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    return-void
.end method

.method public static a()Legr;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Legr;->c:Legr;

    if-nez v0, :cond_1

    .line 21
    const-class v1, Legr;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Legr;->c:Legr;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Legr;

    invoke-direct {v0}, Legr;-><init>()V

    sput-object v0, Legr;->c:Legr;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Legr;->c:Legr;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
