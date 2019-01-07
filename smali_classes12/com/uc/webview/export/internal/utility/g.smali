.class public final Lcom/uc/webview/export/internal/utility/g;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/utility/g$a;
    }
.end annotation


# static fields
.field public static a:J

.field private static final b:Ljava/lang/String;

.field private static c:J

.field private static d:J

.field private static e:J

.field private static f:J

.field private static g:Ljava/lang/String;

.field private static h:J

.field private static i:J

.field private static j:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 61
    const-class v0, Lcom/uc/webview/export/internal/utility/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/utility/g;->b:Ljava/lang/String;

    .line 168
    const-wide/16 v0, 0x1

    .line 170
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g;->c:J

    const-wide/16 v0, 0x2

    .line 171
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g;->a:J

    const-wide/16 v0, 0x4

    .line 172
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g;->d:J

    const-wide/16 v0, 0x8

    .line 173
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g;->e:J

    const-wide/16 v0, 0x10

    sput-wide v0, Lcom/uc/webview/export/internal/utility/g;->f:J

    .line 232
    const-string/jumbo v0, "com.eg.android.AlipayGphone"

    sput-object v0, Lcom/uc/webview/export/internal/utility/g;->g:Ljava/lang/String;

    .line 411
    sget-wide v0, Lcom/uc/webview/export/internal/utility/g;->c:J

    shl-long/2addr v0, v2

    .line 412
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g;->h:J

    shl-long/2addr v0, v2

    .line 413
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g;->i:J

    shl-long/2addr v0, v2

    sput-wide v0, Lcom/uc/webview/export/internal/utility/g;->j:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 135
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/g;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 136
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/g;->d(Ljava/lang/String;)J

    move-result-wide v2

    .line 137
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 138
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    .line 139
    :cond_0
    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 140
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a()J
    .locals 6

    .prologue
    .line 175
    sget-wide v0, Lcom/uc/webview/export/internal/utility/g;->a:J

    .line 178
    :try_start_0
    const-string/jumbo v2, "sc_ta_fp"

    invoke-static {v2}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    sget-wide v0, Lcom/uc/webview/export/internal/utility/g;->d:J

    .line 200
    :cond_0
    :goto_0
    return-wide v0

    .line 183
    :cond_1
    sget-object v3, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 184
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    sget-object v5, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 186
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 184
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    sget-wide v0, Lcom/uc/webview/export/internal/utility/g;->e:J

    goto :goto_0

    .line 190
    :cond_2
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "uws"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {v3}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    .line 192
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    sget-wide v0, Lcom/uc/webview/export/internal/utility/g;->f:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v2

    .line 198
    sget-object v3, Lcom/uc/webview/export/internal/utility/g;->b:Ljava/lang/String;

    const-string/jumbo v4, ".sdcardAuthority"

    invoke-static {v3, v4, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 216
    const/16 v0, 0x271c

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    const/16 v1, 0x2733

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 221
    return-object v0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Lcom/uc/webview/export/internal/utility/g$a;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 337
    sget-object v0, Lcom/uc/webview/export/internal/utility/g;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ".getLegalVersionsFromCoreCompressFile "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    .line 341
    :goto_0
    :try_start_0
    new-instance v7, Ljava/io/File;

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "temp_dec_core_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    .line 344
    invoke-static {v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    .line 345
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->detect7zFromFileName(Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "sdk_shell"

    new-instance v5, Lcom/uc/webview/export/internal/utility/h;

    invoke-direct {v5}, Lcom/uc/webview/export/internal/utility/h;-><init>()V

    invoke-static/range {v0 .. v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->decompress(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/FilenameFilter;)V

    .line 347
    if-eqz p2, :cond_0

    const-string/jumbo v0, "csc_vvfdecs"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 348
    :cond_0
    if-eqz p2, :cond_1

    sget-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->q:J

    invoke-virtual {p2, v0, v1}, Lcom/uc/webview/export/internal/utility/g$a;->a(J)V

    .line 349
    :cond_1
    invoke-static {v7, p2}, Lcom/uc/webview/export/internal/utility/g;->b(Ljava/io/File;Lcom/uc/webview/export/internal/utility/g$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_2

    sget-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->b:J

    invoke-virtual {p2, v0, v1}, Lcom/uc/webview/export/internal/utility/g$a;->a(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    move-object v0, v6

    .line 356
    :cond_3
    :goto_1
    invoke-static {v7, v8, v6}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    .line 361
    :goto_2
    return-object v0

    .line 349
    :cond_4
    if-eqz p2, :cond_5

    :try_start_2
    const-string/jumbo v1, "csc_vval"

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-object v1, Lcom/uc/webview/export/internal/utility/g;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ".getLegalVersionsFromCoreDir ucmVersion: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0, p2}, Lcom/uc/webview/export/internal/utility/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/internal/utility/g$a;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v1, "sdk_shell"

    invoke-static {v7, v1}, Lcom/uc/webview/export/internal/utility/g;->b(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p2}, Lcom/uc/webview/export/internal/utility/g;->a(Ljava/io/File;Lcom/uc/webview/export/internal/utility/g$a;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p2, :cond_6

    sget-wide v2, Lcom/uc/webview/export/internal/utility/g$a;->f:J

    invoke-virtual {p2, v2, v3}, Lcom/uc/webview/export/internal/utility/g$a;->a(J)V

    :cond_6
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v2, 0x7e1

    const-string/jumbo v3, "[%s] verify failure."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 350
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 351
    :goto_3
    :try_start_3
    sget-object v2, Lcom/uc/webview/export/internal/utility/g;->b:Ljava/lang/String;

    const-string/jumbo v3, ".getLegalVersionsFromCoreCompressFile"

    invoke-static {v2, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 352
    if-eqz p2, :cond_7

    sget-wide v2, Lcom/uc/webview/export/internal/utility/g$a;->a:J

    invoke-virtual {p2, v2, v3}, Lcom/uc/webview/export/internal/utility/g$a;->a(J)V

    .line 353
    :cond_7
    if-eqz p2, :cond_8

    const-string/jumbo v2, "csc_vvfdece"

    invoke-static {v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 354
    :cond_8
    if-eqz p2, :cond_9

    const-string/jumbo v2, "csc_vvfdece_v"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 356
    :cond_9
    if-eqz v1, :cond_a

    .line 357
    invoke-static {v1, v8, v6}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    :cond_a
    move-object v0, v6

    .line 361
    goto/16 :goto_2

    :cond_b
    move-object v0, v6

    .line 349
    goto/16 :goto_1

    .line 356
    :catchall_0
    move-exception v0

    move-object v7, v1

    :goto_4
    if-eqz v7, :cond_c

    .line 357
    invoke-static {v7, v8, v6}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    :cond_c
    throw v0

    .line 356
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 350
    :catch_1
    move-exception v0

    goto :goto_3

    :cond_d
    move-object v1, v7

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 64
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const/16 v0, 0x2726

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 69
    if-eqz v0, :cond_0

    .line 70
    const-string/jumbo v1, "LoadShareCoreHost"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 238
    const/16 v0, 0x271c

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/uc/webview/export/internal/utility/g;->g:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "uws"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 241
    goto :goto_0
.end method

.method public static a(Ljava/io/File;Lcom/uc/webview/export/internal/utility/g$a;)Z
    .locals 6

    .prologue
    .line 246
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    const-string/jumbo v3, "com.UCMobile"

    new-instance v4, Lcom/uc/webview/export/internal/utility/i$b;

    const-string/jumbo v5, "sc_cvsv"

    invoke-direct {v4, v5}, Lcom/uc/webview/export/internal/utility/i$b;-><init>(Ljava/lang/String;)V

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/uc/webview/export/internal/utility/i;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/internal/utility/g$a;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/internal/utility/g$a;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    :cond_0
    if-eqz p2, :cond_1

    sget-wide v2, Lcom/uc/webview/export/internal/utility/g$a;->c:J

    invoke-virtual {p2, v2, v3}, Lcom/uc/webview/export/internal/utility/g$a;->a(J)V

    :cond_1
    move v0, v1

    .line 95
    :cond_2
    :goto_0
    return v0

    .line 84
    :cond_3
    const-string/jumbo v2, "\\^\\^"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 85
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v5, v3, v2

    .line 86
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 89
    invoke-virtual {p1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 93
    :cond_4
    if-eqz p2, :cond_5

    const-string/jumbo v0, "csc_vvfckf"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 94
    :cond_5
    if-eqz p2, :cond_6

    sget-wide v2, Lcom/uc/webview/export/internal/utility/g$a;->d:J

    invoke-virtual {p2, v2, v3}, Lcom/uc/webview/export/internal/utility/g$a;->a(J)V

    :cond_6
    move v0, v1

    .line 95
    goto :goto_0
.end method

.method private static b(Ljava/io/File;Lcom/uc/webview/export/internal/utility/g$a;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 261
    :try_start_0
    const-string/jumbo v0, "sdk_shell"

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/g;->b(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 263
    if-eqz p1, :cond_0

    sget-wide v2, Lcom/uc/webview/export/internal/utility/g$a;->e:J

    invoke-virtual {p1, v2, v3}, Lcom/uc/webview/export/internal/utility/g$a;->a(J)V

    .line 264
    :cond_0
    new-instance v2, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v3, 0x7e0

    const-string/jumbo v4, "[%s] no found after UCCyclone.decompress."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    if-eqz p1, :cond_1

    sget-wide v2, Lcom/uc/webview/export/internal/utility/g$a;->g:J

    invoke-virtual {p1, v2, v3}, Lcom/uc/webview/export/internal/utility/g$a;->a(J)V

    .line 295
    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v2, "csc_vvferr"

    invoke-static {v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 296
    :cond_2
    if-eqz p1, :cond_3

    const-string/jumbo v2, "csc_vvferr_v"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_3
    sget-object v2, Lcom/uc/webview/export/internal/utility/g;->b:Ljava/lang/String;

    const-string/jumbo v3, ".getCoreCompressFileVersion"

    invoke-static {v2, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    move-object v0, v1

    .line 299
    :goto_1
    return-object v0

    .line 268
    :cond_5
    if-eqz p1, :cond_6

    :try_start_1
    const-string/jumbo v2, "csc_vvfgscl"

    invoke-static {v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    move-object v3, v1

    .line 270
    :goto_2
    :try_start_2
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "temp_dex_verify_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 272
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_d

    .line 273
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    .line 275
    new-instance v3, Ldalvik/system/DexClassLoader;

    .line 277
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const-class v6, Lcom/uc/webview/export/internal/utility/g;

    .line 279
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v3, v0, v4, v5, v6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 280
    if-eqz p1, :cond_7

    const-string/jumbo v0, "csc_vvfdscl"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 281
    :cond_7
    if-eqz p1, :cond_8

    sget-wide v4, Lcom/uc/webview/export/internal/utility/g$a;->r:J

    invoke-virtual {p1, v4, v5}, Lcom/uc/webview/export/internal/utility/g$a;->a(J)V

    .line 283
    :cond_8
    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/ClassLoader;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    .line 289
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_4
    invoke-static {v2, v3, v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 284
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 285
    :goto_3
    if-eqz p1, :cond_9

    :try_start_5
    sget-wide v4, Lcom/uc/webview/export/internal/utility/g$a;->h:J

    invoke-virtual {p1, v4, v5}, Lcom/uc/webview/export/internal/utility/g$a;->a(J)V

    .line 286
    :cond_9
    if-eqz p1, :cond_a

    const-string/jumbo v3, "csc_vvfexc"

    invoke-static {v3}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 287
    :cond_a
    if-eqz p1, :cond_b

    const-string/jumbo v3, "csc_vvfexc_v"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 289
    :cond_b
    if-eqz v2, :cond_4

    .line 290
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_6
    invoke-static {v2, v0, v3}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    goto/16 :goto_0

    .line 289
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_c

    .line 290
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    :cond_c
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 289
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 284
    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_d
    move-object v3, v2

    goto/16 :goto_2
.end method

.method private static b(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 100
    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 114
    :cond_1
    :goto_0
    return-object v0

    .line 103
    :cond_2
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v5, v3, v2

    .line 104
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    invoke-static {v5, p1}, Lcom/uc/webview/export/internal/utility/g;->b(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 110
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 114
    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-object p0

    .line 151
    :cond_0
    :try_start_0
    const-string/jumbo v0, "Exception"

    const-string/jumbo v1, "E"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :try_start_1
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 153
    const/4 v1, -0x1

    .line 154
    if-ltz v2, :cond_1

    .line 155
    const-string/jumbo v1, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    .line 157
    :cond_1
    if-ltz v1, :cond_2

    .line 158
    add-int/lit8 v2, v1, 0x1e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 159
    if-le v2, v1, :cond_2

    .line 160
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_2
    :goto_1
    move-object p0, v0

    .line 164
    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static b()Z
    .locals 4

    .prologue
    .line 204
    invoke-static {}, Lcom/uc/webview/export/internal/utility/g;->a()J

    move-result-wide v0

    sget-wide v2, Lcom/uc/webview/export/internal/utility/g;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/uc/webview/export/internal/utility/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/g;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 209
    const-string/jumbo v0, "sc_ta_fp"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "uws"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 119
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    :cond_0
    return-wide v0

    .line 122
    :cond_1
    const-string/jumbo v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 124
    const/4 v2, 0x0

    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 125
    aget-object v4, v3, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    .line 126
    add-long/2addr v0, v4

    .line 127
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_2

    .line 128
    const-wide/16 v4, 0x64

    mul-long/2addr v0, v4

    .line 124
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 234
    sget-object v0, Lcom/uc/webview/export/internal/utility/g;->g:Ljava/lang/String;

    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static e()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 369
    const/16 v0, 0x2713

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 371
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 372
    array-length v0, v3

    if-nez v0, :cond_0

    move-object v0, v1

    .line 408
    :goto_0
    return-object v0

    .line 378
    :cond_0
    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 379
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    const-string/jumbo v0, "sdk_shell"

    invoke-static {v5, v0}, Lcom/uc/webview/export/internal/utility/g;->b(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 395
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;->DecFileOrignFlag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;->Sdcard_Share_Core:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/utility/g;->b(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 399
    invoke-static {v5}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 404
    :goto_2
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 378
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 404
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    sget-object v2, Lcom/uc/webview/export/internal/utility/g;->b:Ljava/lang/String;

    const-string/jumbo v3, ".getLocationDecDir "

    invoke-static {v2, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 408
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public static f()Ljava/lang/String;
    .locals 15

    .prologue
    .line 418
    sget-wide v2, Lcom/uc/webview/export/internal/utility/g;->h:J

    .line 420
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/utility/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    sget-object v0, Lcom/uc/webview/export/internal/utility/g;->b:Ljava/lang/String;

    const-string/jumbo v1, ".getSdcardShareCoreDecFilePath Sdcard\u914d\u7f6e\u53ca\u6743\u9650\u6821\u9a8c\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    sget-wide v0, Lcom/uc/webview/export/internal/utility/g;->i:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    const-string/jumbo v2, "csc_gcdfp"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    sget-object v2, Lcom/uc/webview/export/internal/utility/g;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ".getSdcardShareCoreDecFilePath fStat: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const/4 v0, 0x0

    .line 488
    :goto_0
    return-object v0

    .line 425
    :cond_0
    :try_start_1
    const-string/jumbo v0, "sc_pkgl"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    sget-wide v2, Lcom/uc/webview/export/internal/utility/g;->j:J

    .line 429
    sget-object v0, Lcom/uc/webview/export/internal/utility/g;->b:Ljava/lang/String;

    const-string/jumbo v1, ".getSdcardShareCoreDecFilePath CDKeys.CD_KEY_SHARE_CORE_HOST_PKG_NAME_LIST\u914d\u7f6e\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    const-string/jumbo v0, "csc_gcdfp"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    sget-object v0, Lcom/uc/webview/export/internal/utility/g;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ".getSdcardShareCoreDecFilePath fStat: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const/4 v0, 0x0

    goto :goto_0

    .line 432
    :cond_1
    :try_start_2
    const-string/jumbo v1, "\\^\\^"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 434
    const/4 v1, 0x0

    .line 435
    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    .line 436
    array-length v8, v6

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    :goto_1
    if-ge v4, v8, :cond_9

    aget-object v1, v6, v4

    .line 437
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 438
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/g;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 442
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 443
    sget-object v5, Lcom/uc/webview/export/internal/utility/g;->b:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, ".getSdcardShareCoreDecFilePath "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v9, " not exists."

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_2
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 447
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 448
    if-eqz v9, :cond_4

    array-length v5, v9

    if-nez v5, :cond_5

    .line 449
    :cond_4
    sget-object v5, Lcom/uc/webview/export/internal/utility/g;->b:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, ".getSdcardShareCoreDecFilePath "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v9, " empty."

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 482
    :catch_0
    move-exception v0

    .line 483
    :try_start_3
    sget-object v1, Lcom/uc/webview/export/internal/utility/g;->b:Ljava/lang/String;

    const-string/jumbo v4, ".getSdcardShareCoreDecFilePath"

    invoke-static {v1, v4, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 485
    const-string/jumbo v0, "csc_gcdfp"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    sget-object v0, Lcom/uc/webview/export/internal/utility/g;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ".getSdcardShareCoreDecFilePath fStat: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 452
    :cond_5
    :try_start_4
    array-length v10, v9

    const/4 v1, 0x0

    move v5, v1

    :goto_3
    if-ge v5, v10, :cond_2

    aget-object v11, v9, v5

    .line 453
    sget-object v1, Lcom/uc/webview/export/internal/utility/g;->b:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, ".getSdcardShareCoreDecFilePath coreFile: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string/jumbo v1, "sc_taucmv"

    .line 455
    invoke-static {v1}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    .line 454
    invoke-static {v11, v1, v12}, Lcom/uc/webview/export/internal/utility/g;->a(Ljava/io/File;Ljava/lang/String;Lcom/uc/webview/export/internal/utility/g$a;)Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 457
    sget-object v1, Lcom/uc/webview/export/internal/utility/g;->b:Ljava/lang/String;

    const-string/jumbo v11, ".getSdcardShareCoreDecFilePath version is empty."

    invoke-static {v1, v11}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_6
    :goto_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_3

    .line 460
    :cond_7
    sget-object v12, Lcom/uc/webview/export/internal/utility/g;->b:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, ".getSdcardShareCoreDecFilePath version : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_6

    .line 463
    invoke-virtual {v7, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_4

    .line 477
    :cond_8
    sget-object v0, Lcom/uc/webview/export/internal/utility/g;->b:Ljava/lang/String;

    const-string/jumbo v1, ".getSdcardShareCoreDecFilePath verifySignature failure!"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_9
    invoke-virtual {v7}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 469
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 472
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->detect7zFromFileName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 473
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/g;->a(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 474
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    sget-object v5, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    const-string/jumbo v6, "com.UCMobile"

    new-instance v8, Lcom/uc/webview/export/internal/utility/i$b;

    const-string/jumbo v9, "sc_cvsv"

    invoke-direct {v8, v9}, Lcom/uc/webview/export/internal/utility/i$b;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v5, v6, v8}, Lcom/uc/webview/export/internal/utility/i;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 475
    :cond_a
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 485
    const-string/jumbo v1, "csc_gcdfp"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    sget-object v1, Lcom/uc/webview/export/internal/utility/g;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ".getSdcardShareCoreDecFilePath fStat: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 481
    :cond_b
    const-string/jumbo v0, "csc_gcdfp"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    sget-object v0, Lcom/uc/webview/export/internal/utility/g;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ".getSdcardShareCoreDecFilePath fStat: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 485
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "csc_gcdfp"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    sget-object v1, Lcom/uc/webview/export/internal/utility/g;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ".getSdcardShareCoreDecFilePath fStat: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
