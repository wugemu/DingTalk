.class public interface abstract Lcom/taobao/weex/bridge/ModuleFactory;
.super Ljava/lang/Object;
.source "ModuleFactory.java"

# interfaces
.implements Lcom/taobao/weex/bridge/JavascriptInvokable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/taobao/weex/common/WXModule;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/taobao/weex/bridge/JavascriptInvokable;"
    }
.end annotation


# virtual methods
.method public abstract buildInstance()Lcom/taobao/weex/common/WXModule;
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
