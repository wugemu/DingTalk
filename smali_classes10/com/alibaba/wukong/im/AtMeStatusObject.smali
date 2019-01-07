.class public Lcom/alibaba/wukong/im/AtMeStatusObject;
.super Ljava/lang/Object;
.source "AtMeStatusObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final READ:I = 0x2

.field public static final UNREAD:I = 0x1

.field private static final serialVersionUID:J = -0x77868c8aac719557L


# instance fields
.field public openId:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "openId"
    .end annotation
.end field

.field public readStatus:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "readStatus"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcom/alibaba/wukong/idl/im/models/AtMsgStatusModel;)Lcom/alibaba/wukong/im/AtMeStatusObject;
    .locals 4
    .param p0, "model"    # Lcom/alibaba/wukong/idl/im/models/AtMsgStatusModel;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/AtMeStatusObject;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/AtMeStatusObject;-><init>()V

    .line 35
    .local v0, "object":Lcom/alibaba/wukong/im/AtMeStatusObject;
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/AtMsgStatusModel;->openId:Ljava/lang/Long;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/AtMeStatusObject;->openId:J

    .line 36
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/AtMsgStatusModel;->status:Ljava/lang/Integer;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/wukong/im/AtMeStatusObject;->readStatus:I

    goto :goto_0
.end method

.method public static fromIdlList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/AtMsgStatusModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/AtMeStatusObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AtMsgStatusModel;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    :cond_0
    const/4 v2, 0x0

    .line 54
    :cond_1
    return-object v2

    .line 46
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v2, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/AtMeStatusObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/AtMsgStatusModel;

    .line 48
    .local v0, "model":Lcom/alibaba/wukong/idl/im/models/AtMsgStatusModel;
    invoke-static {v0}, Lcom/alibaba/wukong/im/AtMeStatusObject;->fromIdl(Lcom/alibaba/wukong/idl/im/models/AtMsgStatusModel;)Lcom/alibaba/wukong/im/AtMeStatusObject;

    move-result-object v1

    .line 49
    .local v1, "object":Lcom/alibaba/wukong/im/AtMeStatusObject;
    if-eqz v1, :cond_3

    .line 50
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
