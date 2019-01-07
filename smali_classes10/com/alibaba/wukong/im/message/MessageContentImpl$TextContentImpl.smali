.class public Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;
.super Lcom/alibaba/wukong/im/message/MessageContentImpl;
.source "MessageContentImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$TextContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/message/MessageContentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextContentImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x684b34d89624a889L


# instance fields
.field private mTemplateData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateId:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "templateId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p3, "templateData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/wukong/im/message/MessageContentImpl;-><init>(I)V

    .line 168
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;->mText:Ljava/lang/String;

    .line 169
    iput-object p2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;->mTemplateId:Ljava/lang/String;

    .line 170
    iput-object p3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;->mTemplateData:Ljava/util/List;

    .line 171
    return-void
.end method

.method static synthetic access$200(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 155
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;->fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;

    move-result-object v0

    return-object v0
.end method

.method private static fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;
    .locals 5
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    .line 211
    if-nez p0, :cond_0

    .line 215
    :goto_0
    return-object v3

    .line 212
    :cond_0
    const-string/jumbo v4, "txt"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "text":Ljava/lang/String;
    const-string/jumbo v4, "tplId"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "templateId":Ljava/lang/String;
    const-string/jumbo v3, "tplData"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lieb;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 215
    .local v0, "templateData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;

    invoke-direct {v3, v2, v1, v0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic cloneContent()Lcom/alibaba/wukong/im/MessageContent;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;->cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;

    move-result-object v0

    return-object v0
.end method

.method public cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 220
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;->mTemplateData:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 221
    .local v0, "templateData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;->mTemplateId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1

    .line 220
    .end local v0    # "templateData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;->mTemplateData:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;->mText:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public templateData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;->mTemplateData:Ljava/util/List;

    return-object v0
.end method

.method public templateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;->mTemplateId:Ljava/lang/String;

    return-object v0
.end method

.method public text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected toJSON()Lorg/json/JSONObject;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 194
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 196
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "txt"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;->mTemplateId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    const-string/jumbo v2, "tplId"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;->mTemplateId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;->mTemplateData:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 201
    const-string/jumbo v2, "tplData"

    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;->mTemplateData:Ljava/util/List;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v1    # "object":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-object v1

    .line 204
    .restart local v1    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 207
    const/4 v1, 0x0

    goto :goto_0
.end method
