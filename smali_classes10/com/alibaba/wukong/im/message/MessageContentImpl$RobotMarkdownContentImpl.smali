.class public Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;
.super Lcom/alibaba/wukong/im/message/MessageContentImpl;
.source "MessageContentImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/message/MessageContentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RobotMarkdownContentImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x353413722e1b100bL


# instance fields
.field protected mAuthMediaParamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;"
        }
    .end annotation
.end field

.field protected mExtension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mText:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;


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
    .line 1872
    .local p3, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    const/16 v0, 0x4b0

    invoke-direct {p0, v0}, Lcom/alibaba/wukong/im/message/MessageContentImpl;-><init>(I)V

    .line 1873
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->mText:Ljava/lang/String;

    .line 1874
    iput-object p2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->mTitle:Ljava/lang/String;

    .line 1875
    iput-object p3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->mExtension:Ljava/util/Map;

    .line 1876
    iput-object p4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->mAuthMediaParamMap:Ljava/util/Map;

    .line 1877
    return-void
.end method

.method static synthetic access$1000(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 1857
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 1857
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->getCompatExtension(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 1857
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->getCompatAuthMediaParam(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;
    .locals 7
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    .line 1979
    if-nez p0, :cond_0

    .line 1993
    :goto_0
    return-object v5

    .line 1982
    :cond_0
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->getCompatExtension(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 1983
    .local v1, "compatExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 1984
    const-string/jumbo v5, "markdown"

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1985
    .local v3, "text":Ljava/lang/String;
    const-string/jumbo v5, "title"

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1986
    .local v4, "title":Ljava/lang/String;
    new-instance v5, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;

    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->getCompatAuthMediaParam(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v6

    invoke-direct {v5, v3, v4, v1, v6}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 1988
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "markdown"

    invoke-virtual {p0, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1989
    .restart local v3    # "text":Ljava/lang/String;
    const-string/jumbo v6, "title"

    invoke-virtual {p0, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1990
    .restart local v4    # "title":Ljava/lang/String;
    const-string/jumbo v5, "md_attach"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lieb;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 1991
    .local v2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "md_auth"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl$2;

    invoke-direct {v6}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl$2;-><init>()V

    invoke-static {v5, v6}, Lieb;->a(Ljava/lang/String;Lgxp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1993
    .local v0, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    new-instance v5, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;

    invoke-direct {v5, v3, v4, v2, v0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private static getCompatAuthMediaParam(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .param p0, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1949
    if-nez p0, :cond_1

    .line 1960
    :cond_0
    :goto_0
    return-object v2

    .line 1952
    :cond_1
    const-string/jumbo v3, "multi"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1953
    .local v1, "jsonArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1954
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1955
    .local v0, "compatJsonObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 1956
    const-string/jumbo v2, "auth"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl$1;

    invoke-direct {v3}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl$1;-><init>()V

    invoke-static {v2, v3}, Lieb;->a(Ljava/lang/String;Lgxp;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    goto :goto_0
.end method

.method private static getCompatExtension(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .param p0, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1934
    if-nez p0, :cond_1

    .line 1945
    :cond_0
    :goto_0
    return-object v2

    .line 1937
    :cond_1
    const-string/jumbo v3, "multi"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1938
    .local v1, "jsonArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1939
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1940
    .local v0, "compatJsonObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 1941
    const-string/jumbo v2, "ext"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lieb;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    goto :goto_0
.end method

.method protected static getCompatValue(Lorg/json/JSONObject;Ljava/lang/String;Lgxp;)Ljava/util/Map;
    .locals 4
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lgxp",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .local p2, "type":Lgxp;, "Lgxp<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    const/4 v2, 0x0

    .line 1964
    if-nez p0, :cond_1

    .line 1975
    :cond_0
    :goto_0
    return-object v2

    .line 1967
    :cond_1
    const-string/jumbo v3, "multi"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1968
    .local v1, "jsonArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1969
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1970
    .local v0, "compatJsonObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 1971
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lieb;->a(Ljava/lang/String;Lgxp;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public authMediaParamMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->mAuthMediaParamMap:Ljava/util/Map;

    return-object v0
.end method

.method public cloneContent()Lcom/alibaba/wukong/im/MessageContent;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1998
    const/4 v1, 0x0

    .line 1999
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->mExtension:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 2000
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->mExtension:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2002
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    .line 2003
    .local v0, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->mAuthMediaParamMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 2004
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->mAuthMediaParamMap:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2006
    .restart local v0    # "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    :cond_1
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->mText:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->mTitle:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object v2
.end method

.method public extension()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->mExtension:Ljava/util/Map;

    return-object v0
.end method

.method public setAuthMediaParamMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1915
    .local p1, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->mAuthMediaParamMap:Ljava/util/Map;

    .line 1916
    return-void
.end method

.method public setExtension(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1900
    .local p1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->mExtension:Ljava/util/Map;

    .line 1901
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 1890
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->mText:Ljava/lang/String;

    .line 1891
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1895
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->mTitle:Ljava/lang/String;

    .line 1896
    return-void
.end method

.method public text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected toJSON()Lorg/json/JSONObject;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1920
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1922
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "markdown"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1923
    const-string/jumbo v2, "title"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1924
    const-string/jumbo v2, "md_attach"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->mExtension:Ljava/util/Map;

    invoke-static {v3}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1925
    const-string/jumbo v2, "md_auth"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->mAuthMediaParamMap:Ljava/util/Map;

    invoke-static {v3}, Lieb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1930
    .end local v1    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 1927
    .restart local v1    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1928
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1930
    const/4 v1, 0x0

    goto :goto_0
.end method
