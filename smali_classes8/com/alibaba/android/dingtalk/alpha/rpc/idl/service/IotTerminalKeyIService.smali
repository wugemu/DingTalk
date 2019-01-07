.class public interface abstract Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/IotTerminalKeyIService;
.super Ljava/lang/Object;
.source "IotTerminalKeyIService.java"

# interfaces
.implements Lizl;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract getDynamicNetPsk(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getPskV2(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lbnb;",
            ">;)V"
        }
    .end annotation
.end method
