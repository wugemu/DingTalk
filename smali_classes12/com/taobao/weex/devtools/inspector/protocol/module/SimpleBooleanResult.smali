.class public Lcom/taobao/weex/devtools/inspector/protocol/module/SimpleBooleanResult;
.super Ljava/lang/Object;
.source "SimpleBooleanResult.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;


# instance fields
.field public result:Z
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "result"    # Z

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/SimpleBooleanResult;->result:Z

    .line 24
    return-void
.end method
