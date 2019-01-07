.class public Lcom/alibaba/aliweex/adapter/component/richtext/span/ItemClickSpan;
.super Landroid/text/style/ClickableSpan;
.source "ItemClickSpan.java"


# instance fields
.field private final mComponentRef:Ljava/lang/String;

.field private final mInstanceId:Ljava/lang/String;

.field private final mPseudoRef:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "componentRef"    # Ljava/lang/String;
    .param p3, "pseudoRef"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 19
    iput-object p3, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ItemClickSpan;->mPseudoRef:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ItemClickSpan;->mInstanceId:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ItemClickSpan;->mComponentRef:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "widget"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 26
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ItemClickSpan;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 27
    .local v0, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/taobao/weex/utils/WXDataStructureUtil;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    .line 29
    .local v1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "pseudoRef"

    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ItemClickSpan;->mPseudoRef:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v2, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ItemClickSpan;->mComponentRef:Ljava/lang/String;

    const-string/jumbo v3, "itemclick"

    invoke-virtual {v0, v2, v3, v1}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 32
    .end local v1    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method
