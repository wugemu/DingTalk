.class public interface abstract Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;
.super Ljava/lang/Object;
.source "DpCoFolderService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract addMember(Ljava/lang/String;Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lgir;",
            ">;",
            "Liyv",
            "<",
            "Lgiu;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract closeShare(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lgiv;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract create(Lgim;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgim;",
            "Liyv",
            "<",
            "Lgin;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createShare(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lgiv;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract dismiss(Ljava/lang/String;Ljava/lang/Boolean;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Liyv",
            "<",
            "Lgiu;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getMemberBySpaceId(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lgis;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract info(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lgin;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listFolers(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Lgip;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listHomeWorkFolders(Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Lgip;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listMembers(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Lgio;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listMembersByRole(Ljava/lang/String;Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Liyv",
            "<",
            "Lgio;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract modifyFolderName(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lgiu;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract modifyMemberRole(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Liyv",
            "<",
            "Lgiu;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract openConversation(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lgiu;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract quit(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lgiu;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeMembers(Ljava/lang/String;Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Liyv",
            "<",
            "Lgiu;",
            ">;)V"
        }
    .end annotation
.end method
