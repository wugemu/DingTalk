.class public final Lfsj;
.super Ljava/lang/Object;
.source "MyConnectionsActivityPermissionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfsj$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Lbyw;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    sput-object v0, Lfsj;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static a(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;I[I)V
    .locals 2
    .param p0, "target"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;
    .param p1, "requestCode"    # I
    .param p2, "grantResults"    # [I

    .prologue
    .line 40
    packed-switch p1, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 42
    :pswitch_0
    sget-object v0, Lfsj;->a:[Ljava/lang/String;

    invoke-static {p0, v0, p2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    sget-object v0, Lfsj;->b:Lbyw;

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lfsj;->b:Lbyw;

    invoke-interface {v0}, Lbyw;->c()V

    .line 46
    :cond_0
    sget-object v0, Lfsj;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->grant:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    .line 56
    :goto_1
    const/4 v0, 0x0

    sput-object v0, Lfsj;->b:Lbyw;

    goto :goto_0

    .line 48
    :cond_1
    sget-object v0, Lfsj;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    invoke-static {}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->b()V

    .line 50
    sget-object v0, Lfsj;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onNeverAsk:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_1

    .line 52
    :cond_2
    invoke-static {}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->a()V

    .line 53
    sget-object v0, Lfsj;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_1

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;)V
    .locals 3
    .param p0, "target"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;
    .param p1, "listener"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;

    .prologue
    const/4 v2, 0x0

    .line 24
    sget-object v0, Lfsj;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->a(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;)V

    .line 36
    :goto_0
    return-void

    .line 27
    :cond_0
    new-instance v0, Lfsj$a;

    invoke-direct {v0, p0, p1, v2}, Lfsj$a;-><init>(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;B)V

    sput-object v0, Lfsj;->b:Lbyw;

    .line 28
    sget-object v0, Lfsj;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    sget-object v0, Lfsj;->a:[Ljava/lang/String;

    new-instance v1, Lfsj$a;

    invoke-direct {v1, p0, p1, v2}, Lfsj$a;-><init>(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;B)V

    invoke-static {p0, v0, v1}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;Lbyx;)V

    .line 30
    sget-object v0, Lfsj;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->showRation:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 32
    :cond_1
    sget-object v0, Lfsj;->a:[Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcd;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 33
    sget-object v0, Lfsj;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lfsj;->a:[Ljava/lang/String;

    return-object v0
.end method
