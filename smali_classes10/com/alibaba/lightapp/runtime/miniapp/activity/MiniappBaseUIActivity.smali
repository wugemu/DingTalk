.class public Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;
.super Lcom/alipay/mobile/nebulacore/ui/H5Activity;
.source "MiniappBaseUIActivity.java"


# instance fields
.field private a:Z

.field protected b:Landroid/view/ViewGroup;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->a:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->c:Z

    return-void
.end method

.method private a()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lecj$a;->ui_common_base_ui_attr_rootContentViewLayout:I

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 41
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 43
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    :cond_0
    return v1

    .line 43
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private a(IZ)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "isDark"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 245
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->c:Z

    if-nez v1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 249
    .local v0, "placeholder":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 250
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 252
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4

    .line 253
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->b(Landroid/view/Window;Z)Z

    .line 254
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 255
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->a(Landroid/view/Window;Z)Z

    goto :goto_0

    .line 256
    :cond_3
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3365
    invoke-static {p0, p2}, Ledb;->a(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 260
    :cond_4
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 261
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->a(Landroid/view/Window;Z)Z

    goto :goto_0

    .line 262
    :cond_5
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4365
    invoke-static {p0, p2}, Ledb;->a(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method private static a(Landroid/view/Window;Z)Z
    .locals 11
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "dark"    # Z

    .prologue
    .line 342
    const/4 v6, 0x0

    .line 343
    .local v6, "result":Z
    if-eqz p0, :cond_0

    .line 344
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 347
    .local v0, "clazz":Ljava/lang/Class;
    :try_start_0
    const-string/jumbo v7, "android.view.MiuiWindowManager$LayoutParams"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 348
    .local v5, "layoutParams":Ljava/lang/Class;
    const-string/jumbo v7, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 349
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 350
    .local v1, "darkModeFlag":I
    const-string/jumbo v7, "setExtraFlags"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 351
    .local v3, "extraFlagField":Ljava/lang/reflect/Method;
    if-eqz p1, :cond_1

    .line 352
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :goto_0
    const/4 v6, 0x1

    .line 361
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "darkModeFlag":I
    .end local v3    # "extraFlagField":Ljava/lang/reflect/Method;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "layoutParams":Ljava/lang/Class;
    :cond_0
    :goto_1
    return v6

    .line 354
    .restart local v0    # "clazz":Ljava/lang/Class;
    .restart local v1    # "darkModeFlag":I
    .restart local v3    # "extraFlagField":Ljava/lang/reflect/Method;
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "layoutParams":Ljava/lang/Class;
    :cond_1
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 357
    .end local v1    # "darkModeFlag":I
    .end local v3    # "extraFlagField":Ljava/lang/reflect/Method;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "layoutParams":Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 358
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private b()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lecj$a;->ui_common_base_ui_attr_immersiveStatusBarPlaceholderId:I

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 53
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    :cond_0
    return v1

    .line 55
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static b(Landroid/view/Window;Z)Z
    .locals 4
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "dark"    # Z

    .prologue
    .line 369
    const/4 v2, 0x0

    .line 370
    .local v2, "result":Z
    if-eqz p0, :cond_0

    .line 372
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 373
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    .line 374
    .local v3, "ui":I
    if-eqz p1, :cond_1

    .line 375
    or-int/lit16 v3, v3, 0x2000

    .line 379
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    const/4 v2, 0x1

    .line 385
    .end local v0    # "decorView":Landroid/view/View;
    .end local v3    # "ui":I
    :cond_0
    :goto_1
    return v2

    .line 377
    .restart local v0    # "decorView":Landroid/view/View;
    .restart local v3    # "ui":I
    :cond_1
    and-int/lit16 v3, v3, -0x2001

    goto :goto_0

    .line 381
    .end local v0    # "decorView":Landroid/view/View;
    .end local v3    # "ui":I
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private c()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lecj$a;->ui_common_base_ui_attr_contentId:I

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 66
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    :cond_0
    return v1

    .line 68
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private d()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lecj$a;->ui_common_base_ui_attr_immersiveStatusBarPlaceholderColor:I

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 78
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    :cond_0
    return v1

    .line 80
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private e()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lecj$a;->ui_common_base_ui_attr_hasImmersiveStatusBar:I

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 90
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 92
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    :cond_0
    return v1

    .line 92
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private f()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lecj$a;->ui_common_base_ui_attr_needImmersiveStatusBarPlaceholder:I

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 100
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 102
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 104
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    :cond_0
    return v1

    .line 104
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private g()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lecj$a;->ui_common_base_ui_attr_isImmersiveStatusBarTextDarkMode:I

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 112
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 114
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 116
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    :cond_0
    return v1

    .line 116
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private h()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    :try_start_0
    const-string/jumbo v5, "com.android.internal.R$dimen"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 204
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 205
    .local v3, "obj":Ljava/lang/Object;
    const-string/jumbo v5, "status_bar_height"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 206
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 207
    .local v4, "x":I
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 210
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "x":I
    :goto_0
    return v5

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static i()Z
    .locals 2

    .prologue
    .line 216
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 218
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j()Z
    .locals 2

    .prologue
    .line 224
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 226
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 10
    .param p1, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v1, 0x1

    .line 274
    .line 5231
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 5232
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 5233
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    aget v4, v0, v4

    sub-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    aget v0, v0, v1

    float-to-double v6, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 5234
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v4, v6

    if-gez v0, :cond_0

    move v0, v1

    .line 274
    :goto_0
    if-eqz v0, :cond_1

    .line 276
    invoke-direct {p0, p1, v1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->a(IZ)V

    .line 280
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 5234
    goto :goto_0

    .line 278
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->a(IZ)V

    goto :goto_1
.end method

.method public finish()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 170
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->finish()V

    .line 171
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v2, "hybrid_enable_mini_anim"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 174
    const-string/jumbo v2, "mainTask"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 175
    .local v1, "isMainTask":Z
    if-eqz v1, :cond_1

    .line 185
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isMainTask":Z
    :cond_0
    :goto_0
    return-void

    .line 179
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "isMainTask":Z
    :cond_1
    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->a:Z

    if-eqz v2, :cond_0

    .line 180
    invoke-static {}, Lhlq;->a()Lhlq;

    invoke-static {p0}, Lhlq;->b(Landroid/app/Activity;)V

    .line 181
    iput-boolean v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->a:Z

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 7
    .param p1, "layoutRes"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 157
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->a()I

    move-result v1

    .line 158
    .local v1, "rootContentViewLayoutRes":I
    if-lez v1, :cond_4

    .line 159
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 160
    .local v0, "realContent":Landroid/view/View;
    invoke-super {p0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->setContentView(I)V

    .line 1188
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->c()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->b:Landroid/view/ViewGroup;

    .line 1189
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->b:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 1190
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1191
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1192
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1286
    .end local v0    # "realContent":Landroid/view/View;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v2, v5, :cond_3

    .line 1333
    const-string/jumbo v2, "Everest"

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v4

    .line 1286
    :goto_1
    if-eqz v2, :cond_3

    .line 1288
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->g()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1289
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v2, v5, :cond_8

    .line 1290
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->b(Landroid/view/Window;Z)Z

    move-result v2

    .line 1291
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->i()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1292
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->a(Landroid/view/Window;Z)Z

    .line 1306
    :cond_1
    :goto_2
    if-eqz v2, :cond_3

    .line 1307
    iput-boolean v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->c:Z

    .line 1308
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1309
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 1310
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1311
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    or-int/lit16 v3, v3, 0x400

    or-int/lit16 v3, v3, 0x100

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1312
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1313
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->b()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1314
    if-eqz v2, :cond_2

    .line 1316
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->f()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1317
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1318
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1319
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1320
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->h()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1321
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2390
    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->c()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2391
    if-eqz v2, :cond_3

    .line 2392
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 166
    :cond_3
    return-void

    .line 163
    :cond_4
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->setContentView(I)V

    goto/16 :goto_0

    .line 1335
    :cond_5
    const-string/jumbo v2, "HTC"

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v4

    .line 1336
    goto/16 :goto_1

    :cond_6
    move v2, v3

    .line 1338
    goto/16 :goto_1

    .line 1293
    :cond_7
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->j()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1365
    invoke-static {p0, v3}, Ledb;->a(Landroid/app/Activity;Z)V

    goto/16 :goto_2

    .line 1297
    :cond_8
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->i()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1298
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->a(Landroid/view/Window;Z)Z

    move-result v2

    goto/16 :goto_2

    .line 1299
    :cond_9
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->j()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2365
    invoke-static {p0, v3}, Ledb;->a(Landroid/app/Activity;Z)V

    move v2, v3

    .line 1300
    goto/16 :goto_2

    :cond_a
    move v2, v4

    .line 1302
    goto/16 :goto_2

    .line 1323
    :cond_b
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_c
    move v2, v3

    goto/16 :goto_2
.end method
