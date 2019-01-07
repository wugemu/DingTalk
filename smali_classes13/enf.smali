.class public final Lenf;
.super Ljava/lang/Object;
.source "AssureSearchPresenterFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lenh;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 15
    const-class v1, Lenf;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->v()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 19
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcmk;->a()Lcmk;

    move-result-object v0

    const-class v2, Lene;

    invoke-virtual {v0, v2}, Lcmk;->a(Ljava/lang/Class;)Lcmj;

    move-result-object v0

    check-cast v0, Lenh;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
