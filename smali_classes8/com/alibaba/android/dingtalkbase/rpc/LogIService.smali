.class public interface abstract Lcom/alibaba/android/dingtalkbase/rpc/LogIService;
.super Ljava/lang/Object;
.source "LogIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract log(Lcla;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcla;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
