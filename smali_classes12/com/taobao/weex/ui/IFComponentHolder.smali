.class public interface abstract Lcom/taobao/weex/ui/IFComponentHolder;
.super Ljava/lang/Object;
.source "IFComponentHolder.java"

# interfaces
.implements Lcom/taobao/weex/bridge/JavascriptInvokable;
.implements Lcom/taobao/weex/ui/ComponentCreator;


# virtual methods
.method public abstract getPropertyInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;
.end method

.method public abstract loadIfNonLazy()V
.end method
