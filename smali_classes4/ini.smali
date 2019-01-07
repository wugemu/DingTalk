.class public abstract Lini;
.super Linn;
.source "ActivityApplication.java"


# instance fields
.field private mAppId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Linn;-><init>()V

    return-void
.end method


# virtual methods
.method public canRestart(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lini;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getEntryClassName()Ljava/lang/String;
.end method

.method public getMicroApplicationContext()Lcom/alipay/mobile/framework/c;
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/b;->c()Lcom/alipay/mobile/framework/c;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy(Landroid/os/Bundle;)V
.end method

.method public restart(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 23
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lini;->mAppId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
