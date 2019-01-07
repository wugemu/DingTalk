.class public Lcom/alibaba/wukong/im/UpdateBanWordsBlacklistObject;
.super Ljava/lang/Object;
.source "UpdateBanWordsBlacklistObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public add:Z

.field public banWordsTime:J

.field public conversationId:Ljava/lang/String;

.field public openIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public sendMessage:Lcom/alibaba/wukong/im/Message;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toModel()Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsBlacklistModel;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    new-instance v0, Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsBlacklistModel;

    invoke-direct {v0}, Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsBlacklistModel;-><init>()V

    .line 29
    .local v0, "model":Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsBlacklistModel;
    iget-object v1, p0, Lcom/alibaba/wukong/im/UpdateBanWordsBlacklistObject;->conversationId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsBlacklistModel;->conversationId:Ljava/lang/String;

    .line 30
    iget-object v1, p0, Lcom/alibaba/wukong/im/UpdateBanWordsBlacklistObject;->openIds:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/wukong/im/UpdateBanWordsBlacklistObject;->openIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/wukong/im/UpdateBanWordsBlacklistObject;->openIds:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsBlacklistModel;->openIds:Ljava/util/List;

    .line 33
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/wukong/im/UpdateBanWordsBlacklistObject;->add:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsBlacklistModel;->type:Ljava/lang/Integer;

    .line 34
    iget-wide v2, p0, Lcom/alibaba/wukong/im/UpdateBanWordsBlacklistObject;->banWordsTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsBlacklistModel;->banWordsTime:Ljava/lang/Long;

    .line 35
    iget-object v1, p0, Lcom/alibaba/wukong/im/UpdateBanWordsBlacklistObject;->sendMessage:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/wukong/im/UpdateBanWordsBlacklistObject;->sendMessage:Lcom/alibaba/wukong/im/Message;

    instance-of v1, v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    if-eqz v1, :cond_1

    .line 36
    iget-object v1, p0, Lcom/alibaba/wukong/im/UpdateBanWordsBlacklistObject;->sendMessage:Lcom/alibaba/wukong/im/Message;

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {v1}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/idl/im/models/SendMessageModel;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsBlacklistModel;->sendMessageModel:Lcom/alibaba/wukong/idl/im/models/SendMessageModel;

    .line 37
    iget-object v1, v0, Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsBlacklistModel;->sendMessageModel:Lcom/alibaba/wukong/idl/im/models/SendMessageModel;

    iget-object v2, p0, Lcom/alibaba/wukong/im/UpdateBanWordsBlacklistObject;->conversationId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->conversationId:Ljava/lang/String;

    .line 39
    :cond_1
    return-object v0

    .line 33
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
