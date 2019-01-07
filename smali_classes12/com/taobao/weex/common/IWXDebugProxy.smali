.class public interface abstract Lcom/taobao/weex/common/IWXDebugProxy;
.super Ljava/lang/Object;
.source "IWXDebugProxy.java"


# static fields
.field public static final ACTION_DEBUG_INSTANCE_REFRESH:Ljava/lang/String; = "DEBUG_INSTANCE_REFRESH"

.field public static final ACTION_INSTANCE_RELOAD:Ljava/lang/String; = "INSTANCE_RELOAD"


# virtual methods
.method public abstract getWXBridge()Lcom/taobao/weex/common/IWXBridge;
.end method

.method public abstract start(Lcom/taobao/weex/common/IWXJsFunctions;)V
.end method

.method public abstract stop(Z)V
.end method
