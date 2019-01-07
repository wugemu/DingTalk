.class public final Lbxp;
.super Ljava/lang/Object;
.source "CreateLiveActivityPermissionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbxp$b;,
        Lbxp$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.CAMERA"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v3

    sput-object v0, Lbxp;->a:[Ljava/lang/String;

    .line 19
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.CAMERA"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v3

    sput-object v0, Lbxp;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)V
    .locals 3
    .param p0, "target"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    .prologue
    const/4 v2, 0x0

    .line 25
    sget-object v0, Lbxp;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->a()V

    .line 36
    :goto_0
    return-void

    .line 28
    :cond_0
    sget-object v0, Lbxp;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    sget-object v0, Lbxp;->a:[Ljava/lang/String;

    new-instance v1, Lbxp$a;

    invoke-direct {v1, p0, v2}, Lbxp$a;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;B)V

    invoke-static {p0, v0, v1}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;Lbyx;)V

    .line 30
    sget-object v0, Lbxp;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->showRation:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 32
    :cond_1
    sget-object v0, Lbxp;->a:[Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcd;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 33
    sget-object v0, Lbxp;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;I[I)V
    .locals 2
    .param p0, "target"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;
    .param p1, "requestCode"    # I
    .param p2, "grantResults"    # [I

    .prologue
    .line 54
    packed-switch p1, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 56
    :pswitch_0
    sget-object v0, Lbxp;->a:[Ljava/lang/String;

    invoke-static {p0, v0, p2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->a()V

    .line 58
    sget-object v0, Lbxp;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->grant:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 60
    :cond_0
    sget-object v0, Lbxp;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    sget-object v0, Lbxp;->a:[Ljava/lang/String;

    .line 1180
    invoke-static {p0, v0}, Lbzw;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 62
    sget-object v0, Lbxp;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onNeverAsk:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 64
    :cond_1
    sget-object v0, Lbxp;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 65
    sget-object v0, Lbxp;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 70
    :pswitch_1
    sget-object v0, Lbxp;->b:[Ljava/lang/String;

    invoke-static {p0, v0, p2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->b()V

    .line 72
    sget-object v0, Lbxp;->b:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->grant:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 74
    :cond_2
    sget-object v0, Lbxp;->b:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 75
    sget-object v0, Lbxp;->b:[Ljava/lang/String;

    .line 2180
    invoke-static {p0, v0}, Lbzw;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 76
    sget-object v0, Lbxp;->b:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onNeverAsk:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 78
    :cond_3
    sget-object v0, Lbxp;->b:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 79
    sget-object v0, Lbxp;->b:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lbxp;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public static b(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)V
    .locals 3
    .param p0, "target"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    .prologue
    .line 39
    sget-object v0, Lbxp;->b:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->b()V

    .line 50
    :goto_0
    return-void

    .line 42
    :cond_0
    sget-object v0, Lbxp;->b:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    sget-object v0, Lbxp;->b:[Ljava/lang/String;

    new-instance v1, Lbxp$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lbxp$b;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;B)V

    invoke-static {p0, v0, v1}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;Lbyx;)V

    .line 44
    sget-object v0, Lbxp;->b:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->showRation:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 46
    :cond_1
    sget-object v0, Lbxp;->b:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcd;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 47
    sget-object v0, Lbxp;->b:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lbxp;->b:[Ljava/lang/String;

    return-object v0
.end method
