.class public Lcom/taobao/conf/TBConfConfig;
.super Ljava/lang/Object;
.source "TBConfConfig.java"


# instance fields
.field private isAgcEnabled:Z

.field private isInterruptToneEnabled:Z

.field private isP563Enabled:Z

.field private isRNNoiseEnabled:Z

.field private isRingtoneEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAgcEnabled()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/taobao/conf/TBConfConfig;->isAgcEnabled:Z

    return v0
.end method

.method public isInterruptToneEnabled()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/taobao/conf/TBConfConfig;->isInterruptToneEnabled:Z

    return v0
.end method

.method public isP563Enabled()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/taobao/conf/TBConfConfig;->isP563Enabled:Z

    return v0
.end method

.method public isRNNoiseEnabled()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/taobao/conf/TBConfConfig;->isRNNoiseEnabled:Z

    return v0
.end method

.method public isRingtoneEnabled()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/taobao/conf/TBConfConfig;->isRingtoneEnabled:Z

    return v0
.end method

.method public setAgcEnabled(Z)V
    .locals 0
    .param p1, "agcEnabled"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/taobao/conf/TBConfConfig;->isAgcEnabled:Z

    .line 56
    return-void
.end method

.method public setInterruptToneEnabled(Z)V
    .locals 0
    .param p1, "interruptToneEnabled"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/taobao/conf/TBConfConfig;->isInterruptToneEnabled:Z

    .line 48
    return-void
.end method

.method public setP563Enabled(Z)V
    .locals 0
    .param p1, "p563Enabled"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/taobao/conf/TBConfConfig;->isP563Enabled:Z

    .line 32
    return-void
.end method

.method public setRNNoiseEnabled(Z)V
    .locals 0
    .param p1, "RNNoiseEnabled"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/taobao/conf/TBConfConfig;->isRNNoiseEnabled:Z

    .line 40
    return-void
.end method

.method public setRingtoneEnabled(Z)V
    .locals 0
    .param p1, "ringtoneEnabled"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/taobao/conf/TBConfConfig;->isRingtoneEnabled:Z

    .line 24
    return-void
.end method
