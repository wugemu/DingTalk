.class public Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNodeManager;
.super Ljava/lang/Object;
.source "RichTextNodeManager.java"


# static fields
.field private static final registeredTextNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNodeCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 219
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    .line 222
    sput-object v0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNodeManager;->registeredTextNodes:Ljava/util/Map;

    const-string/jumbo v1, "span"

    new-instance v2, Lcom/alibaba/aliweex/adapter/component/richtext/node/SpanNode$SpanNodeCreator;

    invoke-direct {v2}, Lcom/alibaba/aliweex/adapter/component/richtext/node/SpanNode$SpanNodeCreator;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNodeManager;->registeredTextNodes:Ljava/util/Map;

    const-string/jumbo v1, "image"

    new-instance v2, Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode$ImgNodeCreator;

    invoke-direct {v2}, Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode$ImgNodeCreator;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNodeManager;->registeredTextNodes:Ljava/util/Map;

    const-string/jumbo v1, "a"

    new-instance v2, Lcom/alibaba/aliweex/adapter/component/richtext/node/ANode$ANodeCreator;

    invoke-direct {v2}, Lcom/alibaba/aliweex/adapter/component/richtext/node/ANode$ANodeCreator;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "instanceId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "componentRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 236
    .local v1, "instance":Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;
    if-eqz p3, :cond_0

    .line 237
    :try_start_0
    sget-object v2, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNodeManager;->registeredTextNodes:Ljava/util/Map;

    const-string/jumbo v3, "type"

    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNodeCreator;

    .line 238
    invoke-interface {v2, p0, p1, p2}, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNodeCreator;->createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;

    move-result-object v1

    .line 239
    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_0
    :goto_0
    return-object v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Richtext"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static registerTextNode(Ljava/lang/String;Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNodeCreator;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNodeCreator;

    .prologue
    .line 228
    sget-object v0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNodeManager;->registeredTextNodes:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    return-void
.end method
