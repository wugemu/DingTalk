.class public Lewo;
.super Ljava/lang/Object;
.source "TeleConfShortcutHelper.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lewo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lewo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lewo;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static a()Lewo;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lewo;->b:Lewo;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lewo;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lewo;->b:Lewo;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lewo;

    invoke-direct {v0}, Lewo;-><init>()V

    sput-object v0, Lewo;->b:Lewo;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lewo;->b:Lewo;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1073
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v3, "oppo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 58
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewo;->a:Ljava/lang/String;

    const-string/jumbo v3, "Shortcut black list"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .local v0, "shortcutValid":Z
    :goto_1
    return v0

    .line 1077
    .end local v0    # "shortcutValid":Z
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    move v1, v0

    .line 1080
    goto :goto_0

    .line 1177
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "conf_call_shortcut"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 63
    .restart local v0    # "shortcutValid":Z
    goto :goto_1
.end method

.method public static c()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "myIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 88
    return-object v0
.end method


# virtual methods
.method public final d()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 102
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Leuj$l;->dt_conference_business_call:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "name":Ljava/lang/String;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_0

    .line 122
    :goto_0
    return v3

    .line 119
    :cond_0
    invoke-static {}, Lewo;->c()Landroid/content/Intent;

    move-result-object v1

    .line 121
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Leuj$h;->desktop_dingtalkcall_launch_icon:I

    invoke-static {v4, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    .line 120
    invoke-static {v0, v1, v2, v3, v4}, Lcpp;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZLandroid/content/Intent$ShortcutIconResource;)Z

    .line 122
    const/4 v3, 0x1

    goto :goto_0
.end method
