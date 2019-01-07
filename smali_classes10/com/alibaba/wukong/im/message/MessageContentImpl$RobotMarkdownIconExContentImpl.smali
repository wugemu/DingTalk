.class public Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;
.super Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;
.source "MessageContentImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/message/MessageContentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RobotMarkdownIconExContentImpl"
.end annotation


# instance fields
.field private mEnhancedExtension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;",
            ">;"
        }
    .end annotation
.end field

.field private mNickMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2345
    .local p3, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    .local p5, "nickMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;>;"
    .local p6, "enhancedExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 2346
    const/16 v0, 0x4b4

    iput v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;->mType:I

    .line 2347
    iput-object p5, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;->mNickMap:Ljava/util/Map;

    .line 2348
    iput-object p6, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;->mEnhancedExtension:Ljava/util/Map;

    .line 2349
    return-void
.end method

.method static synthetic access$1300(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 2336
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;->fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;

    move-result-object v0

    return-object v0
.end method

.method private static fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;
    .locals 8
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x0

    .line 2352
    if-nez p0, :cond_1

    .line 2376
    :cond_0
    :goto_0
    return-object v0

    .line 2353
    :cond_1
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->access$1000(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;

    move-result-object v7

    .line 2354
    .local v7, "content":Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;
    if-eqz v7, :cond_0

    .line 2357
    const-string/jumbo v0, "nick_map"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl$1;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl$1;-><init>()V

    invoke-static {v0, v1}, Lieb;->a(Ljava/lang/String;Lgxp;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 2360
    .local v5, "nickMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;>;"
    if-nez v5, :cond_2

    .line 2362
    const-string/jumbo v0, "nick_map"

    new-instance v1, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl$2;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl$2;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;->getCompatValue(Lorg/json/JSONObject;Ljava/lang/String;Lgxp;)Ljava/util/Map;

    move-result-object v5

    .line 2366
    :cond_2
    const-string/jumbo v0, "enhanced_extension"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl$3;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl$3;-><init>()V

    invoke-static {v0, v1}, Lieb;->a(Ljava/lang/String;Lgxp;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 2369
    .local v6, "enhancedExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;>;"
    if-nez v6, :cond_3

    .line 2371
    const-string/jumbo v0, "enhanced_extension"

    new-instance v1, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl$4;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl$4;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;->getCompatValue(Lorg/json/JSONObject;Ljava/lang/String;Lgxp;)Ljava/util/Map;

    move-result-object v6

    .line 2375
    :cond_3
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->extension()Ljava/util/Map;

    move-result-object v3

    .line 2376
    invoke-virtual {v7}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->authMediaParamMap()Ljava/util/Map;

    move-result-object v4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic cloneContent()Lcom/alibaba/wukong/im/MessageContent;
    .locals 1

    .prologue
    .line 2336
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;->cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;

    move-result-object v0

    return-object v0
.end method

.method public cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2396
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;->mText:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;->mExtension:Ljava/util/Map;

    invoke-static {v3}, Liea;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;->mAuthMediaParamMap:Ljava/util/Map;

    .line 2397
    invoke-static {v4}, Liea;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;->mNickMap:Ljava/util/Map;

    invoke-static {v5}, Liea;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;->mEnhancedExtension:Ljava/util/Map;

    invoke-static {v6}, Liea;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public enhancedExtension()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;->mEnhancedExtension:Ljava/util/Map;

    return-object v0
.end method

.method public nickMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;->mNickMap:Ljava/util/Map;

    return-object v0
.end method

.method protected toJSON()Lorg/json/JSONObject;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2381
    invoke-super {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 2382
    .local v1, "object":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 2384
    :try_start_0
    const-string/jumbo v2, "nick_map"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;->mNickMap:Ljava/util/Map;

    invoke-static {v3}, Lieb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2385
    const-string/jumbo v2, "enhanced_extension"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;->mEnhancedExtension:Ljava/util/Map;

    invoke-static {v3}, Lieb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2391
    .end local v1    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 2387
    .restart local v1    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 2388
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2391
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
