.class public Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;
.super Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;
.source "MessageContentImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$LinkedContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/message/MessageContentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkedContentImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x42b18d17527e3584L


# instance fields
.field private mPicUrl:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "picUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 669
    .local p5, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v0, 0x66

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;-><init>(ILjava/lang/String;J)V

    .line 670
    iput-object p2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mTitle:Ljava/lang/String;

    .line 671
    iput-object p3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mText:Ljava/lang/String;

    .line 672
    iput-object p4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mPicUrl:Ljava/lang/String;

    .line 673
    iput-object p5, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mExtension:Ljava/util/Map;

    .line 674
    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 659
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;

    move-result-object v0

    return-object v0
.end method

.method private static fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;
    .locals 6
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 733
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 739
    :goto_0
    return-object v0

    .line 734
    :cond_0
    const-string/jumbo v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, "url":Ljava/lang/String;
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 736
    .local v2, "title":Ljava/lang/String;
    const-string/jumbo v0, "txt"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 737
    .local v3, "text":Ljava/lang/String;
    const-string/jumbo v0, "picUrl"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 738
    .local v4, "picUrl":Ljava/lang/String;
    const-string/jumbo v0, "ext"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lieb;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 739
    .local v5, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic cloneContent()Lcom/alibaba/wukong/im/MessageContent;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;

    move-result-object v0

    return-object v0
.end method

.method public cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 743
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mExtension:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v5, 0x0

    .line 744
    .local v5, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mText:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mPicUrl:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0

    .line 743
    .end local v5    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mExtension:Ljava/util/Map;

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
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
    .line 708
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mExtension:Ljava/util/Map;

    return-object v0
.end method

.method public picUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mPicUrl:Ljava/lang/String;

    return-object v0
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
    .line 713
    .local p1, "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mExtension:Ljava/util/Map;

    .line 714
    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mPicUrl:Ljava/lang/String;

    .line 704
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 693
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mText:Ljava/lang/String;

    .line 694
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mTitle:Ljava/lang/String;

    .line 684
    return-void
.end method

.method public text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected toJSON()Lorg/json/JSONObject;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 717
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 719
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "tp"

    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mType:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 720
    const-string/jumbo v2, "url"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 721
    const-string/jumbo v2, "txt"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 722
    const-string/jumbo v2, "title"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 723
    const-string/jumbo v2, "picUrl"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mPicUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 724
    const-string/jumbo v2, "ext"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->mExtension:Ljava/util/Map;

    invoke-static {v3}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {v3}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    .end local v1    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 726
    .restart local v1    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 729
    const/4 v1, 0x0

    goto :goto_0
.end method
