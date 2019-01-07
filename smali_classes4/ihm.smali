.class public final Lihm;
.super Ljava/lang/Object;
.source "PlatformUtil.java"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static b:Ljava/lang/Class;

.field private static c:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    const-class v0, Lihm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lihm;->a:Ljava/util/logging/Logger;

    .line 27
    sput-object v1, Lihm;->b:Ljava/lang/Class;

    .line 29
    sput-object v1, Lihm;->c:Ljava/lang/Class;

    .line 32
    const-string/jumbo v0, "com.alipay.android.phone.mobilesdk.socketcraft"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 42
    sget-object v3, Lihm;->a:Ljava/util/logging/Logger;

    const-string/jumbo v6, "enter isAndroidPlatform"

    invoke-virtual {v3, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 44
    :try_start_0
    const-string/jumbo v3, "android.os.Build$VERSION"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 45
    .local v0, "androidBuildClass":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 46
    const-string/jumbo v3, "SDK_INT"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 47
    .local v2, "sdkInt":I
    if-lez v2, :cond_0

    move v3, v4

    .line 54
    .end local v2    # "sdkInt":I
    :goto_0
    return v3

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v3, Lihm;->a:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string/jumbo v7, "isAndroidPlatform err: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    move v3, v5

    .line 54
    goto :goto_0
.end method

.method public static final b()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-static {}, Lihm;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return v1

    .line 65
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    sget-object v3, Lihm;->c:Ljava/lang/Class;

    if-eqz v3, :cond_1

    move v1, v2

    .line 66
    goto :goto_0

    .line 68
    :cond_1
    sget-object v3, Lihm;->a:Ljava/util/logging/Logger;

    const-string/jumbo v4, "enter isAndroidMPaaSPlatform"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 70
    :try_start_0
    const-string/jumbo v3, "com.alipay.mobile.common.transport.utils.LogCatUtil"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lihm;->c:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v2, Lihm;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v4, "isAndroidMPaaSPlatform err"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final c()Lihp;
    .locals 3

    .prologue
    .line 85
    :try_start_0
    sget-object v1, Lihm;->a:Ljava/util/logging/Logger;

    const-string/jumbo v2, "enter createJavaLogImpl"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 86
    const-string/jumbo v1, "ihn"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lihp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final d()Lihp;
    .locals 3

    .prologue
    .line 94
    :try_start_0
    sget-object v1, Lihm;->a:Ljava/util/logging/Logger;

    const-string/jumbo v2, "enter SCLogCatInterface"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v1, "ihh"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lihp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final e()Lihp;
    .locals 3

    .prologue
    .line 103
    :try_start_0
    sget-object v1, Lihm;->a:Ljava/util/logging/Logger;

    const-string/jumbo v2, "enter createAndroidMPaaSLogImpl"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 104
    const-string/jumbo v1, "com.alipay.android.phone.mobilesdk.socketcraft.integrated.logcat.MPaaSSCLogCatImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lihp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final f()Lihs;
    .locals 3

    .prologue
    .line 112
    :try_start_0
    sget-object v1, Lihm;->a:Ljava/util/logging/Logger;

    const-string/jumbo v2, "enter createMPaaSMonitorPrinter"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v1, "com.alipay.android.phone.mobilesdk.socketcraft.integrated.monitor.MPaaSMonitorPrinter"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lihs;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
