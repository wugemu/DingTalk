.class public Lcom/uc/webview/export/internal/uc/CoreClassPreLoader$LazyClass;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/uc/CoreClassPreLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyClass"
.end annotation


# instance fields
.field final a:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final sCoreClassLoaderImpl:Ljava/lang/Class;
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 6

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader$LazyClass;->a(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader$LazyClass;->sCoreClassLoaderImpl:Ljava/lang/Class;

    .line 39
    new-instance v0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    iget-object v1, p0, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader$LazyClass;->sCoreClassLoaderImpl:Ljava/lang/Class;

    const-string/jumbo v2, "loadCoreClass"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/ClassLoader;

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader$LazyClass;->a:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    .line 42
    return-void
.end method

.method private static a(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 30
    :try_start_0
    const-string/jumbo v0, "com.uc.webkit.sdk.CoreClassPreLoaderImpl"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xfbc

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method
