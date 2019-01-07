.class public final Lbxm;
.super Ljava/lang/Object;
.source "AnchorActivityPermissionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbxm$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v2, v0, v1

    sput-object v0, Lbxm;->a:[Ljava/lang/String;

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

.method public static a(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V
    .locals 5
    .param p0, "target"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    const/4 v4, 0x0

    .line 24
    sget-object v1, Lbxm;->a:[Ljava/lang/String;

    invoke-static {p0, v1}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a()V

    .line 41
    :goto_0
    return-void

    .line 27
    :cond_0
    sget-object v1, Lbxm;->a:[Ljava/lang/String;

    invoke-static {p0, v1}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    sget-object v1, Lbxm;->a:[Ljava/lang/String;

    new-instance v2, Lbxm$a;

    invoke-direct {v2, p0, v4}, Lbxm$a;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;B)V

    invoke-static {p0, v1, v2}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;Lbyx;)V

    .line 29
    sget-object v1, Lbxm;->a:[Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->showRation:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 31
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 34
    sget-object v1, Lbxm;->a:[Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 36
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    sget-object v1, Lbxm;->a:[Ljava/lang/String;

    invoke-static {p0, v1}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 37
    sget-object v1, Lbxm;->a:[Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;I)V
    .locals 2
    .param p0, "target"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;
    .param p1, "requestCode"    # I

    .prologue
    .line 44
    packed-switch p1, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 46
    :pswitch_0
    sget-object v0, Lbxm;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a()V

    .line 48
    sget-object v0, Lbxm;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->grant:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 50
    :cond_0
    sget-object v0, Lbxm;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1344
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->finish()V

    .line 52
    sget-object v0, Lbxm;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onNeverAsk:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 2339
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->finish()V

    .line 55
    sget-object v0, Lbxm;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lbxm;->a:[Ljava/lang/String;

    return-object v0
.end method
