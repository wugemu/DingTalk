.class public interface abstract Lcom/laiwang/protocol/android/Receive;
.super Ljava/lang/Object;
.source "Receive.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Req:",
        "Ljava/lang/Object;",
        "Res:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract apply(Ljava/lang/Object;Lcom/laiwang/protocol/lang/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReq;",
            "Lcom/laiwang/protocol/lang/Callback",
            "<TRes;>;)V"
        }
    .end annotation
.end method
