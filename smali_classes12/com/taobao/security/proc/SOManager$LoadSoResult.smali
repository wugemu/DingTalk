.class public Lcom/taobao/security/proc/SOManager$LoadSoResult;
.super Ljava/lang/Object;
.source "SOManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/security/proc/SOManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadSoResult"
.end annotation


# instance fields
.field private isSuccess:Z

.field private loadBySoManager:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-boolean v0, p0, Lcom/taobao/security/proc/SOManager$LoadSoResult;->isSuccess:Z

    .line 277
    iput-boolean v0, p0, Lcom/taobao/security/proc/SOManager$LoadSoResult;->loadBySoManager:Z

    .line 275
    return-void
.end method


# virtual methods
.method public isLoadBySoManager()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/taobao/security/proc/SOManager$LoadSoResult;->loadBySoManager:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/taobao/security/proc/SOManager$LoadSoResult;->isSuccess:Z

    return v0
.end method

.method public setLoadBySoManager(Z)V
    .locals 0
    .param p1, "loadBySoManager"    # Z

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/taobao/security/proc/SOManager$LoadSoResult;->loadBySoManager:Z

    .line 293
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/taobao/security/proc/SOManager$LoadSoResult;->isSuccess:Z

    .line 285
    return-void
.end method
