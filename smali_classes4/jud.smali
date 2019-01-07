.class public final Ljud;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static b:Ljud;


# instance fields
.field private final a:Ljsu;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1064
    sput-object v0, Ljtr;->a:Landroid/content/Context;

    .line 46
    invoke-static {p1, p2}, Ljsu;->a(Ljava/lang/String;Landroid/content/Context;)Ljsu;

    move-result-object v0

    iput-object v0, p0, Ljud;->a:Ljsu;

    .line 47
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Landroid/content/Context;)Ljud;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 50
    const-class v1, Ljud;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v2, "openSDK_LOG"

    const-string/jumbo v3, "createInstance()  -- start"

    invoke-static {v2, v3}, Ljtg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v2, Ljud;->b:Ljud;

    if-nez v2, :cond_1

    .line 52
    new-instance v2, Ljud;

    invoke-direct {v2, p0, p1}, Ljud;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v2, Ljud;->b:Ljud;

    .line 60
    :cond_0
    :goto_0
    invoke-static {p1, p0}, Ljud;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 65
    :goto_1
    monitor-exit v1

    return-object v0

    .line 54
    :cond_1
    :try_start_1
    sget-object v2, Ljud;->b:Ljud;

    .line 1347
    iget-object v2, v2, Ljud;->a:Ljsu;

    .line 2287
    iget-object v2, v2, Ljsu;->a:Ljsv;

    .line 3023
    iget-object v2, v2, Ljsv;->a:Ljava/lang/String;

    .line 54
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    sget-object v2, Ljud;->b:Ljud;

    .line 3257
    iget-object v3, v2, Ljud;->a:Ljsu;

    .line 3287
    iget-object v3, v3, Ljsu;->a:Ljsv;

    .line 3257
    const/4 v4, 0x0

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v4, v5}, Ljsv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3258
    iget-object v2, v2, Ljud;->a:Ljsu;

    .line 4287
    iget-object v2, v2, Ljsu;->a:Ljsv;

    .line 3258
    const/4 v3, 0x0

    .line 5049
    iput-object v3, v2, Ljsv;->c:Ljava/lang/String;

    .line 56
    new-instance v2, Ljud;

    invoke-direct {v2, p0, p1}, Ljud;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v2, Ljud;->b:Ljud;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 64
    :cond_2
    :try_start_2
    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v2, "createInstance()  -- end"

    invoke-static {v0, v2}, Ljtg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v0, Ljud;->b:Ljud;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 77
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.tencent.tauth.AuthActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 81
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.tencent.connect.common.AssistActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 110
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 86
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6ca1\u6709\u5728AndroidManifest.xml\u4e2d\u68c0\u6d4b\u5230com.tencent.tauth.AuthActivity,\u8bf7\u52a0\u4e0acom.tencent.open.AuthActivity,\u5e76\u914d\u7f6e<data android:scheme=\"tencent"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" />,\u8be6\u7ec6\u4fe1\u606f\u8bf7\u67e5\u770b\u5b98\u7f51\u6587\u6863."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\u914d\u7f6e\u793a\u4f8b\u5982\u4e0b: \n<activity\n     android:name=\"com.tencent.connect.util.AuthActivity\"\n     android:noHistory=\"true\"\n     android:launchMode=\"singleTask\">\n<intent-filter>\n    <action android:name=\"android.intent.action.VIEW\" />\n     <category android:name=\"android.intent.category.DEFAULT\" />\n    <category android:name=\"android.intent.category.BROWSABLE\" />\n    <data android:scheme=\"tencent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" />\n</intent-filter>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</activity>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    const-string/jumbo v2, "AndroidManifest.xml \u6ca1\u6709\u68c0\u6d4b\u5230com.tencent.tauth.AuthActivity"

    invoke-static {v2, v1}, Ljtg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :catch_1
    move-exception v1

    const-string/jumbo v1, "\u6ca1\u6709\u5728AndroidManifest.xml\u4e2d\u68c0\u6d4b\u5230com.tencent.connect.common.AssistActivity,\u8bf7\u52a0\u4e0acom.tencent.connect.common.AssistActivity,\u8be6\u7ec6\u4fe1\u606f\u8bf7\u67e5\u770b\u5b98\u7f51\u6587\u6863."

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\u914d\u7f6e\u793a\u4f8b\u5982\u4e0b: \n<activity\n     android:name=\"com.tencent.connect.common.AssistActivity\"\n     android:screenOrientation=\"portrait\"\n     android:theme=\"@android:style/Theme.Translucent.NoTitleBar\"\n     android:configChanges=\"orientation|keyboardHidden\">\n</activity>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    const-string/jumbo v2, "AndroidManifest.xml \u6ca1\u6709\u68c0\u6d4b\u5230com.tencent.connect.common.AssistActivity"

    invoke-static {v2, v1}, Ljtg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/os/Bundle;Ljuc;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 321
    new-instance v0, Ljsx;

    iget-object v1, p0, Ljud;->a:Ljsu;

    .line 5287
    iget-object v1, v1, Ljsu;->a:Ljsv;

    .line 321
    invoke-direct {v0, v1}, Ljsx;-><init>(Ljsv;)V

    .line 322
    invoke-virtual {v0, p1, p2, p3}, Ljsx;->a(Landroid/app/Activity;Landroid/os/Bundle;Ljuc;)V

    .line 323
    return-void
.end method

.method public final b(Landroid/app/Activity;Landroid/os/Bundle;Ljuc;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 326
    new-instance v0, Ljsy;

    iget-object v1, p0, Ljud;->a:Ljsu;

    .line 6287
    iget-object v1, v1, Ljsu;->a:Ljsv;

    .line 326
    invoke-direct {v0, v1}, Ljsy;-><init>(Ljsv;)V

    .line 327
    invoke-virtual {v0, p1, p2, p3}, Ljsy;->a(Landroid/app/Activity;Landroid/os/Bundle;Ljuc;)V

    .line 328
    return-void
.end method
