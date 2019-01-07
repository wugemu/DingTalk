.class public final Lcom/taobao/weex/ui/module/WXDomModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXDomModule.java"


# static fields
.field public static final ADD_RULE:Ljava/lang/String; = "addRule"

.field public static final GET_COMPONENT_RECT:Ljava/lang/String; = "getComponentRect"

.field public static final INVOKE_METHOD:Ljava/lang/String; = "invokeMethod"

.field public static final METHODS:[Ljava/lang/String;

.field public static final SCROLL_TO_ELEMENT:Ljava/lang/String; = "scrollToElement"

.field public static final UPDATE_COMPONENT_DATA:Ljava/lang/String; = "updateComponentData"

.field public static final WXDOM:Ljava/lang/String; = "dom"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "scrollToElement"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "addRule"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "getComponentRect"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "invokeMethod"

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/weex/ui/module/WXDomModule;->METHODS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/taobao/weex/ui/module/WXDomModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 61
    return-void
.end method


# virtual methods
.method public final varargs callDomMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;[J)Ljava/lang/Object;
    .locals 10
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "args"    # Lcom/alibaba/fastjson/JSONArray;
    .param p3, "parseNanos"    # [J

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 74
    if-nez p1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-object v3

    .line 79
    :cond_1
    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_2
    move v4, v5

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 122
    const-string/jumbo v4, "Unknown dom action."

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 156
    const-string/jumbo v4, "Dom module call miss arguments."

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :sswitch_0
    :try_start_1
    const-string/jumbo v6, "scrollToElement"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "addRule"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "getComponentRect"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v7

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "invokeMethod"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v8

    goto :goto_1

    :sswitch_4
    const-string/jumbo v4, "updateComponentData"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_1

    .line 81
    :pswitch_0
    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "ref":Ljava/lang/String;
    :goto_2
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-lt v4, v7, :cond_4

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 86
    .local v1, "options":Lcom/alibaba/fastjson/JSONObject;
    :goto_3
    new-instance v4, Lcom/taobao/weex/ui/action/GraphicActionScrollToElement;

    iget-object v5, p0, Lcom/taobao/weex/ui/module/WXDomModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2, v1}, Lcom/taobao/weex/ui/action/GraphicActionScrollToElement;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 87
    invoke-virtual {v4}, Lcom/taobao/weex/ui/action/GraphicActionScrollToElement;->executeActionOnRender()V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 158
    .end local v1    # "options":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "ref":Ljava/lang/String;
    :catch_1
    move-exception v4

    const-string/jumbo v4, "Dom module call arguments format error!!"

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move-object v2, v3

    .line 84
    goto :goto_2

    .restart local v2    # "ref":Ljava/lang/String;
    :cond_4
    move-object v1, v3

    .line 85
    goto :goto_3

    .line 91
    .end local v2    # "ref":Ljava/lang/String;
    :pswitch_1
    if-eqz p2, :cond_0

    .line 94
    :try_start_2
    new-instance v4, Lcom/taobao/weex/ui/action/ActionAddRule;

    iget-object v5, p0, Lcom/taobao/weex/ui/module/WXDomModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/taobao/weex/ui/action/ActionAddRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 95
    invoke-virtual {v4}, Lcom/taobao/weex/ui/action/ActionAddRule;->executeAction()V

    goto/16 :goto_0

    .line 99
    :pswitch_2
    if-eqz p2, :cond_0

    .line 102
    new-instance v4, Lcom/taobao/weex/ui/action/ActionGetComponentRect;

    iget-object v5, p0, Lcom/taobao/weex/ui/module/WXDomModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/taobao/weex/ui/action/ActionGetComponentRect;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v4}, Lcom/taobao/weex/ui/action/ActionGetComponentRect;->executeActionOnRender()V

    goto/16 :goto_0

    .line 107
    :pswitch_3
    if-eqz p2, :cond_0

    .line 111
    new-instance v4, Lcom/taobao/weex/ui/action/ActionInvokeMethod;

    iget-object v5, p0, Lcom/taobao/weex/ui/module/WXDomModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {p2, v8}, Lcom/alibaba/fastjson/JSONArray;->getJSONArray(I)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/taobao/weex/ui/action/ActionInvokeMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    .line 112
    invoke-virtual {v4}, Lcom/taobao/weex/ui/action/ActionInvokeMethod;->executeAction()V

    goto/16 :goto_0

    .line 116
    :pswitch_4
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-lt v4, v8, :cond_0

    .line 119
    new-instance v4, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;

    iget-object v5, p0, Lcom/taobao/weex/ui/module/WXDomModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/taobao/weex/dom/binding/JSONUtils;->toJSON(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {p2, v8}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->executeAction()V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 79
    :sswitch_data_0
    .sparse-switch
        -0x4476b4c3 -> :sswitch_1
        -0x2ca0f84c -> :sswitch_0
        -0x273a3887 -> :sswitch_3
        0x2314e0cb -> :sswitch_2
        0x628bfffe -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final varargs callDomMethod(Lcom/alibaba/fastjson/JSONObject;[J)V
    .locals 3
    .param p1, "task"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "parseNanos"    # [J

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string/jumbo v2, "method"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    .local v1, "method":Ljava/lang/String;
    const-string/jumbo v2, "args"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 69
    .local v0, "args":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p0, v1, v0, p2}, Lcom/taobao/weex/ui/module/WXDomModule;->callDomMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;[J)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final invokeMethod(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 2
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "args"    # Lcom/alibaba/fastjson/JSONArray;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 164
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    new-instance v0, Lcom/taobao/weex/ui/action/ActionInvokeMethod;

    iget-object v1, p0, Lcom/taobao/weex/ui/module/WXDomModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/taobao/weex/ui/action/ActionInvokeMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    .line 169
    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/ActionInvokeMethod;->executeAction()V

    goto :goto_0
.end method
