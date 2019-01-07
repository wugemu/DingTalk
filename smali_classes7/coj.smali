.class public final Lcoj;
.super Ljava/lang/Object;
.source "DisplayCutoutUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lcof;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lcoj;->b()Z

    move-result v0

    .line 30
    :goto_0
    return v0

    .line 24
    :cond_0
    invoke-static {}, Lcof;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1052
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 1053
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 26
    :cond_1
    invoke-static {}, Lcof;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    invoke-static {}, Lcoj;->c()Z

    move-result v0

    goto :goto_0

    .line 30
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    .line 76
    if-eqz p0, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-ge v6, v7, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v5

    .line 81
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v4

    .line 83
    .local v4, "rootWindowInsets":Landroid/view/WindowInsets;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "getDisplayCutout"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 84
    .local v2, "getDisplayCutout":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, "cutoutInfo":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "getBoundingRects"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 87
    .local v1, "getBoundingRects":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 89
    .local v3, "rects":Ljava/util/List;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "cutoutInfo":Ljava/lang/Object;
    .end local v1    # "getBoundingRects":Ljava/lang/reflect/Method;
    .end local v2    # "getDisplayCutout":Ljava/lang/reflect/Method;
    .end local v3    # "rects":Ljava/util/List;
    .end local v4    # "rootWindowInsets":Landroid/view/WindowInsets;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private static b()Z
    .locals 5

    .prologue
    .line 37
    const/4 v2, 0x0

    .line 39
    .local v2, "result":Z
    :try_start_0
    const-string/jumbo v3, "com.huawei.android.util.HwNotchSizeUtil"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 40
    .local v0, "HwNotchSizeUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "hasNotchInScreen"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 41
    .local v1, "hasNotchInScreen":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 45
    .end local v0    # "HwNotchSizeUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "hasNotchInScreen":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static c()Z
    .locals 7

    .prologue
    .line 60
    const/4 v2, 0x0

    .line 62
    .local v2, "result":Z
    :try_start_0
    const-string/jumbo v3, "android.util.FtFeature"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 63
    .local v0, "FtFeature":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "isFeatureSupport"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 64
    .local v1, "isFeatureSupport":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 67
    .end local v0    # "FtFeature":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "isFeatureSupport":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    :catch_0
    move-exception v3

    goto :goto_0
.end method
