.class public interface abstract Lcom/alibaba/lightapp/runtime/idl/ATManageIService;
.super Ljava/lang/Object;
.source "ATManageIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract dingAtmCheck(Lhiw;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhiw;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDingAtmList(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lhiv;",
            ">;)V"
        }
    .end annotation
.end method
