.class public final Lhkr;
.super Ljava/lang/Object;
.source "LocationBrowserActivityPermissionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhkr$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Lbyw;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    sput-object v0, Lhkr;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a(Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;I[I)V
    .locals 2
    .param p0, "target"    # Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;
    .param p1, "requestCode"    # I
    .param p2, "grantResults"    # [I

    .prologue
    .line 41
    packed-switch p1, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 43
    :pswitch_0
    sget-object v0, Lhkr;->a:[Ljava/lang/String;

    invoke-static {p0, v0, p2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    sget-object v0, Lhkr;->b:Lbyw;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lhkr;->b:Lbyw;

    invoke-interface {v0}, Lbyw;->c()V

    .line 47
    :cond_0
    sget-object v0, Lhkr;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->grant:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    .line 57
    :goto_1
    const/4 v0, 0x0

    sput-object v0, Lhkr;->b:Lbyw;

    goto :goto_0

    .line 49
    :cond_1
    sget-object v0, Lhkr;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    sget-object v0, Lhkr;->a:[Ljava/lang/String;

    .line 1180
    invoke-static {p0, v0}, Lbzw;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 51
    sget-object v0, Lhkr;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onNeverAsk:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_1

    .line 53
    :cond_2
    sget-object v0, Lhkr;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 54
    sget-object v0, Lhkr;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_1

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "target"    # Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 25
    sget-object v0, Lhkr;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->a()V

    .line 37
    :goto_0
    return-void

    .line 28
    :cond_0
    new-instance v0, Lhkr$a;

    invoke-direct {v0, p0, p1, v2}, Lhkr$a;-><init>(Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;Landroid/os/Bundle;B)V

    sput-object v0, Lhkr;->b:Lbyw;

    .line 29
    sget-object v0, Lhkr;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    sget-object v0, Lhkr;->a:[Ljava/lang/String;

    new-instance v1, Lhkr$a;

    invoke-direct {v1, p0, p1, v2}, Lhkr$a;-><init>(Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;Landroid/os/Bundle;B)V

    invoke-static {p0, v0, v1}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;Lbyx;)V

    .line 31
    sget-object v0, Lhkr;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->showRation:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 33
    :cond_1
    sget-object v0, Lhkr;->a:[Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcd;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 34
    sget-object v0, Lhkr;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lhkr;->a:[Ljava/lang/String;

    return-object v0
.end method
