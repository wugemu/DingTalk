.class public final Lcju;
.super Ljava/lang/Object;
.source "FpsFrameConfig.java"


# static fields
.field static final a:J

.field public static b:I

.field public static c:I

.field static d:F

.field static e:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x1e

    .line 20
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2e0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcju;->a:J

    .line 22
    sput v4, Lcju;->b:I

    .line 23
    sput v4, Lcju;->c:I

    .line 25
    const/high16 v0, 0x42700000    # 60.0f

    sput v0, Lcju;->d:F

    .line 27
    const v0, 0x4e6e6b28    # 1.0E9f

    sget v1, Lcju;->d:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    sput-wide v0, Lcju;->e:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()V
    .locals 5

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    .line 30
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 31
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 33
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRefreshRate()F

    move-result v2

    sput v2, Lcju;->d:F

    .line 34
    const v2, 0x4e6e6b28    # 1.0E9f

    sget v3, Lcju;->d:F

    div-float/2addr v2, v3

    float-to-long v2, v2

    sput-wide v2, Lcju;->e:J

    .line 35
    invoke-static {v0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    sput v2, Lcju;->b:I

    .line 36
    invoke-static {v0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    sput v2, Lcju;->c:I

    .line 37
    return-void
.end method
