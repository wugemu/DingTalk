.class public interface abstract Lcom/alibaba/android/dingtalkim/models/idl/service/IDLGroupBillService;
.super Ljava/lang/Object;
.source "IDLGroupBillService.java"

# interfaces
.implements Lizl;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract createGroupBill(Ldsv;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldsv;",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract payGroupBill(Ljava/lang/Long;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ldto;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryGroupBillDetail(Ljava/lang/Long;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryGroupBillList(Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryGroupBillPayorList(Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract stopGroupBill(Ljava/lang/Long;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract syncGroupBillPayStatus(Ljava/lang/Long;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
