.class public abstract Ljsi;
.super Ljava/lang/Object;
.source "BridgeInvokeBase.java"

# interfaces
.implements Ljrx;


# instance fields
.field protected final a:Ljrz;

.field protected final b:Ljava/lang/String;

.field private c:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method public constructor <init>(Ljrz;Ljava/lang/String;)V
    .locals 1
    .param p1, "instance"    # Ljrz;
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Ljsi;->a:Ljrz;

    .line 38
    iput-object p2, p0, Ljsi;->b:Ljava/lang/String;

    .line 39
    invoke-virtual {p0, p2}, Ljsi;->a(Ljava/lang/String;)Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    move-result-object v0

    iput-object v0, p0, Ljsi;->c:Lcom/taobao/weex/WXSDKInstance;

    .line 40
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 22
    iget-object v0, p0, Ljsi;->a:Ljrz;

    .line 23
    .local v0, "instance":Ljrz;
    if-eqz v0, :cond_2

    instance-of v2, v0, Ljsf;

    if-eqz v2, :cond_2

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "undefined"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "AppWorker"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    :cond_0
    check-cast v0, Ljsf;

    .line 1214
    .end local v0    # "instance":Ljrz;
    iget-object v2, v0, Ljsf;->e:Lcom/taobao/windmill/rt/weex/app/DummySDKInstance;

    .line 33
    :goto_0
    return-object v2

    .line 27
    .restart local v0    # "instance":Ljrz;
    :cond_1
    check-cast v0, Ljsf;

    .end local v0    # "instance":Ljrz;
    invoke-virtual {v0, p1}, Ljsf;->a(Ljava/lang/String;)Ljry;

    move-result-object v1

    .line 28
    .local v1, "renderer":Ljry;
    if-eqz v1, :cond_2

    instance-of v2, v1, Ljso;

    if-eqz v2, :cond_2

    .line 29
    check-cast v1, Ljso;

    .line 1220
    .end local v1    # "renderer":Ljry;
    iget-object v2, v1, Ljso;->a:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    goto :goto_0

    .line 33
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ljsi;->c:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Ljsi;->c:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityStart()V

    .line 54
    :cond_0
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 86
    iget-object v0, p0, Ljsi;->c:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Ljsi;->c:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/weex/WXSDKInstance;->onActivityResult(IILandroid/content/Intent;)V

    .line 89
    :cond_0
    return-void
.end method

.method public final a(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 93
    iget-object v0, p0, Ljsi;->c:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Ljsi;->c:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/weex/WXSDKInstance;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 96
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ljsi;->c:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Ljsi;->c:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityPause()V

    .line 61
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Ljsi;->c:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Ljsi;->c:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityResume()V

    .line 68
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ljsi;->c:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Ljsi;->c:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityStop()V

    .line 75
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ljsi;->c:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Ljsi;->c:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityDestroy()V

    .line 82
    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method
