.class public interface abstract Lcom/alibaba/android/user/idl/services/OmpPolicyIService;
.super Ljava/lang/Object;
.source "OmpPolicyIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract addOrgManagerRole(Ljava/lang/Long;Lfpm;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lfpm;",
            "Liyv",
            "<",
            "Lfpm;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listAllOrgManagerResource(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lfpk;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listOrgManagerRole(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Lfpn;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeOrgManagerRole(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateOrgManagerRole(Ljava/lang/Long;Lfpm;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lfpm;",
            "Liyv",
            "<",
            "Lfpm;",
            ">;)V"
        }
    .end annotation
.end method
