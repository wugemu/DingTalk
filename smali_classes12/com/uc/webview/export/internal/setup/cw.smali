.class public final Lcom/uc/webview/export/internal/setup/cw;
.super Lcom/uc/webview/export/internal/setup/UCSubSetupTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uc/webview/export/internal/setup/UCSubSetupTask",
        "<",
        "Lcom/uc/webview/export/internal/setup/cw;",
        "Lcom/uc/webview/export/internal/setup/cw;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:I


# instance fields
.field a:[[Ljava/lang/String;

.field b:Lcom/uc/webview/export/internal/setup/bt;

.field c:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, -0x1

    sput v0, Lcom/uc/webview/export/internal/setup/cw;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCElapseTime;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 123
    new-instance v6, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v6}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 124
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-static {p2, p0}, Lcom/uc/webview/export/internal/utility/m;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    :cond_0
    const-string/jumbo v3, "com.UCMobile"

    new-instance v4, Lcom/uc/webview/export/internal/utility/i$b;

    const-string/jumbo v0, "cd_cvsv"

    invoke-direct {v4, v0}, Lcom/uc/webview/export/internal/utility/i$b;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/uc/webview/export/internal/utility/i;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/internal/utility/g$a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    const-string/jumbo v0, "VerifyTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u7ec4\u4ef6\u6821\u9a8c Dex Failed ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {p2, p0, v7}, Lcom/uc/webview/export/internal/utility/m;->a(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 129
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xbbd

    const-string/jumbo v2, "[%s] verify failed"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p2, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    const-string/jumbo v0, "VerifyTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u7ec4\u4ef6\u6821\u9a8c Dex Success ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {p2, p0, v8}, Lcom/uc/webview/export/internal/utility/m;->a(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 135
    :cond_2
    return-object v6
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    packed-switch p0, :pswitch_data_0

    .line 52
    const-string/jumbo v0, "SHA1(default)"

    :goto_0
    return-object v0

    .line 46
    :pswitch_0
    const-string/jumbo v0, "MD5"

    goto :goto_0

    .line 48
    :pswitch_1
    const-string/jumbo v0, "SHA1"

    goto :goto_0

    .line 50
    :pswitch_2
    const-string/jumbo v0, "SHA256"

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    if-nez p3, :cond_1

    .line 203
    :cond_0
    return-void

    .line 182
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v0, v6

    if-eqz v0, :cond_3

    move v0, v1

    .line 185
    :goto_0
    aget-object v6, p2, v2

    array-length v6, v6

    if-le v6, v3, :cond_5

    .line 188
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/high16 v7, 0x100000

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    move v3, v4

    .line 194
    :cond_2
    :goto_2
    array-length v5, p2

    move v4, v2

    :goto_3
    if-ge v4, v5, :cond_0

    aget-object v6, p2, v4

    .line 195
    aget-object v7, v6, v2

    .line 196
    aget-object v6, v6, v3

    .line 197
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {v8, v6, v3, v0, p0}, Lcom/uc/webview/export/internal/setup/cw;->a(Ljava/io/File;Ljava/lang/String;IZLandroid/content/Context;)V

    .line 201
    sget v6, Lcom/uc/webview/export/internal/setup/cw;->d:I

    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v9, "Check file hash ok [%s]."

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v8, v10, v2

    invoke-static {v7, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Throwable;

    invoke-static {v6, v7, v8}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 194
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    move v0, v2

    .line 182
    goto :goto_0

    .line 190
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/high16 v6, 0x400000

    and-int/2addr v4, v6

    if-eqz v4, :cond_2

    aget-object v4, p2, v2

    array-length v4, v4

    if-le v4, v5, :cond_2

    move v3, v5

    .line 191
    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_1
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;IZLandroid/content/Context;)V
    .locals 11

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 58
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/uc/webview/export/internal/utility/m;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 64
    if-ne p2, v9, :cond_2

    .line 65
    sget-object v0, Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;->MD5:Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;

    invoke-static {p0, v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->hashFileContents(Ljava/io/File;Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 71
    :goto_1
    :try_start_0
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 74
    new-instance v4, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v5, 0x3f3

    const-string/jumbo v6, "So file [%s] with [%s] [%s] mismatch to predefined [%s]."

    const/4 v0, 0x4

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v7, v0

    const/4 v8, 0x1

    if-ne p2, v9, :cond_4

    const-string/jumbo v0, "md5"

    :goto_2
    aput-object v0, v7, v8

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const/4 v0, 0x3

    aput-object p1, v7, v0

    .line 75
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :catchall_0
    move-exception v0

    if-eqz p3, :cond_1

    .line 85
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p4, v10}, Lcom/uc/webview/export/internal/utility/m;->a(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 86
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 87
    const-string/jumbo v1, "VerifyTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u7ec4\u4ef6\u6821\u9a8c("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/uc/webview/export/internal/setup/cw;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") Pass:false ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 88
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] time["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    throw v0

    .line 66
    :cond_2
    if-ne p2, v1, :cond_3

    .line 67
    sget-object v0, Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;->SHA256:Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;

    invoke-static {p0, v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->hashFileContents(Ljava/io/File;Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 69
    :cond_3
    sget-object v0, Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;->SHA1:Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;

    invoke-static {p0, v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->hashFileContents(Ljava/io/File;Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 74
    :cond_4
    :try_start_1
    const-string/jumbo v0, "sha"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 81
    :cond_5
    if-eqz p3, :cond_6

    .line 85
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4, v4}, Lcom/uc/webview/export/internal/utility/m;->a(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 86
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 87
    const-string/jumbo v2, "VerifyTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u7ec4\u4ef6\u6821\u9a8c("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/uc/webview/export/internal/setup/cw;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") Pass:true ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 88
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] time["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cw;->a:[[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cw;->a:[[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    if-nez p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cw;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "CONTEXT"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 143
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/cw;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    .line 144
    if-nez v1, :cond_2

    .line 145
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 148
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    .line 150
    :goto_1
    const/4 v3, 0x2

    .line 151
    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/cw;->a:[[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    array-length v4, v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_3

    .line 152
    const/4 v3, 0x3

    .line 154
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_6

    .line 155
    const/4 v3, 0x2

    .line 160
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/cw;->a:[[Ljava/lang/String;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_7

    aget-object v7, v5, v4

    .line 161
    const/4 v8, 0x0

    aget-object v8, v7, v8

    .line 162
    aget-object v7, v7, v3

    .line 163
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :try_start_0
    invoke-static {v9, v7, v3, v2, v0}, Lcom/uc/webview/export/internal/setup/cw;->a(Ljava/io/File;Ljava/lang/String;IZLandroid/content/Context;)V
    :try_end_0
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    sget v7, Lcom/uc/webview/export/internal/setup/cw;->d:I

    sget-object v8, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v10, "Check file hash ok [%s]."

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    invoke-static {v8, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Throwable;

    invoke-static {v7, v8, v9}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 160
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 148
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 156
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/high16 v5, 0x400000

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/cw;->a:[[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    array-length v4, v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_4

    .line 157
    const/4 v3, 0x4

    goto :goto_2

    .line 167
    :catch_0
    move-exception v0

    .line 168
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/cw;->b:Lcom/uc/webview/export/internal/setup/bt;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/bt;->a(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 174
    :cond_7
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cw;->b:Lcom/uc/webview/export/internal/setup/bt;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/bt;->a(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cw;->c:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/cw;->a(Ljava/lang/Integer;)V

    .line 208
    return-void
.end method
