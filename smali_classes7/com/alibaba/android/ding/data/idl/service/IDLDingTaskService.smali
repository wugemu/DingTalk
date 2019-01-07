.class public interface abstract Lcom/alibaba/android/ding/data/idl/service/IDLDingTaskService;
.super Ljava/lang/Object;
.source "IDLDingTaskService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract changeExecutorFinishStatus(Lbdi;Lcmi;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbdi;",
            "Lcmi",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createTask(Lbee;Lcmi;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbee;",
            "Lcmi",
            "<",
            "Lbdz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getSingleChatTaskStat(JLiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Liyv",
            "<",
            "Lazr;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getSubTaskModels(JJILiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lbeh;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract listBoardsByCid(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lbce;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract removeTaskExecutor(Lbda;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbda;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract transferTask(Lbdb;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbdb;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
