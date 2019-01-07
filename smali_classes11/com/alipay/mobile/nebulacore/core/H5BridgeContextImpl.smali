.class public Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;
.super Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;
.source "H5BridgeContextImpl.java"


# static fields
.field public static final FORBIDDEN:Ljava/lang/String; = "forbidden!"

.field public static final INVALID_PARAM:Ljava/lang/String; = "invalid parameter!"

.field public static final NONE_ERROR:Ljava/lang/String; = "none error!"

.field public static final NOT_FOUND:Ljava/lang/String; = "not implemented!"

.field private static final TAG:Ljava/lang/String; = "H5BridgeContextImpl"

.field public static final UNKNOWN_ERROR:Ljava/lang/String; = "unknown error!"


# instance fields
.field private action:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linx;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bridge"    # Linx;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->bridge:Linx;

    .line 32
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->action:Ljava/lang/String;

    .line 33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string/jumbo v0, "-1"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->id:Ljava/lang/String;

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->id:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public sendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z
    .locals 6
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "keep"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$a;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Event$a;-><init>()V

    .line 43
    .local v0, "builder":Lcom/alipay/mobile/h5container/api/H5Event$a;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "-1"

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 44
    :cond_0
    const-string/jumbo v3, "H5BridgeContextImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "client id not specified "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->action:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_0
    return v2

    .line 48
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->id:Ljava/lang/String;

    const-string/jumbo v4, "native_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 49
    const-string/jumbo v3, "H5BridgeContextImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ignore native fired event "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->action:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->id:Ljava/lang/String;

    .line 1212
    iput-object v3, v0, Lcom/alipay/mobile/h5container/api/H5Event$a;->c:Ljava/lang/String;

    .line 53
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->action:Ljava/lang/String;

    .line 2202
    iput-object v3, v0, Lcom/alipay/mobile/h5container/api/H5Event$a;->a:Ljava/lang/String;

    .line 2237
    iput-boolean p2, v0, Lcom/alipay/mobile/h5container/api/H5Event$a;->f:Z

    .line 3217
    iput-object p1, v0, Lcom/alipay/mobile/h5container/api/H5Event$a;->d:Lcom/alibaba/fastjson/JSONObject;

    .line 53
    const-string/jumbo v3, "callback"

    .line 3222
    iput-object v3, v0, Lcom/alipay/mobile/h5container/api/H5Event$a;->g:Ljava/lang/String;

    .line 55
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event$a;->a()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v1

    .line 56
    .local v1, "event":Lcom/alipay/mobile/h5container/api/H5Event;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->bridge:Linx;

    if-eqz v3, :cond_3

    .line 57
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->bridge:Linx;

    invoke-interface {v2, v1}, Linx;->sendToWeb(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 62
    const/4 v2, 0x1

    goto :goto_0

    .line 59
    :cond_3
    const-string/jumbo v3, "H5BridgeContextImpl"

    const-string/jumbo v4, "[FATAL ERROR] in sendBack() bridge is null"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
