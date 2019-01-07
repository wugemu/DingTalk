.class public final Lbzz;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field private static volatile a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, -0x1

    sput v0, Lbzz;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget v2, Lbzz;->a:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 27
    sget v2, Lbzz;->a:I

    .line 41
    :goto_0
    return v2

    .line 30
    :cond_0
    if-eqz p0, :cond_1

    .line 31
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 32
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_1

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 34
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    .line 35
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sput v2, Lbzz;->a:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_1
    sget v2, Lbzz;->a:I

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    const/4 v0, 0x1

    .line 46
    .local v0, "finished":Z
    if-eqz p0, :cond_1

    .line 47
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_3

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    .line 54
    :cond_1
    :goto_0
    if-nez v0, :cond_4

    :goto_1
    return v2

    :cond_2
    move v0, v1

    .line 48
    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    goto :goto_0

    :cond_4
    move v2, v1

    .line 54
    goto :goto_1
.end method

.method public static a([Ljava/lang/String;)Z
    .locals 1
    .param p0, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 58
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "a2"    # [Ljava/lang/String;

    .prologue
    .line 65
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "a2"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 72
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v2

    .line 75
    :cond_1
    array-length v3, p1

    array-length v4, p0

    if-ne v3, v4, :cond_0

    .line 79
    array-length v3, p0

    new-array v0, v3, [Ljava/lang/String;

    .line 80
    .local v0, "b":[Ljava/lang/String;
    array-length v3, p1

    new-array v1, v3, [Ljava/lang/String;

    .line 81
    .local v1, "b2":[Ljava/lang/String;
    array-length v3, p0

    invoke-static {p0, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    array-length v3, p1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 84
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 85
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method
