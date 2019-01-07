.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JsapiMethod"
.end annotation


# instance fields
.field public mCallbackId:Ljava/lang/String;

.field public mParamJson:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p2, "method"    # Ljava/lang/String;

    .prologue
    .line 3990
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3991
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mCallbackId:Ljava/lang/String;

    .line 3992
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mParamJson:Lorg/json/JSONObject;

    .line 3993
    return-void
.end method
