.class public Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Request;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field public headers:Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field

.field public method:Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field

.field public postData:Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method