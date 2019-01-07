.class Lcom/taobao/security/proc/ServiceProtect;
.super Ljava/lang/Object;
.source "ServiceProtect.java"


# static fields
.field private static soResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/security/proc/ServiceProtect;->soResult:Z

    .line 6
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasLoadSuccess()Z
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/taobao/security/proc/ServiceProtect;->soResult:Z

    return v0
.end method

.method private static native hasRted()I
.end method

.method static hasRtedp()Z
    .locals 4

    .prologue
    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, "root":I
    const/4 v1, 0x0

    .line 63
    .local v1, "flag":Z
    sget-boolean v3, Lcom/taobao/security/proc/ServiceProtect;->soResult:Z

    if-eqz v3, :cond_0

    .line 65
    :try_start_0
    invoke-static {}, Lcom/taobao/security/proc/ServiceProtect;->hasRted()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 70
    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 71
    const/4 v1, 0x1

    .line 73
    :cond_1
    return v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "ep":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pakName"    # Ljava/lang/String;
    .param p2, "comp"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "count"    # I

    .prologue
    .line 33
    invoke-static {}, Lcom/taobao/security/proc/ServiceProtect;->hasRtedp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {p1, p2, p3, p4}, Lcom/taobao/security/proc/ServiceProtect;->startp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 36
    :cond_0
    return-void
.end method

.method static loadSo(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/taobao/security/proc/SOManager;->getInstance(Landroid/content/Context;)Lcom/taobao/security/proc/SOManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/security/proc/SOManager;->validateAndLoadCockroach()Lcom/taobao/security/proc/SOManager$LoadSoResult;

    move-result-object v0

    .line 21
    .local v0, "result":Lcom/taobao/security/proc/SOManager$LoadSoResult;
    invoke-virtual {v0}, Lcom/taobao/security/proc/SOManager$LoadSoResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-static {p0}, Lcom/taobao/security/proc/SOManager;->getInstance(Landroid/content/Context;)Lcom/taobao/security/proc/SOManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/security/proc/SOManager;->validateAndLoadClient()Lcom/taobao/security/proc/SOManager$LoadSoResult;

    move-result-object v0

    .line 23
    invoke-static {p0}, Lcom/taobao/security/proc/SOManager;->getInstance(Landroid/content/Context;)Lcom/taobao/security/proc/SOManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/security/proc/SOManager;->validateAndLoadExeTaobao()V

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/security/proc/SOManager$LoadSoResult;->isSuccess()Z

    move-result v1

    sput-boolean v1, Lcom/taobao/security/proc/ServiceProtect;->soResult:Z

    .line 26
    return-void
.end method

.method private static native start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method static native startTest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private static startp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "pakName"    # Ljava/lang/String;
    .param p1, "comp"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "count"    # I

    .prologue
    .line 39
    sget-boolean v1, Lcom/taobao/security/proc/ServiceProtect;->soResult:Z

    if-eqz v1, :cond_0

    .line 41
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/taobao/security/proc/ServiceProtect;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 46
    :goto_0
    return v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "ep":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .end local v0    # "ep":Ljava/lang/Throwable;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static native stop()V
.end method

.method static stopp()V
    .locals 2

    .prologue
    .line 50
    sget-boolean v1, Lcom/taobao/security/proc/ServiceProtect;->soResult:Z

    if-eqz v1, :cond_0

    .line 52
    :try_start_0
    invoke-static {}, Lcom/taobao/security/proc/ServiceProtect;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .local v0, "ep":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 53
    .end local v0    # "ep":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 54
    .restart local v0    # "ep":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
