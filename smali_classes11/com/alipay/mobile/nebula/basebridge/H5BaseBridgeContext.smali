.class public abstract Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;
.super Ljava/lang/Object;
.source "H5BaseBridgeContext.java"

# interfaces
.implements Liny;


# static fields
.field public static final FORBIDDEN:Ljava/lang/String; = "forbidden!"

.field public static final INVALID_PARAM:Ljava/lang/String; = "invalid parameter!"

.field public static final NONE_ERROR:Ljava/lang/String; = "none error!"

.field public static final NOT_FOUND:Ljava/lang/String; = "not implemented!"

.field private static final TAG:Ljava/lang/String; = "H5BridgeContextImpl"

.field public static final UNKNOWN_ERROR:Ljava/lang/String; = "unknown error!"


# instance fields
.field public bridge:Linx;

.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getErrorMsg(Lcom/alipay/mobile/h5container/api/H5Event$Error;)Ljava/lang/String;
    .locals 2
    .param p0, "code"    # Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .prologue
    .line 29
    sget-object v0, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext$1;->$SwitchMap$com$alipay$mobile$h5container$api$H5Event$Error:[I

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 39
    const-string/jumbo v0, "none error!"

    :goto_0
    return-object v0

    .line 31
    :pswitch_0
    const-string/jumbo v0, "not implemented!"

    goto :goto_0

    .line 33
    :pswitch_1
    const-string/jumbo v0, "invalid parameter!"

    goto :goto_0

    .line 35
    :pswitch_2
    const-string/jumbo v0, "unknown error!"

    goto :goto_0

    .line 37
    :pswitch_3
    const-string/jumbo v0, "forbidden!"

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInvokeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string/jumbo v0, "h5"

    return-object v0
.end method

.method public abstract sendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z
.end method

.method public sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 1
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;->sendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z

    move-result v0

    return v0
.end method

.method public sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 54
    .local v0, "param":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v1

    return v1
.end method

.method public sendBridgeResultWithCallbackKept(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 1
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;->sendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z

    move-result v0

    return v0
.end method

.method public sendBridgeResultWithCallbackKept(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 74
    .local v0, "param":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;->sendBridgeResultWithCallbackKept(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v1

    return v1
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 101
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "errorMessage"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v1, "error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 104
    return-void
.end method

.method public sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z
    .locals 5
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "error"    # Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 81
    .local v0, "action":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "H5BridgeContextImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sendError "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " [action] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 83
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "message"

    invoke-static {p2}, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;->getErrorMsg(Lcom/alipay/mobile/h5container/api/H5Event$Error;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v2, "error"

    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v2

    return v2

    .line 1065
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public sendNoRigHtToInvoke()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getNebulaResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_no_right_to_invoke:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "prompt":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 111
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "errorMessage"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v2, "error"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 114
    return-void
.end method

.method public sendNotGrantPermission()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 119
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "error"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string/jumbo v1, "errorMessage"

    .line 121
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getNebulaResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_no_grant_permission:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 124
    return-void
.end method

.method public sendSuccess()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    const-string/jumbo v0, "success"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "callback"    # Lioa;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;->bridge:Linx;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;->bridge:Linx;

    invoke-interface {v0, p1, p2, p3}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string/jumbo v0, "H5BridgeContextImpl"

    const-string/jumbo v1, "[FATAL ERROR] in sendToWeb() bridge is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public useCancel()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 129
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "error"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string/jumbo v1, "errorMessage"

    .line 131
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getNebulaResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_default_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 133
    return-void
.end method
