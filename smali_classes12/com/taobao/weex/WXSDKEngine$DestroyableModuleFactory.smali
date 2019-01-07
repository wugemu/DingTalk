.class public abstract Lcom/taobao/weex/WXSDKEngine$DestroyableModuleFactory;
.super Lcom/taobao/weex/common/TypeModuleFactory;
.source "WXSDKEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXSDKEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DestroyableModuleFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/taobao/weex/WXSDKEngine$DestroyableModule;",
        ">",
        "Lcom/taobao/weex/common/TypeModuleFactory",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p0, "this":Lcom/taobao/weex/WXSDKEngine$DestroyableModuleFactory;, "Lcom/taobao/weex/WXSDKEngine$DestroyableModuleFactory<TT;>;"
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/taobao/weex/common/TypeModuleFactory;-><init>(Ljava/lang/Class;)V

    .line 456
    return-void
.end method
