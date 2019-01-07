.class public abstract Lcom/uc/webview/export/internal/setup/p;
.super Lcom/uc/webview/export/internal/setup/UCSubSetupTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uc/webview/export/internal/setup/UCSubSetupTask",
        "<",
        "Lcom/uc/webview/export/internal/setup/p;",
        "Lcom/uc/webview/export/internal/setup/p;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/p;->a:Z

    .line 33
    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/p;->b:Z

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/uc/webview/export/internal/setup/p;->c:I

    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 90
    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 94
    invoke-virtual {p0, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 95
    array-length v0, v2

    if-lez v0, :cond_2

    .line 96
    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 98
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 99
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 100
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 101
    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    :cond_0
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xfad

    const-string/jumbo v3, "UCM version [%s] is excluded by rules [%s]."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object p0, v4, v0

    .line 103
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xfac

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 98
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_2
    return-void
.end method

.method protected static b(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 121
    :try_start_0
    const-string/jumbo v0, ""

    .line 124
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 125
    invoke-virtual {p0, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 126
    array-length v3, v2

    if-lez v3, :cond_2

    .line 127
    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 129
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 130
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 132
    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    :cond_0
    return-void

    .line 129
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_2
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xfbd

    const-string/jumbo v3, "UCM version [%s] not included by rules [%s]."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object p0, v4, v0

    .line 140
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :catch_0
    move-exception v0

    .line 146
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xfac

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected final a(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 38
    const-string/jumbo v0, "load"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/p;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 42
    const-string/jumbo v1, "u3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "u4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    :cond_0
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xfa2

    const-string/jumbo v3, "UCM with core code [%s] is excluded by param load [%s]."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreCode:Ljava/lang/String;

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 45
    :cond_1
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xbc0

    const-string/jumbo v3, "UCM param load value [%s] unknown."

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 48
    :cond_2
    return-void
.end method

.method protected final a(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;Landroid/content/Context;Ljava/lang/ClassLoader;I)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 208
    const/4 v1, 0x0

    .line 213
    const/4 v0, 0x0

    .line 215
    :try_start_0
    const-string/jumbo v2, "com.uc.webview.browser.shell.NativeLibraries"

    const/4 v3, 0x1

    invoke-static {v2, v3, p3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 216
    if-eqz v2, :cond_d

    .line 217
    :try_start_1
    const-string/jumbo v0, "LIBRARIES"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 218
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 219
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    move-object v4, v0

    .line 263
    :goto_1
    if-eqz v4, :cond_8

    array-length v0, v4

    if-lez v0, :cond_8

    .line 264
    iget-object v0, p1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    .line 265
    if-nez v0, :cond_a

    .line 266
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object v3, v0

    .line 269
    :goto_2
    and-int/lit8 v0, p4, 0x10

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v2, v0

    .line 270
    :goto_3
    const/high16 v0, -0x80000000

    and-int v0, v0, p4

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    move v1, v0

    .line 272
    :goto_4
    array-length v5, v4

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v5, :cond_7

    aget-object v6, v4, v0

    .line 273
    const/4 v7, 0x0

    aget-object v7, v6, v7

    .line 274
    const/4 v8, 0x1

    aget-object v6, v6, v8

    invoke-static {v6}, Lcom/uc/webview/export/internal/utility/j;->d(Ljava/lang/String;)J

    move-result-wide v8

    .line 276
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v7, v10, v8

    if-eqz v7, :cond_6

    .line 278
    const-string/jumbo v0, "EnvTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u7ec4\u4ef6\u6821\u9a8c So Size Failed ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0x3f0

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v3, "So file [%s] with length [%d] mismatch to predefined [%d]."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 282
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 283
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 280
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 224
    :catch_0
    move-exception v2

    move-object v3, v0

    :goto_6
    const/4 v2, 0x0

    .line 228
    const/16 v0, 0x271b

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    const/4 v0, 0x1

    .line 252
    :goto_7
    if-eqz v0, :cond_b

    .line 253
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    if-nez v3, :cond_1

    const/16 v0, 0xbca

    :goto_8
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v5, "%s [%s] missing."

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-nez v3, :cond_2

    const-string/jumbo v1, "Class"

    :goto_9
    aput-object v1, v6, v7

    const/4 v7, 0x1

    if-nez v3, :cond_3

    const-string/jumbo v1, "com.uc.webview.browser.shell.NativeLibraries"

    :goto_a
    aput-object v1, v6, v7

    .line 256
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 232
    :cond_0
    :try_start_2
    const-string/jumbo v0, "com.uc.webview.browser.shell.Build$Version"

    const/4 v3, 0x1

    invoke-static {v0, v3, p3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 237
    if-eqz v3, :cond_c

    .line 238
    const-string/jumbo v0, "BUILD_SERIAL"

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 239
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 240
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    .line 241
    const/16 v4, 0x13

    if-lt v0, v4, :cond_c

    .line 242
    const/4 v0, 0x1

    goto :goto_7

    .line 246
    :catch_1
    move-exception v0

    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xbcc

    const-string/jumbo v2, "Version.BUILD_SERIAL not found."

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 253
    :cond_1
    const/16 v0, 0xbcb

    goto :goto_8

    :cond_2
    const-string/jumbo v1, "Field"

    goto :goto_9

    :cond_3
    const-string/jumbo v1, "com.uc.webview.browser.shell.NativeLibraries.LIBRARIES"

    goto :goto_a

    .line 269
    :cond_4
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_3

    .line 270
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_4

    .line 286
    :cond_6
    iget v7, p0, Lcom/uc/webview/export/internal/setup/p;->c:I

    sget-object v8, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v9, "Check file size ok [%s]."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Throwable;

    invoke-static {v7, v6, v8}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 289
    :cond_7
    if-eqz v2, :cond_8

    .line 290
    const-string/jumbo v0, "verify_task"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/p;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/cw;

    .line 291
    if-eqz v0, :cond_8

    .line 292
    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/setup/cw;->setUCM(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 293
    iput-object v4, v0, Lcom/uc/webview/export/internal/setup/cw;->a:[[Ljava/lang/String;

    .line 294
    if-eqz v1, :cond_9

    .line 295
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/cw;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 302
    :cond_8
    :goto_b
    return-void

    .line 297
    :cond_9
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/cw;->a(Ljava/lang/Integer;)V

    goto :goto_b

    .line 224
    :catch_2
    move-exception v0

    move-object v3, v2

    goto/16 :goto_6

    :cond_a
    move-object v3, v0

    goto/16 :goto_2

    :cond_b
    move-object v4, v1

    goto/16 :goto_1

    :cond_c
    move v0, v2

    goto/16 :goto_7

    :cond_d
    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected final a(Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;JJ)V
    .locals 5

    .prologue
    .line 373
    :try_start_0
    new-instance v1, Landroid/util/Pair;

    new-instance v0, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {v0}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V

    const-string/jumbo v2, "cnt"

    const-string/jumbo v3, "1"

    .line 376
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v2, "code"

    .line 377
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v2

    const-string/jumbo v3, "frun"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "T"

    .line 378
    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v2, "data"

    .line 379
    invoke-virtual {v0, v2, p4}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v2, "cost"

    .line 380
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v2, "cost_cpu"

    .line 381
    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 373
    invoke-virtual {p0, v1}, Lcom/uc/webview/export/internal/setup/p;->callbackStat(Landroid/util/Pair;)V

    .line 385
    :goto_1
    return-void

    .line 377
    :cond_0
    const-string/jumbo v0, "F"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected final b(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;Landroid/content/Context;Ljava/lang/ClassLoader;I)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 305
    const/4 v1, 0x0

    .line 310
    const/4 v0, 0x0

    .line 312
    :try_start_0
    const-string/jumbo v2, "com.uc.webview.browser.shell.PakAssets"

    const/4 v3, 0x1

    invoke-static {v2, v3, p3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 313
    if-eqz v2, :cond_a

    .line 314
    :try_start_1
    const-string/jumbo v0, "ASSETS"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 315
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 316
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move-object v2, v0

    .line 340
    :goto_1
    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    .line 341
    iget-object v0, p1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->resDirPath:Ljava/lang/String;

    .line 342
    if-nez v0, :cond_4

    .line 369
    :cond_0
    :goto_2
    return-void

    .line 321
    :catch_0
    move-exception v2

    move-object v2, v0

    :goto_3
    const/4 v3, 0x0

    .line 324
    const/16 v0, 0x271b

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 325
    if-eqz v0, :cond_9

    .line 326
    const/4 v0, 0x1

    .line 329
    :goto_4
    if-eqz v0, :cond_8

    .line 330
    new-instance v3, Lcom/uc/webview/export/internal/setup/UCSetupException;

    if-nez v2, :cond_1

    const/16 v0, 0xbd4

    :goto_5
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v5, "%s [%s] missing."

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-nez v2, :cond_2

    const-string/jumbo v1, "Class"

    :goto_6
    aput-object v1, v6, v7

    const/4 v7, 0x1

    if-nez v2, :cond_3

    const-string/jumbo v1, "com.uc.webview.browser.shell.PakAssets"

    :goto_7
    aput-object v1, v6, v7

    .line 333
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 330
    :cond_1
    const/16 v0, 0xbd5

    goto :goto_5

    :cond_2
    const-string/jumbo v1, "Field"

    goto :goto_6

    :cond_3
    const-string/jumbo v1, "com.uc.webview.browser.shell.PakAssets.ASSETS"

    goto :goto_7

    .line 345
    :cond_4
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "paks"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 347
    and-int/lit8 v0, p4, 0x40

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 349
    :goto_8
    array-length v4, v2

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v4, :cond_7

    aget-object v5, v2, v1

    .line 350
    const/4 v6, 0x0

    aget-object v6, v5, v6

    .line 351
    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-static {v5}, Lcom/uc/webview/export/internal/utility/j;->d(Ljava/lang/String;)J

    move-result-wide v8

    .line 353
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    .line 355
    const-string/jumbo v0, "EnvTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u7ec4\u4ef6\u6821\u9a8c Pak Size Failed ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0x3f6

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v3, "So file [%s] with length [%d] mismatch to predefined [%d]."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v6, 0x1

    .line 359
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x2

    .line 360
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 357
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 347
    :cond_5
    const/4 v0, 0x0

    goto :goto_8

    .line 363
    :cond_6
    iget v6, p0, Lcom/uc/webview/export/internal/setup/p;->c:I

    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v8, "Check file size ok [%s]."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Throwable;

    invoke-static {v6, v5, v7}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    .line 366
    :cond_7
    if-eqz v0, :cond_0

    .line 367
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v3, v2, v0}, Lcom/uc/webview/export/internal/setup/cw;->a(Landroid/content/Context;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 321
    :catch_1
    move-exception v0

    goto/16 :goto_3

    :cond_8
    move-object v2, v1

    goto/16 :goto_1

    :cond_9
    move v0, v3

    goto/16 :goto_4

    :cond_a
    move-object v0, v1

    goto/16 :goto_0
.end method
