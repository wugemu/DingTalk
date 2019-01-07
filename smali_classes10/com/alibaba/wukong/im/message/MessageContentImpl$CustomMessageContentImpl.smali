.class public Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;
.super Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;
.source "MessageContentImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/message/MessageContentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomMessageContentImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x102459428675fac2L


# instance fields
.field private mAuthMediaParamMap:Ljava/util/Map;
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

.field private mCustomType:I

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
.method public constructor <init>(IILjava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p1, "contentType"    # I
    .param p2, "type"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "J",
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
    .line 762
    .local p6, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    .local p8, "nickMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;>;"
    .local p9, "enhancedExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;>;"
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;-><init>(ILjava/lang/String;J)V

    .line 765
    iput p2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mCustomType:I

    .line 766
    iput-object p6, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mExtension:Ljava/util/Map;

    .line 767
    iput-object p7, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mAuthMediaParamMap:Ljava/util/Map;

    .line 768
    iput-object p8, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mNickMap:Ljava/util/Map;

    .line 769
    iput-object p9, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mEnhancedExtension:Ljava/util/Map;

    .line 770
    return-void
.end method

.method static synthetic access$100(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 748
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;

    move-result-object v0

    return-object v0
.end method

.method private static fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;
    .locals 11
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 834
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 848
    :goto_0
    return-object v0

    .line 835
    :cond_0
    const-string/jumbo v0, "tp"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 836
    .local v1, "contentType":I
    const-string/jumbo v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 837
    .local v3, "url":Ljava/lang/String;
    const-string/jumbo v0, "size"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 838
    .local v4, "size":J
    const-string/jumbo v0, "customType"

    const/4 v10, 0x0

    invoke-virtual {p0, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 840
    .local v2, "customType":I
    const-string/jumbo v0, "ext"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lieb;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 841
    .local v6, "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "auth"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl$1;

    invoke-direct {v10}, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl$1;-><init>()V

    invoke-static {v0, v10}, Lieb;->a(Ljava/lang/String;Lgxp;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 842
    .local v7, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    const-string/jumbo v0, "nick_map"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl$2;

    invoke-direct {v10}, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl$2;-><init>()V

    invoke-static {v0, v10}, Lieb;->a(Ljava/lang/String;Lgxp;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 845
    .local v8, "nickMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;>;"
    const-string/jumbo v0, "enhanced_extension"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl$3;

    invoke-direct {v10}, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl$3;-><init>()V

    invoke-static {v0, v10}, Lieb;->a(Ljava/lang/String;Lgxp;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 848
    .local v9, "enhancedExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;>;"
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;-><init>(IILjava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

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
    .line 796
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mAuthMediaParamMap:Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic cloneContent()Lcom/alibaba/wukong/im/MessageContent;
    .locals 1

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;

    move-result-object v0

    return-object v0
.end method

.method public cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 852
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mExtension:Ljava/util/Map;

    if-nez v1, :cond_0

    move-object v6, v0

    .line 853
    .local v6, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mAuthMediaParamMap:Ljava/util/Map;

    if-nez v1, :cond_1

    move-object v7, v0

    .line 854
    .local v7, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    :goto_1
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;

    iget v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mType:I

    iget v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mCustomType:I

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mUrl:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mSize:J

    iget-object v8, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mNickMap:Ljava/util/Map;

    .line 855
    invoke-static {v8}, Liea;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mEnhancedExtension:Ljava/util/Map;

    invoke-static {v9}, Liea;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;-><init>(IILjava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0

    .line 852
    .end local v6    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mExtension:Ljava/util/Map;

    invoke-direct {v6, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 853
    .restart local v6    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mAuthMediaParamMap:Ljava/util/Map;

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_1
.end method

.method public customType()I
    .locals 1

    .prologue
    .line 776
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mCustomType:I

    return v0
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
    .line 811
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mEnhancedExtension:Ljava/util/Map;

    return-object v0
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
    .line 786
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mExtension:Ljava/util/Map;

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
    .line 806
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mNickMap:Ljava/util/Map;

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
    .line 801
    .local p1, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mAuthMediaParamMap:Ljava/util/Map;

    .line 802
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
    .line 791
    .local p1, "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mExtension:Ljava/util/Map;

    .line 792
    return-void
.end method

.method protected toJSON()Lorg/json/JSONObject;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 815
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 817
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "tp"

    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mType:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 818
    const-string/jumbo v2, "url"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 819
    const-string/jumbo v2, "size"

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mSize:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 820
    const-string/jumbo v2, "customType"

    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mCustomType:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 822
    const-string/jumbo v2, "ext"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mExtension:Ljava/util/Map;

    invoke-static {v3}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {v3}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 823
    const-string/jumbo v2, "auth"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mAuthMediaParamMap:Ljava/util/Map;

    invoke-static {v3}, Lieb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 824
    const-string/jumbo v2, "nick_map"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mNickMap:Ljava/util/Map;

    invoke-static {v3}, Lieb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 825
    const-string/jumbo v2, "enhanced_extension"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->mEnhancedExtension:Ljava/util/Map;

    invoke-static {v3}, Lieb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    .end local v1    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 827
    .restart local v1    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 828
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 830
    const/4 v1, 0x0

    goto :goto_0
.end method
