.class public Lcom/taobao/ma/model/RecognizeResponseObject;
.super Ljava/lang/Object;
.source "RecognizeResponseObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5c02ddcbf8799984L


# instance fields
.field public mediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public results:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/ma/model/CardInfoObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Ljnb;)Lcom/taobao/ma/model/RecognizeResponseObject;
    .locals 5
    .param p0, "model"    # Ljnb;

    .prologue
    .line 48
    if-nez p0, :cond_1

    .line 49
    const/4 v1, 0x0

    .line 60
    :cond_0
    return-object v1

    .line 52
    :cond_1
    new-instance v1, Lcom/taobao/ma/model/RecognizeResponseObject;

    invoke-direct {v1}, Lcom/taobao/ma/model/RecognizeResponseObject;-><init>()V

    .line 53
    .local v1, "object":Lcom/taobao/ma/model/RecognizeResponseObject;
    iget-object v2, p0, Ljnb;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ljnb;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lcom/taobao/ma/model/RecognizeResponseObject;->results:Ljava/util/List;

    .line 56
    iget-object v2, p0, Ljnb;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljmz;

    .line 57
    .local v0, "card":Ljmz;
    iget-object v3, v1, Lcom/taobao/ma/model/RecognizeResponseObject;->results:Ljava/util/List;

    invoke-static {v0}, Lcom/taobao/ma/model/CardInfoObject;->fromIDLModel(Ljmz;)Lcom/taobao/ma/model/CardInfoObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public toIDLModel()Ljnb;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    new-instance v0, Ljnb;

    invoke-direct {v0}, Ljnb;-><init>()V

    .line 66
    .local v0, "model":Ljnb;
    iget-object v2, p0, Lcom/taobao/ma/model/RecognizeResponseObject;->results:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/taobao/ma/model/RecognizeResponseObject;->results:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/taobao/ma/model/RecognizeResponseObject;->results:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Ljnb;->a:Ljava/util/List;

    .line 69
    iget-object v2, p0, Lcom/taobao/ma/model/RecognizeResponseObject;->results:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/ma/model/CardInfoObject;

    .line 70
    .local v1, "object":Lcom/taobao/ma/model/CardInfoObject;
    iget-object v3, v0, Ljnb;->a:Ljava/util/List;

    invoke-virtual {v1}, Lcom/taobao/ma/model/CardInfoObject;->toIDLModel()Ljmz;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    .end local v1    # "object":Lcom/taobao/ma/model/CardInfoObject;
    :cond_0
    return-object v0
.end method
