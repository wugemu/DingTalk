.class public interface abstract Lcom/alibaba/android/dingtalk/redpackets/idl/service/BalanceIService;
.super Ljava/lang/Object;
.source "BalanceIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract changePayMethod(ILiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pay(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryBalance(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lcas;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showCashier(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lcat;",
            ">;)V"
        }
    .end annotation
.end method
