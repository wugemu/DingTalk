.class public final Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelResponse;
.super Ljava/lang/Object;
.source "DOM.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetBoxModelResponse"
.end annotation


# instance fields
.field public model:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
