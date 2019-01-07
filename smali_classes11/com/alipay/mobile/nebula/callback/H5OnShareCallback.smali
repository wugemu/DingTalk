.class public Lcom/alipay/mobile/nebula/callback/H5OnShareCallback;
.super Ljava/lang/Object;
.source "H5OnShareCallback.java"

# interfaces
.implements Lioa;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/callback/H5OnShareCallback$OnShareResultListener;
    }
.end annotation


# static fields
.field public static TIMEOUT:I


# instance fields
.field private hasCallback:Z

.field private onShareResultListener:Lcom/alipay/mobile/nebula/callback/H5OnShareCallback$OnShareResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x12c

    sput v0, Lcom/alipay/mobile/nebula/callback/H5OnShareCallback;->TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebula/callback/H5OnShareCallback$OnShareResultListener;)V
    .locals 2
    .param p1, "onShareResultListener"    # Lcom/alipay/mobile/nebula/callback/H5OnShareCallback$OnShareResultListener;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/nebula/callback/H5OnShareCallback;->onShareResultListener:Lcom/alipay/mobile/nebula/callback/H5OnShareCallback$OnShareResultListener;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/callback/H5OnShareCallback;->hasCallback:Z

    .line 22
    sget v0, Lcom/alipay/mobile/nebula/callback/H5OnShareCallback;->TIMEOUT:I

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 23
    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/callback/H5OnShareCallback;->hasCallback:Z

    if-eqz v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/callback/H5OnShareCallback;->hasCallback:Z

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebula/callback/H5OnShareCallback;->onShareResultListener:Lcom/alipay/mobile/nebula/callback/H5OnShareCallback$OnShareResultListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/callback/H5OnShareCallback$OnShareResultListener;->onShareResult(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    iget-boolean v1, p0, Lcom/alipay/mobile/nebula/callback/H5OnShareCallback;->hasCallback:Z

    if-eqz v1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 39
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebula/callback/H5OnShareCallback;->hasCallback:Z

    .line 40
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 41
    .local v0, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "prevent"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v1, p0, Lcom/alipay/mobile/nebula/callback/H5OnShareCallback;->onShareResultListener:Lcom/alipay/mobile/nebula/callback/H5OnShareCallback$OnShareResultListener;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/callback/H5OnShareCallback$OnShareResultListener;->onShareResult(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method
