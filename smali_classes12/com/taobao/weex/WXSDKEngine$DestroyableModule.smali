.class public abstract Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXSDKEngine.java"

# interfaces
.implements Lcom/taobao/weex/common/Destroyable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXSDKEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DestroyableModule"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    return-void
.end method
