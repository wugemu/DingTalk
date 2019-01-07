.class public final Lano;
.super Ljava/lang/Object;
.source "AdsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "textResId"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    const/4 v3, 0x0

    .line 121
    :goto_0
    return-object v3

    .line 112
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 113
    .local v2, "resources":Landroid/content/res/Resources;
    const-string/jumbo v4, "string"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 114
    .local v1, "resId":I
    const/4 v3, 0x0

    .line 116
    .local v3, "text":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v4, "mgr"

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 42
    const-string/jumbo v0, "AdsThreadGroup"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method

.method public static a(Lblc;Ljava/lang/Class;)Z
    .locals 10
    .param p0, "adsListener"    # Lblc;
    .param p1, "objectClass"    # Ljava/lang/Class;

    .prologue
    const/4 v7, 0x0

    .line 54
    if-nez p0, :cond_0

    .line 55
    const-string/jumbo v2, "adsListener or listenerClass is null"

    .line 56
    .local v2, "errorMessage":Ljava/lang/String;
    const-string/jumbo v8, "mgr"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v8, v2, v9}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .end local v2    # "errorMessage":Ljava/lang/String;
    :goto_0
    return v7

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 61
    .local v4, "superClass":Ljava/lang/Class;
    if-nez v4, :cond_1

    .line 62
    const-string/jumbo v2, "superClass is null"

    .line 63
    .restart local v2    # "errorMessage":Ljava/lang/String;
    const-string/jumbo v8, "mgr"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v8, v2, v9}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v6

    .line 68
    .local v6, "superClassTypes":[Ljava/lang/reflect/Type;
    if-eqz v6, :cond_2

    array-length v8, v6

    if-gtz v8, :cond_3

    .line 69
    :cond_2
    const-string/jumbo v2, "superClassTypes is null or empty"

    .line 70
    .restart local v2    # "errorMessage":Ljava/lang/String;
    const-string/jumbo v8, "mgr"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v8, v2, v9}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_3
    aget-object v5, v6, v7

    .line 75
    .local v5, "superClassType":Ljava/lang/reflect/Type;
    instance-of v8, v5, Ljava/lang/reflect/ParameterizedType;

    if-nez v8, :cond_4

    .line 76
    const-string/jumbo v2, "superClassType is not instanceof ParameterizedType"

    .line 77
    .restart local v2    # "errorMessage":Ljava/lang/String;
    const-string/jumbo v8, "mgr"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v8, v2, v9}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_4
    move-object v3, v5

    .line 81
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 82
    .local v3, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 83
    .local v1, "argumentTypes":[Ljava/lang/reflect/Type;
    if-eqz v1, :cond_5

    array-length v8, v1

    if-gtz v8, :cond_6

    .line 84
    :cond_5
    const-string/jumbo v2, "argumentTypes is null or empty"

    .line 85
    .restart local v2    # "errorMessage":Ljava/lang/String;
    const-string/jumbo v8, "mgr"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v8, v2, v9}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_6
    aget-object v0, v1, v7

    .line 90
    .local v0, "argumentType":Ljava/lang/reflect/Type;
    if-nez v0, :cond_7

    .line 91
    const-string/jumbo v2, "argumentType is null"

    .line 92
    .restart local v2    # "errorMessage":Ljava/lang/String;
    const-string/jumbo v8, "mgr"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v8, v2, v9}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_7
    if-ne v0, p1, :cond_8

    .line 97
    const/4 v7, 0x1

    goto :goto_0

    .line 100
    :cond_8
    const-string/jumbo v2, "class is not equal"

    .line 101
    .restart local v2    # "errorMessage":Ljava/lang/String;
    const-string/jumbo v8, "mgr"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v8, v2, v9}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
