.class public Lcom/alibaba/lightapp/runtime/weex/DDWXModule;
.super Lcom/taobao/weex/common/WXModule;
.source "DDWXModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    return-void
.end method

.method private getRuntimeInstance()Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/DDWXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/DDWXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    instance-of v0, v0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/DDWXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    check-cast v0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    .line 32
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getDomainUrl()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/DDWXModule;->getRuntimeInstance()Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    move-result-object v0

    .line 14
    .local v0, "instance":Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;
    if-eqz v0, :cond_1

    .line 1121
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v1

    .line 1123
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->b()Ljava/lang/String;

    move-result-object v2

    .line 1124
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1125
    invoke-static {v2}, Lhgy;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1126
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1127
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v1

    .line 17
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/DDWXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getOriginalUrl()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/DDWXModule;->getRuntimeInstance()Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    move-result-object v0

    .line 22
    .local v0, "instance":Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->b()Ljava/lang/String;

    move-result-object v1

    .line 25
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/DDWXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
