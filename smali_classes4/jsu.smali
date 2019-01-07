.class public final Ljsu;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public a:Ljsv;

.field private b:Ljss;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "new QQAuth() --start"

    invoke-static {v0, v1}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljsv;

    invoke-direct {v0, p1}, Ljsv;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljsu;->a:Ljsv;

    .line 41
    new-instance v0, Ljss;

    iget-object v1, p0, Ljsu;->a:Ljsv;

    invoke-direct {v0, v1}, Ljss;-><init>(Ljsv;)V

    iput-object v0, p0, Ljsu;->b:Ljss;

    .line 42
    iget-object v0, p0, Ljsu;->a:Ljsv;

    invoke-static {p2, v0}, Ljsr;->a(Landroid/content/Context;Ljsv;)V

    .line 43
    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "new QQAuth() --end"

    invoke-static {v0, v1}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Ljsu;
    .locals 4

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1064
    sput-object v0, Ljtr;->a:Landroid/content/Context;

    .line 57
    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "QQAuth -- createInstance() --start"

    invoke-static {v0, v1}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 60
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.tencent.tauth.AuthActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 65
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.tencent.connect.common.AssistActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    new-instance v0, Ljsu;

    invoke-direct {v0, p0, p1}, Ljsu;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 79
    const-string/jumbo v1, "openSDK_LOG"

    const-string/jumbo v2, "QQAuth -- createInstance()  --end"

    invoke-static {v1, v2}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_0
    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string/jumbo v1, "openSDK_LOG"

    const-string/jumbo v2, "createInstance() error --end"

    invoke-static {v1, v2, v0}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u8bf7\u53c2\u7167\u6587\u6863\u5728Androidmanifest.xml\u52a0\u4e0aAuthActivity\u548cAssitActivity\u7684\u5b9a\u4e49 "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 74
    const/4 v0, 0x0

    goto :goto_0
.end method
