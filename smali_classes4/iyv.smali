.class public interface abstract Liyv;
.super Ljava/lang/Object;
.source "RequestHandler.java"

# interfaces
.implements Liys;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Liys;"
    }
.end annotation


# virtual methods
.method public abstract caught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V
.end method

.method public abstract getRequestFilterChain()Liyu;
.end method

.method public abstract getType()Ljava/lang/reflect/Type;
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
