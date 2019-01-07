.class public Lcom/alibaba/android/rimet/syncadapter/SyncService;
.super Landroid/app/Service;
.source "SyncService.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lelr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/android/rimet/syncadapter/SyncService;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    sget-object v0, Lcom/alibaba/android/rimet/syncadapter/SyncService;->b:Lelr;

    invoke-virtual {v0}, Lelr;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 17
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 18
    sget-object v1, Lcom/alibaba/android/rimet/syncadapter/SyncService;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/alibaba/android/rimet/syncadapter/SyncService;->b:Lelr;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lelr;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/syncadapter/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lelr;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/alibaba/android/rimet/syncadapter/SyncService;->b:Lelr;

    .line 22
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
