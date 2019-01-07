.class public Lcom/taobao/weex/ui/action/ActionAddRule;
.super Ljava/lang/Object;
.source "ActionAddRule.java"

# interfaces
.implements Lcom/taobao/weex/ui/action/IExecutable;


# instance fields
.field private final mData:Lcom/alibaba/fastjson/JSONObject;

.field private final mPageId:Ljava/lang/String;

.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/taobao/weex/ui/action/ActionAddRule;->mPageId:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/taobao/weex/ui/action/ActionAddRule;->mType:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/taobao/weex/ui/action/ActionAddRule;->mData:Lcom/alibaba/fastjson/JSONObject;

    .line 43
    return-void
.end method

.method private parseFontDO(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/utils/FontDO;
    .locals 3
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "instance"    # Lcom/taobao/weex/WXSDKInstance;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    const/4 v2, 0x0

    .line 76
    :goto_0
    return-object v2

    .line 73
    :cond_0
    const-string/jumbo v2, "src"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "src":Ljava/lang/String;
    const-string/jumbo v2, "fontFamily"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "name":Ljava/lang/String;
    new-instance v2, Lcom/taobao/weex/utils/FontDO;

    invoke-direct {v2, v0, v1, p2}, Lcom/taobao/weex/utils/FontDO;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/WXSDKInstance;)V

    goto :goto_0
.end method


# virtual methods
.method public executeAction()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/weex/ui/action/ActionAddRule;->mPageId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/taobao/weex/ui/WXRenderManager;->getWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    .line 48
    .local v2, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string/jumbo v3, "fontFace"

    iget-object v4, p0, Lcom/taobao/weex/ui/action/ActionAddRule;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/taobao/weex/ui/action/ActionAddRule;->mData:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0, v3, v2}, Lcom/taobao/weex/ui/action/ActionAddRule;->parseFontDO(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/utils/FontDO;

    move-result-object v1

    .line 57
    .local v1, "fontDO":Lcom/taobao/weex/utils/FontDO;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/taobao/weex/utils/FontDO;->getFontFamilyName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    invoke-virtual {v1}, Lcom/taobao/weex/utils/FontDO;->getFontFamilyName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/TypefaceUtil;->getFontDO(Ljava/lang/String;)Lcom/taobao/weex/utils/FontDO;

    move-result-object v0

    .line 59
    .local v0, "cacheFontDO":Lcom/taobao/weex/utils/FontDO;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/taobao/weex/utils/FontDO;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/taobao/weex/utils/FontDO;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 60
    :cond_2
    invoke-static {v1}, Lcom/taobao/weex/utils/TypefaceUtil;->putFontDO(Lcom/taobao/weex/utils/FontDO;)V

    .line 61
    invoke-static {v1}, Lcom/taobao/weex/utils/TypefaceUtil;->loadTypeface(Lcom/taobao/weex/utils/FontDO;)V

    goto :goto_0

    .line 63
    :cond_3
    invoke-static {v0}, Lcom/taobao/weex/utils/TypefaceUtil;->loadTypeface(Lcom/taobao/weex/utils/FontDO;)V

    goto :goto_0
.end method
