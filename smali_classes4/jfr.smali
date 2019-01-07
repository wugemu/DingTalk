.class public final Ljfr;
.super Ljava/lang/Object;
.source "AppUtils.java"


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "originalErrorCode"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 298
    .end local p0    # "originalErrorCode":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "originalErrorCode":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 299
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 298
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "period"    # I

    .prologue
    .line 66
    sget-object v0, Ljfr;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Ljfr;->a:Landroid/os/Handler;

    .line 69
    :cond_0
    if-eqz p0, :cond_1

    .line 70
    sget-object v0, Ljfr;->a:Landroid/os/Handler;

    new-instance v1, Ljfr$1;

    invoke-direct {v1, p0, p1, p2}, Ljfr$1;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 282
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 286
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    if-nez v0, :cond_0

    .line 289
    :goto_1
    return v1

    .line 284
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    const/4 v0, 0x0

    .restart local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 289
    :cond_0
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 317
    invoke-static {}, Ljez;->b()Ljey;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljey;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 318
    return-void
.end method
