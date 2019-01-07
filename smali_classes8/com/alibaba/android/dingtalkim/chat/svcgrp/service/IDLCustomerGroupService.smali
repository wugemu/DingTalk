.class public interface abstract Lcom/alibaba/android/dingtalkim/chat/svcgrp/service/IDLCustomerGroupService;
.super Ljava/lang/Object;
.source "IDLCustomerGroupService.java"

# interfaces
.implements Lizl;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract doMsgAction(Ldfq;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldfq;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAnswerModel(JLjava/lang/String;JLiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J",
            "Liyv",
            "<",
            "Ldfp;",
            ">;)V"
        }
    .end annotation
.end method
