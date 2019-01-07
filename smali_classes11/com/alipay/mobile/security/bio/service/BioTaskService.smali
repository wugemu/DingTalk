.class public abstract Lcom/alipay/mobile/security/bio/service/BioTaskService;
.super Lcom/alipay/mobile/security/bio/service/BioService;
.source "BioTaskService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/bio/service/BioTaskService$TaskListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/service/BioService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract action(Lcom/alipay/mobile/security/bio/task/ActionFrame;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/mobile/security/bio/task/ActionFrame",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract addTask(Lcom/alipay/mobile/security/bio/task/SubTask;)V
.end method

.method public abstract clearTask()V
.end method

.method public abstract getCurrentTask()Lcom/alipay/mobile/security/bio/task/SubTask;
.end method

.method public abstract getLeftTaskCount()I
.end method

.method public abstract getSubTaskCount()I
.end method

.method public abstract getTasks()Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/alipay/mobile/security/bio/task/SubTask;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initAndBegin()V
.end method

.method public abstract reset()V
.end method

.method public abstract setTaskListener(Lcom/alipay/mobile/security/bio/service/BioTaskService$TaskListener;)V
.end method
