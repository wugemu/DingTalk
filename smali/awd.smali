.class public final Lawd;
.super Ljava/lang/Object;
.source "NotchScreenUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 22
    invoke-static {}, Lavq;->l()Z

    move-result v7

    if-nez v7, :cond_0

    .line 50
    :goto_0
    return v9

    .line 25
    :cond_0
    const/4 v4, 0x0

    .line 27
    .local v4, "enableHideStatusBar":Z
    :try_start_0
    invoke-static {}, Lcof;->j()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 29
    .local v2, "cl":Ljava/lang/ClassLoader;
    const-string/jumbo v7, "com.huawei.android.util.HwNotchSizeUtil"

    invoke-virtual {v2, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 30
    .local v1, "HwNotchSizeUtil":Ljava/lang/Class;
    const-string/jumbo v7, "hasNotchInScreen"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 31
    .local v5, "get":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    if-nez v7, :cond_2

    move v4, v8

    .line 49
    .end local v1    # "HwNotchSizeUtil":Ljava/lang/Class;
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v5    # "get":Ljava/lang/reflect/Method;
    :cond_1
    :goto_1
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v10, "[NotchScreenUtil] enableHideStatusBar:"

    aput-object v10, v7, v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, ", phone type:"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v7}, Lavy;->a([Ljava/lang/String;)V

    move v9, v4

    .line 50
    goto :goto_0

    .restart local v1    # "HwNotchSizeUtil":Ljava/lang/Class;
    .restart local v2    # "cl":Ljava/lang/ClassLoader;
    .restart local v5    # "get":Ljava/lang/reflect/Method;
    :cond_2
    move v4, v9

    .line 31
    goto :goto_1

    .line 32
    .end local v1    # "HwNotchSizeUtil":Ljava/lang/Class;
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v5    # "get":Ljava/lang/reflect/Method;
    :cond_3
    :try_start_1
    invoke-static {}, Lcof;->b()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v10, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    move v4, v8

    :goto_2
    goto :goto_1

    :cond_4
    move v4, v9

    goto :goto_2

    .line 34
    :cond_5
    invoke-static {}, Lcof;->h()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 35
    const-string/jumbo v7, "ro.miui.notch"

    invoke-static {v7}, Lcab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {v7, v10}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v8, :cond_6

    move v4, v8

    :goto_3
    goto :goto_1

    :cond_6
    move v4, v9

    goto :goto_3

    .line 36
    :cond_7
    invoke-static {}, Lcof;->c()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 38
    .local v3, "classLoader":Ljava/lang/ClassLoader;
    const-string/jumbo v7, "android.util.FtFeature"

    invoke-virtual {v3, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 39
    .local v0, "FtFeature":Ljava/lang/Class;
    const-string/jumbo v7, "isFeatureSupport"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v0, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 40
    .local v6, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0x20

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v10

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v7

    if-nez v7, :cond_8

    move v4, v8

    :goto_4
    goto/16 :goto_1

    :cond_8
    move v4, v9

    goto :goto_4

    .line 43
    .end local v0    # "FtFeature":Ljava/lang/Class;
    .end local v3    # "classLoader":Ljava/lang/ClassLoader;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v7

    new-array v7, v8, [Ljava/lang/String;

    const-string/jumbo v10, "[NotchScreenUtil] hasNotchInScreen ClassNotFoundException"

    aput-object v10, v7, v9

    invoke-static {v7}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 45
    :catch_1
    move-exception v7

    new-array v7, v8, [Ljava/lang/String;

    const-string/jumbo v10, "[NotchScreenUtil] hasNotchInScreen NoSuchMethodException"

    aput-object v10, v7, v9

    invoke-static {v7}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 47
    :catch_2
    move-exception v7

    new-array v7, v8, [Ljava/lang/String;

    const-string/jumbo v10, "[NotchScreenUtil] hasNotchInScreen Exception"

    aput-object v10, v7, v9

    invoke-static {v7}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_1
.end method
