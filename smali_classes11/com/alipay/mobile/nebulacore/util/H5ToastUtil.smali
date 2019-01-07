.class public Lcom/alipay/mobile/nebulacore/util/H5ToastUtil;
.super Ljava/lang/Object;
.source "H5ToastUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkOp(Landroid/content/Context;I)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # I

    .prologue
    .line 18
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .local v5, "version":I
    const/16 v6, 0x13

    if-lt v5, v6, :cond_0

    .line 20
    const-string/jumbo v6, "appops"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 21
    .local v4, "object":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 23
    .local v0, "c":Ljava/lang/Class;
    const/4 v6, 0x3

    :try_start_0
    new-array v1, v6, [Ljava/lang/Class;

    .line 24
    .local v1, "cArg":[Ljava/lang/Class;
    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v6

    .line 25
    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v6

    .line 26
    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v1, v6

    .line 27
    const-string/jumbo v6, "checkOp"

    invoke-virtual {v0, v6, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 28
    .local v3, "lMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 28
    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 34
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "cArg":[Ljava/lang/Class;
    .end local v3    # "lMethod":Ljava/lang/reflect/Method;
    .end local v4    # "object":Ljava/lang/Object;
    :goto_0
    return v6

    .line 30
    .restart local v0    # "c":Ljava/lang/Class;
    .restart local v4    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 31
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SimpleToast"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v4    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v6, -0x1

    goto :goto_0
.end method
