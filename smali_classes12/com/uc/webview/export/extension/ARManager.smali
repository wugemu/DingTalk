.class public abstract Lcom/uc/webview/export/extension/ARManager;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/extension/IARDetector$ResultListener;


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field private static a:Lcom/uc/webview/export/extension/ARManager;

.field private static b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/uc/webview/export/extension/ARManager;->a:Lcom/uc/webview/export/extension/ARManager;

    .line 19
    sput-object v0, Lcom/uc/webview/export/extension/ARManager;->b:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/uc/webview/export/extension/ARManager;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/uc/webview/export/extension/ARManager;->a:Lcom/uc/webview/export/extension/ARManager;

    if-nez v0, :cond_0

    .line 29
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->q()Lcom/uc/webview/export/extension/ARManager;

    move-result-object v0

    .line 30
    sput-object v0, Lcom/uc/webview/export/extension/ARManager;->a:Lcom/uc/webview/export/extension/ARManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "invoke"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/extension/ARManager;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_0
    :goto_0
    sget-object v0, Lcom/uc/webview/export/extension/ARManager;->a:Lcom/uc/webview/export/extension/ARManager;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public registerARDetector(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 91
    sget-object v0, Lcom/uc/webview/export/extension/ARManager;->a:Lcom/uc/webview/export/extension/ARManager;

    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    sget-object v0, Lcom/uc/webview/export/extension/ARManager;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 94
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 96
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/extension/ARManager;->b:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/uc/webview/export/extension/ARManager;->a:Lcom/uc/webview/export/extension/ARManager;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    .line 100
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public registerARDetector(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/uc/webview/export/extension/ARManager;->a:Lcom/uc/webview/export/extension/ARManager;

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    sget-object v0, Lcom/uc/webview/export/extension/ARManager;->a:Lcom/uc/webview/export/extension/ARManager;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/extension/ARManager;->registerARDetector(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerARDetector(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 61
    sget-object v0, Lcom/uc/webview/export/extension/ARManager;->a:Lcom/uc/webview/export/extension/ARManager;

    if-nez v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    sget-object v0, Lcom/uc/webview/export/extension/ARManager;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v3

    aput-object p3, v0, v1

    .line 66
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/extension/ARManager;->b:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/uc/webview/export/extension/ARManager;->a:Lcom/uc/webview/export/extension/ARManager;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    .line 70
    :catch_2
    move-exception v0

    goto :goto_0
.end method
