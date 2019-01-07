.class public Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;
.super Ljava/lang/Object;
.source "SecretMsgReadStatusObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final STATUS_READ:I = 0x2

.field private static final serialVersionUID:J = 0x4787684c6a17259aL


# instance fields
.field public msgId:J

.field public readStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcom/alibaba/wukong/idl/im/models/SecretMsgReadStatusModel;)Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;
    .locals 6
    .param p0, "model"    # Lcom/alibaba/wukong/idl/im/models/SecretMsgReadStatusModel;

    .prologue
    .line 31
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/SecretMsgReadStatusModel;->msgId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 34
    :cond_1
    new-instance v0, Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;-><init>()V

    .line 35
    .local v0, "object":Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/SecretMsgReadStatusModel;->msgId:Ljava/lang/Long;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;->msgId:J

    .line 36
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/SecretMsgReadStatusModel;->readStatus:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;->readStatus:I

    goto :goto_0
.end method

.method public static fromIdlList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/SecretMsgReadStatusModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/SecretMsgReadStatusModel;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    :cond_0
    const/4 v2, 0x0

    .line 52
    :cond_1
    return-object v2

    .line 45
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v2, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/SecretMsgReadStatusModel;

    .line 47
    .local v0, "model":Lcom/alibaba/wukong/idl/im/models/SecretMsgReadStatusModel;
    invoke-static {v0}, Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;->fromIdl(Lcom/alibaba/wukong/idl/im/models/SecretMsgReadStatusModel;)Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;

    move-result-object v1

    .line 48
    .local v1, "object":Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;
    if-eqz v1, :cond_3

    .line 49
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public hasRead()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    iget v0, p0, Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;->readStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SecretMsgReadStatusObject{msgId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;->msgId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", readStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;->readStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
