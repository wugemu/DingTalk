.class public abstract Landroid/support/customtabs/CustomTabsService;
.super Landroid/app/Service;
.source "CustomTabsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/customtabs/CustomTabsService$Result;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lm$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 81
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Landroid/support/customtabs/CustomTabsService;->a:Ljava/util/Map;

    .line 83
    new-instance v0, Landroid/support/customtabs/CustomTabsService$1;

    invoke-direct {v0, p0}, Landroid/support/customtabs/CustomTabsService$1;-><init>(Landroid/support/customtabs/CustomTabsService;)V

    iput-object v0, p0, Landroid/support/customtabs/CustomTabsService;->b:Lm$a;

    return-void
.end method

.method static synthetic a(Landroid/support/customtabs/CustomTabsService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/support/customtabs/CustomTabsService;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService;->a:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected abstract a()Z
.end method

.method protected final a(Lk;)Z
    .locals 5
    .param p1, "sessionToken"    # Lk;

    .prologue
    const/4 v2, 0x0

    .line 158
    :try_start_0
    iget-object v4, p0, Landroid/support/customtabs/CustomTabsService;->a:Ljava/util/Map;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :try_start_1
    invoke-virtual {p1}, Lk;->a()Landroid/os/IBinder;

    move-result-object v0

    .line 160
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/support/customtabs/CustomTabsService;->a:Ljava/util/Map;

    .line 161
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder$DeathRecipient;

    .line 162
    .local v1, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 163
    iget-object v3, p0, Landroid/support/customtabs/CustomTabsService;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    monitor-exit v4

    .line 168
    const/4 v2, 0x1

    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :goto_0
    return v2

    .line 164
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 166
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected abstract b()Z
.end method

.method protected abstract c()Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation
.end method

.method protected abstract d()Landroid/os/Bundle;
.end method

.method protected abstract e()Z
.end method

.method protected abstract f()Z
.end method

.method protected abstract g()I
.end method
