.class public Lcom/uc/webview/export/internal/setup/bg;
.super Lcom/uc/webview/export/internal/setup/UCSubSetupTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/setup/bg$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uc/webview/export/internal/setup/UCSubSetupTask",
        "<",
        "Lcom/uc/webview/export/internal/setup/bg;",
        "Lcom/uc/webview/export/internal/setup/bg;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/uc/webview/export/internal/setup/bg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/setup/bg;->a:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/setup/bg;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/uc/webview/export/internal/setup/bg;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 51
    sget-object v0, Lcom/uc/webview/export/internal/setup/bg;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ".shareDownloadFile("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string/jumbo v0, "csc_cupdp"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 53
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    sget-object v1, Lcom/uc/webview/export/internal/setup/bg;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    const-string/jumbo v0, "csc_cupdcp"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/uc/webview/export/internal/setup/bg$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/uc/webview/export/internal/setup/bg$a;-><init>(B)V

    sget v0, Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;->Update:I

    invoke-static {p1, v0}, Lcom/uc/webview/export/internal/setup/bg$a;->a(Ljava/lang/String;I)V

    .line 57
    monitor-exit v1

    .line 59
    :cond_0
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    sget-object v0, Lcom/uc/webview/export/internal/setup/bg;->a:Ljava/lang/String;

    const-string/jumbo v1, ".run"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string/jumbo v0, "o_st_dhcs"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/bg;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->b(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v1, Lcom/uc/webview/export/internal/setup/bg;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 32
    :try_start_0
    new-instance v0, Lcom/uc/webview/export/internal/setup/bg$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/uc/webview/export/internal/setup/bg$a;-><init>(B)V

    invoke-static {}, Lcom/uc/webview/export/internal/setup/bg$a;->a()V

    .line 33
    monitor-exit v1

    .line 45
    :goto_0
    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 35
    :cond_0
    const-string/jumbo v0, "sc_cd_fp"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string/jumbo v1, "csc_crnp"

    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 38
    sget-object v1, Lcom/uc/webview/export/internal/setup/bg;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_1
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 40
    const-string/jumbo v2, "csc_crncp"

    invoke-static {v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 41
    new-instance v2, Lcom/uc/webview/export/internal/setup/bg$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/uc/webview/export/internal/setup/bg$a;-><init>(B)V

    sget v2, Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;->Other:I

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/setup/bg$a;->a(Ljava/lang/String;I)V

    .line 44
    :cond_1
    new-instance v0, Lcom/uc/webview/export/internal/setup/bg$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/uc/webview/export/internal/setup/bg$a;-><init>(B)V

    invoke-static {}, Lcom/uc/webview/export/internal/setup/bg$a;->a()V

    .line 45
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
