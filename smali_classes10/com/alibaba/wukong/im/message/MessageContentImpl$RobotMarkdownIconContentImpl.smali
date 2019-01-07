.class public Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;
.super Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;
.source "MessageContentImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/message/MessageContentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RobotMarkdownIconContentImpl"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2309
    .local p3, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 2310
    const/16 v0, 0x4b2

    iput v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;->mType:I

    .line 2311
    return-void
.end method

.method static synthetic access$1200(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 2305
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;->fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;

    move-result-object v0

    return-object v0
.end method

.method private static fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;
    .locals 6
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 2314
    if-nez p0, :cond_1

    .line 2319
    :cond_0
    :goto_0
    return-object v1

    .line 2315
    :cond_1
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->access$1000(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;

    move-result-object v0

    .line 2316
    .local v0, "content":Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;
    if-eqz v0, :cond_0

    .line 2319
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->extension()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->authMediaParamMap()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic cloneContent()Lcom/alibaba/wukong/im/MessageContent;
    .locals 1

    .prologue
    .line 2305
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;->cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;

    move-result-object v0

    return-object v0
.end method

.method public cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2324
    const/4 v0, 0x0

    .line 2325
    .local v0, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;->mAuthMediaParamMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 2326
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;->mAuthMediaParamMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2328
    .restart local v0    # "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;->extension()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2329
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;->mTitle:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 2331
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;->mTitle:Ljava/lang/String;

    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;->extension()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method
