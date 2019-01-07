.class public Lcom/uc/webview/export/cyclone/UCSingleton;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/cyclone/Constant;
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
.field private mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mConstructorParameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mInst:Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/uc/webview/export/cyclone/UCSingleton;->mClazz:Ljava/lang/Class;

    .line 18
    iput-object p2, p0, Lcom/uc/webview/export/cyclone/UCSingleton;->mConstructorParameterTypes:[Ljava/lang/Class;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/cyclone/UCSingleton;->mInst:Ljava/lang/Object;

    .line 20
    return-void
.end method


# virtual methods
.method public getInst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/UCSingleton;->mInst:Ljava/lang/Object;

    return-object v0
.end method

.method public varargs initInst([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/UCSingleton;->mInst:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/UCSingleton;->mInst:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/UCSingleton;->mClazz:Ljava/lang/Class;

    iget-object v1, p0, Lcom/uc/webview/export/cyclone/UCSingleton;->mConstructorParameterTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 30
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/cyclone/UCSingleton;->mInst:Ljava/lang/Object;

    .line 32
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/UCSingleton;->mInst:Ljava/lang/Object;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
