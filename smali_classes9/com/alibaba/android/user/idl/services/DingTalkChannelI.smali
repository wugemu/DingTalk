.class public interface abstract Lcom/alibaba/android/user/idl/services/DingTalkChannelI;
.super Ljava/lang/Object;
.source "DingTalkChannelI.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract uploadActiveInfo(Lfof;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfof;",
            "Liyv",
            "<",
            "Lfog;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract uploadInstallInfo(Lfof;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfof;",
            "Liyv",
            "<",
            "Lfog;",
            ">;)V"
        }
    .end annotation
.end method
