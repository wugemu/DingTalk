.class public Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;
.super Lcom/taobao/weex/WXSDKInstance;
.source "WMLSDKInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljry$a;

.field public d:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance$a;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/taobao/weex/WXSDKInstance;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->a:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->b:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public final a(Ljry$a;)V
    .locals 3
    .param p1, "receiver"    # Ljry$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    iput-object p1, p0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->c:Ljry$a;

    .line 63
    iget-object v1, p0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->e:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->c:Ljry$a;

    iget-object v2, p0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljry$a;->onMessage(Ljava/lang/Object;)V

    .line 64
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 68
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getNativeInvokeHelper()Lcom/taobao/weex/bridge/NativeInvokeHelper;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    new-instance v0, Ljsg;

    invoke-virtual {p0}, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljsg;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onRenderError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->d:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance$a;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->d:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance$a;

    invoke-interface {v0, p1, p2}, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method
