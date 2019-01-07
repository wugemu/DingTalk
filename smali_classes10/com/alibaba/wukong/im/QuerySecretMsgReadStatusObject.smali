.class public Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;
.super Ljava/lang/Object;
.source "QuerySecretMsgReadStatusObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4787684c6a17259aL


# instance fields
.field public msgId:J

.field public openId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toModel(Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;)Lcom/alibaba/wukong/idl/im/models/QuerySecretMsgReadStatusModel;
    .locals 6
    .param p0, "object"    # Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;

    .prologue
    const-wide/16 v4, 0x0

    .line 22
    if-eqz p0, :cond_0

    iget-wide v2, p0, Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;->msgId:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-wide v2, p0, Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;->openId:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    .line 25
    :cond_1
    new-instance v0, Lcom/alibaba/wukong/idl/im/models/QuerySecretMsgReadStatusModel;

    invoke-direct {v0}, Lcom/alibaba/wukong/idl/im/models/QuerySecretMsgReadStatusModel;-><init>()V

    .line 26
    .local v0, "model":Lcom/alibaba/wukong/idl/im/models/QuerySecretMsgReadStatusModel;
    iget-wide v2, p0, Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;->msgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/QuerySecretMsgReadStatusModel;->msgId:Ljava/lang/Long;

    .line 27
    iget-wide v2, p0, Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;->openId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/QuerySecretMsgReadStatusModel;->openId:Ljava/lang/Long;

    goto :goto_0
.end method

.method public static toModelList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/QuerySecretMsgReadStatusModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 42
    :cond_1
    return-object v0

    .line 35
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/QuerySecretMsgReadStatusModel;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;

    .line 37
    .local v2, "object":Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;
    invoke-static {v2}, Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;->toModel(Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;)Lcom/alibaba/wukong/idl/im/models/QuerySecretMsgReadStatusModel;

    move-result-object v1

    .line 38
    .local v1, "model":Lcom/alibaba/wukong/idl/im/models/QuerySecretMsgReadStatusModel;
    if-eqz v1, :cond_3

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "QuerySecretMsgReadStatusObject{msgId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;->msgId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", openId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;->openId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
