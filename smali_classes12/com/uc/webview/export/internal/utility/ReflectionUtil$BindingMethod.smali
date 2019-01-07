.class public final Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/utility/ReflectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BindingMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 227
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->a:Ljava/lang/Class;

    .line 222
    iput-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->b:Ljava/lang/reflect/Method;

    .line 223
    iput-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->c:Ljava/lang/Object;

    .line 230
    iput-object p1, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->a:Ljava/lang/Class;

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->a:Ljava/lang/Class;

    invoke-virtual {v0, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 236
    :try_start_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->a:Ljava/lang/Class;

    invoke-virtual {v0, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->b:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 237
    :catch_1
    move-exception v0

    .line 238
    new-instance v1, Ljava/lang/NoSuchMethodError;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private declared-synchronized a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->c:Ljava/lang/Object;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final getInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->c:Ljava/lang/Object;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, v0, v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 262
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 264
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 265
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 266
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 267
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 269
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 270
    :catch_1
    move-exception v0

    throw v0

    .line 272
    :catch_2
    move-exception v0

    .line 273
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
