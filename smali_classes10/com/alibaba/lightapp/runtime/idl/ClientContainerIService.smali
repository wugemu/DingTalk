.class public interface abstract Lcom/alibaba/lightapp/runtime/idl/ClientContainerIService;
.super Ljava/lang/Object;
.source "ClientContainerIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract getAppMalfunctionConfig(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lhil;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAppStatement(Ljava/lang/String;Ljava/lang/String;ILiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Liyv",
            "<",
            "Lhin;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract reportAppMalfunction(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
