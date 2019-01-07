.class public interface abstract Lcom/alibaba/lightapp/runtime/idl/HpmIService;
.super Ljava/lang/Object;
.source "HpmIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract getHpmConf(Lhjd;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhjd;",
            "Liyv",
            "<",
            "Lhjc;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract hpmAttemptUpdate(JLjava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lhja;",
            ">;)V"
        }
    .end annotation
.end method
