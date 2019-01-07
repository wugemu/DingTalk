.class public interface abstract Lcom/alibaba/lightapp/runtime/idl/HealthIService;
.super Ljava/lang/Object;
.source "HealthIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract fetchStephubSteps(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lhkf;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract fetchTaobaoH5TrustLoginUrlForAlisports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract fetchTaobaoId(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getStepInfo(Lcmi;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmi",
            "<",
            "Lhkf;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract uploadStepInfo(Lhkf;Lcmi;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhkf;",
            "Lcmi",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract uploadSteps(Ljava/util/List;Lcmi;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhkf;",
            ">;",
            "Lcmi",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
