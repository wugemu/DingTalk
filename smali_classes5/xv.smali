.class public interface abstract Lxv;
.super Ljava/lang/Object;
.source "SDKListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
