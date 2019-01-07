.class public interface abstract Ljrr;
.super Ljava/lang/Object;
.source "JSBridgeFactory.java"

# interfaces
.implements Ljrt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/taobao/windmill/module/base/JSBridge;",
        ">",
        "Ljava/lang/Object;",
        "Ljrt;"
    }
.end annotation


# virtual methods
.method public abstract a()Lcom/taobao/windmill/module/base/JSBridge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation
.end method
