.class public Leju;
.super Ljava/lang/Object;
.source "OAPopUpWindowHelper.java"


# static fields
.field private static volatile d:Leju;


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

.field public b:Landroid/widget/ListPopupWindow;

.field public c:Lelp$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Leju;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    .locals 1
    .param p0, "x0"    # Leju;

    .prologue
    .line 42
    iget-object v0, p0, Leju;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    return-object v0
.end method

.method public static a()Leju;
    .locals 2

    .prologue
    .line 52
    const-class v1, Leju;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Leju;->d:Leju;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Leju;

    invoke-direct {v0}, Leju;-><init>()V

    sput-object v0, Leju;->d:Leju;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    sget-object v0, Leju;->d:Leju;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Leju;Lelp$a;)Lelp$a;
    .locals 1
    .param p0, "x0"    # Leju;
    .param p1, "x1"    # Lelp$a;

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Leju;->c:Lelp$a;

    return-object v0
.end method

.method static synthetic b(Leju;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Leju;

    .prologue
    .line 42
    iget-object v0, p0, Leju;->b:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic c(Leju;)Lelp$a;
    .locals 1
    .param p0, "x0"    # Leju;

    .prologue
    .line 42
    iget-object v0, p0, Leju;->c:Lelp$a;

    return-object v0
.end method
