.class public abstract Lcom/taobao/security/proc/SEService;
.super Landroid/app/Service;
.source "SEService.java"

# interfaces
.implements Lcom/taobao/security/proc/SEInterface;


# static fields
.field protected static final CKROACH:Ljava/lang/String; = "cockroach"

.field protected static final COCKVALUE:Ljava/lang/String; = "cockroach-PPreotect"

.field protected static final PACKKEY:Ljava/lang/String; = "pack"

.field public static final START_BROADCAST:I = 0x100

.field public static final START_SERVICE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method protected final comeFromSec(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 29
    if-nez p1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v1

    .line 32
    :cond_1
    const-string/jumbo v2, "cockroach"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "cockroach-PPreotect"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected getPackData(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    if-nez p1, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 25
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "pack"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final hasRooted()Z
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/taobao/security/proc/ServiceProtect;->hasRtedp()Z

    move-result v0

    return v0
.end method

.method protected final initSeServer()V
    .locals 4

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/taobao/security/proc/SEService;->getStartCount()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 47
    invoke-virtual {p0}, Lcom/taobao/security/proc/SEService;->getFirstStartTime()C

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x10

    .line 46
    or-int/2addr v1, v2

    .line 48
    invoke-virtual {p0}, Lcom/taobao/security/proc/SEService;->getStartKind()I

    move-result v2

    .line 46
    or-int v0, v1, v2

    .line 50
    .local v0, "data":I
    invoke-virtual {p0}, Lcom/taobao/security/proc/SEService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {p0}, Lcom/taobao/security/proc/SEService;->getStartAction()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-static {p0, v1, v2, v3, v0}, Lcom/taobao/security/proc/ServiceProtect;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    return-void
.end method

.method protected final loadSo()V
    .locals 0

    .prologue
    .line 41
    invoke-static {p0}, Lcom/taobao/security/proc/ServiceProtect;->loadSo(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 19
    return-void
.end method

.method protected final stop()V
    .locals 0

    .prologue
    .line 63
    invoke-static {}, Lcom/taobao/security/proc/ServiceProtect;->stopp()V

    .line 64
    invoke-super {p0}, Landroid/app/Service;->stopSelf()V

    .line 65
    return-void
.end method
