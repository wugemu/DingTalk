.class public Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;
.super Ljava/lang/Object;
.source "NavigationBarUtil.java"


# static fields
.field private static final NAV_BAR_HEIGHT_LANDSCAPE_RES_NAME:Ljava/lang/String; = "navigation_bar_height_landscape"

.field private static final NAV_BAR_HEIGHT_RES_NAME:Ljava/lang/String; = "navigation_bar_height"

.field private static final SHOW_NAV_BAR_RES_NAME:Ljava/lang/String; = "config_showNavigationBar"

.field private static sNavBarOverride:Ljava/lang/String;


# instance fields
.field private final mHasNavigationBar:Z

.field private final mInPortrait:Z

.field private final mNavigationBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 33
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 35
    :try_start_0
    const-string/jumbo v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 36
    .local v0, "c":Ljava/lang/Class;
    const-string/jumbo v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 37
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 38
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "qemu.hw.mainkeys"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->sNavBarOverride:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v2

    sput-object v6, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->sNavBarOverride:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->mInPortrait:Z

    .line 48
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->mNavigationBarHeight:I

    .line 49
    iget v1, p0, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->mNavigationBarHeight:I

    if-lez v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->mHasNavigationBar:Z

    .line 50
    return-void

    :cond_0
    move v1, v3

    .line 47
    goto :goto_0

    :cond_1
    move v2, v3

    .line 49
    goto :goto_1
.end method

.method private getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, "result":I
    const-string/jumbo v2, "dimen"

    const-string/jumbo v3, "android"

    invoke-virtual {p1, p2, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 94
    :cond_0
    return v1
.end method

.method private getNavigationBarHeight(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 56
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 57
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->hasNavBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->mInPortrait:Z

    if-eqz v2, :cond_0

    .line 60
    const-string/jumbo v0, "navigation_bar_height"

    .line 64
    .local v0, "key":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v2

    .line 67
    .end local v0    # "key":Ljava/lang/String;
    :goto_1
    return v2

    .line 62
    :cond_0
    const-string/jumbo v0, "navigation_bar_height_landscape"

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0

    .line 67
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private hasNavBar(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 73
    .local v1, "res":Landroid/content/res/Resources;
    const-string/jumbo v3, "config_showNavigationBar"

    const-string/jumbo v4, "bool"

    const-string/jumbo v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 74
    .local v2, "resourceId":I
    if-eqz v2, :cond_2

    .line 75
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 77
    .local v0, "hasNav":Z
    const-string/jumbo v3, "1"

    sget-object v4, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->sNavBarOverride:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    const/4 v0, 0x0

    .line 84
    .end local v0    # "hasNav":Z
    :cond_0
    :goto_0
    return v0

    .line 79
    .restart local v0    # "hasNav":Z
    :cond_1
    const-string/jumbo v3, "0"

    sget-object v4, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->sNavBarOverride:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    const/4 v0, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "hasNav":Z
    :cond_2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNavigationBarHeight()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->mNavigationBarHeight:I

    return v0
.end method

.method public hasNavigationBar()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->mHasNavigationBar:Z

    return v0
.end method
