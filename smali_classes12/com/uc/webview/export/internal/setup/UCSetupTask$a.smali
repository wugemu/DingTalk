.class public final Lcom/uc/webview/export/internal/setup/UCSetupTask$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/setup/UCSetupTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Ljava/io/File;

.field b:Ljava/io/File;

.field c:Ljava/io/File;

.field public final d:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<TCA",
            "LLBACK_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<TCA",
            "LLBACK_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/uc/webview/export/internal/setup/UCSetupTask;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/UCSetupTask;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 527
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->f:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    new-instance v0, Lcom/uc/webview/export/internal/setup/ch;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/ch;-><init>(Lcom/uc/webview/export/internal/setup/UCSetupTask$a;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->d:Landroid/webkit/ValueCallback;

    .line 519
    new-instance v0, Lcom/uc/webview/export/internal/setup/ci;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/ci;-><init>(Lcom/uc/webview/export/internal/setup/UCSetupTask$a;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->e:Landroid/webkit/ValueCallback;

    .line 528
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->a:Ljava/io/File;

    if-nez v0, :cond_0

    .line 529
    iget-object v0, p1, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "CONTEXT"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 530
    const/16 v1, 0x2733

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x2715

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    .line 531
    invoke-static {v3, v4}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    aput-object v0, v2, v5

    const/16 v0, 0x271c

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v5

    .line 532
    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v6

    .line 530
    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 533
    const-string/jumbo v1, "UCSetupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SetupCrashImprover<init> UCSetupt.class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string/jumbo v1, "UCSetupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SetupCrashImprover<init> flgDirFile.path: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "b36ce8d879e33bc88f717f74617ea05a"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->a:Ljava/io/File;

    .line 536
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "bd89426940609c9ae14e5ae90827201b"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->b:Ljava/io/File;

    .line 537
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "51bfcd9dd2f1379936c4fbb3558a6e67"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->c:Ljava/io/File;

    .line 539
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/UCSetupTask$a;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 488
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v6, 0x5265c00

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v0

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->f:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v2, "VERIFY_POLICY"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->f:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    const-string/jumbo v3, "VERIFY_POLICY"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    :cond_1
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->f:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    if-eqz v1, :cond_7

    const-string/jumbo v0, "1"

    :goto_2
    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->a(Lcom/uc/webview/export/internal/setup/UCSetupTask;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->f:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    if-eqz v1, :cond_8

    const-string/jumbo v0, "crash_seen"

    :goto_3
    invoke-virtual {v2, v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->callback(Ljava/lang/String;)V

    :cond_2
    :goto_4
    return-void

    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->f:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->a(Lcom/uc/webview/export/internal/setup/UCSetupTask;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->f:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    const-string/jumbo v1, "disable_multi_unknown_crash"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_4
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->f:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    const-string/jumbo v1, "crash_repeat"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->callback(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    if-eqz v2, :cond_6

    if-nez v3, :cond_0

    :cond_6
    move v1, v0

    goto :goto_1

    :cond_7
    const-string/jumbo v0, "0"

    goto :goto_2

    :cond_8
    const-string/jumbo v0, "crash_none"

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/uc/webview/export/internal/setup/UCSetupTask$a;)V
    .locals 0

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->a()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 615
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 620
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
