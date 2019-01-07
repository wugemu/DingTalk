.class public interface abstract Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;
.super Ljava/lang/Object;
.source "CSpaceAclService.java"

# interfaces
.implements Lizl;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract addMember(Lgkd;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgkd;",
            "Liyv",
            "<",
            "Lgke;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createAcl(Lgkr;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgkr;",
            "Liyv",
            "<",
            "Lgkh;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteMember(Lgkj;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgkj;",
            "Liyv",
            "<",
            "Lgkk;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteMemberFromGroups(Lgki;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgki;",
            "Liyv",
            "<",
            "Lgkk;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getLinkShareAcl(Ljava/lang/Long;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lgjw;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract hasPermission(Lgkf;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgkf;",
            "Liyv",
            "<",
            "Lgkg;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isReadOnly(Lgkv;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgkv;",
            "Liyv",
            "<",
            "Lgkw;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listAcl(Lgku;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgku;",
            "Liyv",
            "<",
            "Lgkp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listAclV2(Lgku;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgku;",
            "Liyv",
            "<",
            "Lgkp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract modifyMember(Lgkn;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgkn;",
            "Liyv",
            "<",
            "Lgko;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLinkShareAcl(Lgjv;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgjv;",
            "Liyv",
            "<",
            "Lgjw;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setReadOnly(Lgkr;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgkr;",
            "Liyv",
            "<",
            "Lgkh;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract validateAction(Lgkq;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgkq;",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
