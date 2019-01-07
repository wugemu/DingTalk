.class public Lijv;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static a:Lijv;


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lijv;->e:Z

    .line 20
    iput-object p1, p0, Lijv;->d:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;)Lijv;
    .locals 5

    .prologue
    .line 24
    sget-object v0, Lijv;->a:Lijv;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lijv;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lijv;->a:Lijv;

    if-nez v0, :cond_0

    .line 27
    new-instance v2, Lijv;

    invoke-direct {v2, p0}, Lijv;-><init>(Landroid/content/Context;)V

    .line 28
    sput-object v2, Lijv;->a:Lijv;

    .line 1037
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x11

    if-lt v0, v3, :cond_2

    .line 1040
    :try_start_1
    iget-object v0, v2, Lijv;->d:Landroid/content/Context;

    const-string/jumbo v3, "window"

    .line 1041
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1042
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 1043
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1044
    invoke-virtual {v3, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1052
    :goto_0
    :try_start_2
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v2, Lijv;->b:I

    .line 1053
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, v2, Lijv;->c:I

    .line 1054
    invoke-direct {v2}, Lijv;->b()V

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lijv;->a:Lijv;

    return-object v0

    .line 1045
    :catch_0
    move-exception v0

    .line 1046
    :try_start_3
    invoke-static {}, Lika;->d()Likq;

    move-result-object v3

    const-string/jumbo v4, "DeviceInfo_log"

    invoke-interface {v3, v4, v0}, Likq;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1050
    :cond_2
    iget-object v0, v2, Lijv;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lijv;->d:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 61
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    .line 62
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    .line 63
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lijv;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_1
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "DeviceInfo_log"

    invoke-interface {v1, v2, v0}, Likq;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lijv;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lijv;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
