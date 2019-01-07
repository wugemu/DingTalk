.class public Lcom/uc/webview/export/internal/uc/CoreClassPreLoader;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/uc/CoreClassPreLoader$LazyClass;
    }
.end annotation


# static fields
.field protected static Lazy:Lcom/uc/webview/export/internal/uc/CoreClassPreLoader$LazyClass;
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field protected static sLazyUpdateCallback:Ljava/lang/Runnable;
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader;->Lazy:Lcom/uc/webview/export/internal/uc/CoreClassPreLoader$LazyClass;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadCoreClass(Ljava/lang/ClassLoader;)Z
    .locals 3
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader;->Lazy:Lcom/uc/webview/export/internal/uc/CoreClassPreLoader$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader$LazyClass;->a:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized updateLazy(Ljava/lang/ClassLoader;)V
    .locals 2
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .prologue
    .line 47
    const-class v1, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader;->Lazy:Lcom/uc/webview/export/internal/uc/CoreClassPreLoader$LazyClass;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader$LazyClass;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader$LazyClass;-><init>(Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader;->Lazy:Lcom/uc/webview/export/internal/uc/CoreClassPreLoader$LazyClass;

    .line 49
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader;->sLazyUpdateCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader;->sLazyUpdateCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    monitor-exit v1

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
