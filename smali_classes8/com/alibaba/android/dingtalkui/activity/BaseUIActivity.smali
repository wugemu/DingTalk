.class public Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseUIActivity.java"


# instance fields
.field protected mContent:Landroid/view/ViewGroup;

.field private mIsImmersiveStatusBarInitSuccess:Z

.field protected mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

.field protected mToolbarContainer:Landroid/view/View;

.field protected mToolbarDivide:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mIsImmersiveStatusBarInitSuccess:Z

    return-void
.end method

.method private compatFixSystemWindows()V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x14
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getContentId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 505
    .local v0, "fitSystemWindowsView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 506
    new-instance v1, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity$1;-><init>(Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 515
    :cond_0
    return-void
.end method

.method private getNavigationDescription()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 138
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    sget v3, Lecj$a;->ui_common_base_ui_attr_toolbarNavigationDescription:I

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 140
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 142
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 144
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    :goto_0
    return-object v1

    .line 144
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1

    .line 148
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static isLightColor(I)Z
    .locals 10
    .param p0, "color"    # I

    .prologue
    const/4 v3, 0x1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 345
    const/4 v4, 0x3

    new-array v2, v4, [F

    .line 346
    .local v2, "hsv":[F
    invoke-static {p0, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 347
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    aget v5, v2, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    aget v6, v2, v3

    float-to-double v6, v6

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 348
    .local v0, "d":D
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isMeizu()Z
    .locals 2

    .prologue
    .line 338
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 340
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXiaomi()Z
    .locals 2

    .prologue
    .line 330
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 332
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notInImmersiveStatusBarBlackList()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 447
    const-string/jumbo v1, "Everest"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    :cond_0
    :goto_0
    return v0

    .line 449
    :cond_1
    const-string/jumbo v1, "HTC"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static setStatusBarFontForMeizu(Landroid/app/Activity;Z)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dark"    # Z

    .prologue
    .line 479
    invoke-static {p0, p1}, Ledb;->a(Landroid/app/Activity;Z)V

    .line 480
    return-void
.end method

.method private static setStatusBarFontForMiui(Landroid/view/Window;Z)Z
    .locals 11
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "dark"    # Z

    .prologue
    .line 456
    const/4 v6, 0x0

    .line 457
    .local v6, "result":Z
    if-eqz p0, :cond_0

    .line 458
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 461
    .local v0, "clazz":Ljava/lang/Class;
    :try_start_0
    const-string/jumbo v7, "android.view.MiuiWindowManager$LayoutParams"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 462
    .local v5, "layoutParams":Ljava/lang/Class;
    const-string/jumbo v7, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 463
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 464
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

    .line 465
    .local v3, "extraFlagField":Ljava/lang/reflect/Method;
    if-eqz p1, :cond_1

    .line 466
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

    .line 470
    :goto_0
    const/4 v6, 0x1

    .line 475
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "darkModeFlag":I
    .end local v3    # "extraFlagField":Ljava/lang/reflect/Method;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "layoutParams":Ljava/lang/Class;
    :cond_0
    :goto_1
    return v6

    .line 468
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

    .line 471
    .end local v1    # "darkModeFlag":I
    .end local v3    # "extraFlagField":Ljava/lang/reflect/Method;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "layoutParams":Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 472
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static setStatusBarModeFor6_0(Landroid/view/Window;Z)Z
    .locals 4
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "dark"    # Z

    .prologue
    .line 483
    const/4 v2, 0x0

    .line 484
    .local v2, "result":Z
    if-eqz p0, :cond_0

    .line 486
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 487
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    .line 488
    .local v3, "ui":I
    if-eqz p1, :cond_1

    .line 489
    or-int/lit16 v3, v3, 0x2000

    .line 493
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    const/4 v2, 0x1

    .line 499
    .end local v0    # "decorView":Landroid/view/View;
    .end local v3    # "ui":I
    :cond_0
    :goto_1
    return v2

    .line 491
    .restart local v0    # "decorView":Landroid/view/View;
    .restart local v3    # "ui":I
    :cond_1
    and-int/lit16 v3, v3, -0x2001

    goto :goto_0

    .line 495
    .end local v0    # "decorView":Landroid/view/View;
    .end local v3    # "ui":I
    :catch_0
    move-exception v1

    .line 496
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setupToolbar()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getToolbarContainerId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mToolbarContainer:Landroid/view/View;

    .line 244
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->hasToolbar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->showToolbar()V

    .line 249
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getToolbarId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    .line 250
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->createNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 252
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getNavigationDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->createOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 254
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 255
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getToolbarDivideId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mToolbarDivide:Landroid/view/View;

    .line 258
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->hasToolbarDivide()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->showToolbarDivide()V

    .line 263
    :goto_1
    return-void

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->hideToolbar()V

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->hideToolbarDivide()V

    goto :goto_1
.end method


# virtual methods
.method public createNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 124
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    sget v3, Lecj$a;->ui_common_base_ui_attr_toolbarNavigationIcon:I

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 126
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    :goto_0
    return-object v1

    .line 130
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1

    .line 134
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 152
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    sget v3, Lecj$a;->ui_common_base_ui_attr_toolbarOverflowIcon:I

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 154
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 158
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    :goto_0
    return-object v1

    .line 158
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1

    .line 162
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentId()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lecj$a;->ui_common_base_ui_attr_contentId:I

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 103
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 105
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    :cond_0
    return v1

    .line 105
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public getImmersiveStatusBarPlaceholderColor()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lecj$a;->ui_common_base_ui_attr_immersiveStatusBarPlaceholderColor:I

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 115
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 117
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    :cond_0
    return v1

    .line 117
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public getImmersiveStatusBarPlaceholderId()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lecj$a;->ui_common_base_ui_attr_immersiveStatusBarPlaceholderId:I

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 55
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    :cond_0
    return v1

    .line 57
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public getRootContentViewLayoutRes()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lecj$a;->ui_common_base_ui_attr_rootContentViewLayout:I

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 43
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    :cond_0
    return v1

    .line 45
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public getStatusBarHeight()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 317
    :try_start_0
    const-string/jumbo v5, "com.android.internal.R$dimen"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 318
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 319
    .local v3, "obj":Ljava/lang/Object;
    const-string/jumbo v5, "status_bar_height"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 320
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 321
    .local v4, "x":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 324
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "x":I
    :goto_0
    return v5

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getToolbarContainerId()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lecj$a;->ui_common_base_ui_attr_toolbarContainerId:I

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 67
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    :cond_0
    return v1

    .line 69
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public getToolbarDivideId()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lecj$a;->ui_common_base_ui_attr_toolbarDivideId:I

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 91
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 93
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    :cond_0
    return v1

    .line 93
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public getToolbarId()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lecj$a;->ui_common_base_ui_attr_toolbarId:I

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 79
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    :cond_0
    return v1

    .line 81
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public hasImmersiveStatusBar()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lecj$a;->ui_common_base_ui_attr_hasImmersiveStatusBar:I

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 191
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 193
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 195
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 198
    :cond_0
    return v1

    .line 195
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public hasToolbar()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lecj$a;->ui_common_base_ui_attr_hasToolbar:I

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 167
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 169
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 171
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    :cond_0
    return v1

    .line 171
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public hasToolbarDivide()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lecj$a;->ui_common_base_ui_attr_hasToolbarDivide:I

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 179
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 181
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 183
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 186
    :cond_0
    return v1

    .line 183
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public hideToolbar()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mToolbarContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mToolbarContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    :cond_0
    return-void
.end method

.method public hideToolbarDivide()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mToolbarDivide:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mToolbarDivide:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    :cond_0
    return-void
.end method

.method public isImmersiveStatusBarInitSuccess()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mIsImmersiveStatusBarInitSuccess:Z

    return v0
.end method

.method public isImmersiveStatusBarTextDarkMode()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lecj$a;->ui_common_base_ui_attr_isImmersiveStatusBarTextDarkMode:I

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 215
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 217
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 219
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 222
    :cond_0
    return v1

    .line 219
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public needImmersiveStatusBarPlaceholder()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lecj$a;->ui_common_base_ui_attr_needImmersiveStatusBarPlaceholder:I

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 203
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 205
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 207
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    :cond_0
    return v1

    .line 207
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutRes"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getRootContentViewLayoutRes()I

    move-result v0

    .line 232
    .local v0, "rootContentViewLayoutRes":I
    if-lez v0, :cond_0

    .line 233
    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 234
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->setupToolbar()V

    .line 235
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->setupContent(Landroid/view/View;)V

    .line 239
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->setupImmersiveStatusBar()V

    .line 240
    return-void

    .line 237
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public setImmersiveStatusBarBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 388
    invoke-static {p1}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->isLightColor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->setImmersiveStatusBarBackgroundColor(IZ)V

    .line 394
    :goto_0
    return-void

    .line 392
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->setImmersiveStatusBarBackgroundColor(IZ)V

    goto :goto_0
.end method

.method public setImmersiveStatusBarBackgroundColor(IZ)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "isDark"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 359
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mIsImmersiveStatusBarInitSuccess:Z

    if-nez v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getImmersiveStatusBarPlaceholderId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 363
    .local v0, "placeholder":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 364
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 366
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4

    .line 367
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->setStatusBarModeFor6_0(Landroid/view/Window;Z)Z

    .line 368
    invoke-static {}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->isXiaomi()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 369
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->setStatusBarFontForMiui(Landroid/view/Window;Z)Z

    goto :goto_0

    .line 370
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->isMeizu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    invoke-static {p0, p2}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->setStatusBarFontForMeizu(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 374
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->isXiaomi()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 375
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->setStatusBarFontForMiui(Landroid/view/Window;Z)Z

    goto :goto_0

    .line 376
    :cond_5
    invoke-static {}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->isMeizu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    invoke-static {p0, p2}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->setStatusBarFontForMeizu(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method protected setupContent(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 302
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getContentId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mContent:Landroid/view/ViewGroup;

    .line 303
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mContent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 304
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 305
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 308
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method protected setupImmersiveStatusBar()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 400
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->hasImmersiveStatusBar()Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->notInImmersiveStatusBarBlackList()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 401
    const/4 v2, 0x1

    .line 402
    .local v2, "success":Z
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->isImmersiveStatusBarTextDarkMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 403
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_4

    .line 404
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->setStatusBarModeFor6_0(Landroid/view/Window;Z)Z

    move-result v2

    .line 405
    invoke-static {}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->isXiaomi()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 406
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->setStatusBarFontForMiui(Landroid/view/Window;Z)Z

    .line 420
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 421
    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mIsImmersiveStatusBarInitSuccess:Z

    .line 422
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 423
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 424
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 425
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v4

    or-int/lit16 v4, v4, 0x400

    or-int/lit16 v4, v4, 0x100

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 426
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 427
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getImmersiveStatusBarPlaceholderId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 428
    .local v1, "placeholder":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->needImmersiveStatusBarPlaceholder()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 431
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 432
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getImmersiveStatusBarPlaceholderColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 433
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 434
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getStatusBarHeight()I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 435
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->compatFixSystemWindows()V

    .line 444
    .end local v1    # "placeholder":Landroid/view/View;
    .end local v2    # "success":Z
    :cond_2
    return-void

    .line 407
    .restart local v2    # "success":Z
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->isMeizu()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 408
    invoke-static {p0, v5}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->setStatusBarFontForMeizu(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 411
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->isXiaomi()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 412
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->setStatusBarFontForMiui(Landroid/view/Window;Z)Z

    move-result v2

    goto/16 :goto_0

    .line 413
    :cond_5
    invoke-static {}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->isMeizu()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 414
    invoke-static {p0, v5}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->setStatusBarFontForMeizu(Landroid/app/Activity;Z)V

    goto/16 :goto_0

    .line 416
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 437
    .restart local v1    # "placeholder":Landroid/view/View;
    :cond_7
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public showToolbar()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 269
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mToolbarContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mToolbarContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :cond_0
    return-void
.end method

.method public showToolbarDivide()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 287
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mToolbarDivide:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->mToolbarDivide:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    :cond_0
    return-void
.end method
