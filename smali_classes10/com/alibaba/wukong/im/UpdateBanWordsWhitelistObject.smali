.class public Lcom/alibaba/wukong/im/UpdateBanWordsWhitelistObject;
.super Ljava/lang/Object;
.source "UpdateBanWordsWhitelistObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public add:Z

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
.method public toModel()Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsWhitelistModel;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 26
    new-instance v0, Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsWhitelistModel;

    invoke-direct {v0}, Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsWhitelistModel;-><init>()V

    .line 27
    .local v0, "model":Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsWhitelistModel;
    iget-object v1, p0, Lcom/alibaba/wukong/im/UpdateBanWordsWhitelistObject;->conversationId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsWhitelistModel;->conversationId:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/alibaba/wukong/im/UpdateBanWordsWhitelistObject;->openIds:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/wukong/im/UpdateBanWordsWhitelistObject;->openIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/wukong/im/UpdateBanWordsWhitelistObject;->openIds:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsWhitelistModel;->openIds:Ljava/util/List;

    .line 31
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/wukong/im/UpdateBanWordsWhitelistObject;->add:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsWhitelistModel;->type:Ljava/lang/Integer;

    .line 32
    iget-object v1, p0, Lcom/alibaba/wukong/im/UpdateBanWordsWhitelistObject;->sendMessage:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/wukong/im/UpdateBanWordsWhitelistObject;->sendMessage:Lcom/alibaba/wukong/im/Message;

    instance-of v1, v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    if-eqz v1, :cond_1

    .line 33
    iget-object v1, p0, Lcom/alibaba/wukong/im/UpdateBanWordsWhitelistObject;->sendMessage:Lcom/alibaba/wukong/im/Message;

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {v1}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/idl/im/models/SendMessageModel;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsWhitelistModel;->sendMessageModel:Lcom/alibaba/wukong/idl/im/models/SendMessageModel;

    .line 34
    iget-object v1, v0, Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsWhitelistModel;->sendMessageModel:Lcom/alibaba/wukong/idl/im/models/SendMessageModel;

    iget-object v2, p0, Lcom/alibaba/wukong/im/UpdateBanWordsWhitelistObject;->conversationId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->conversationId:Ljava/lang/String;

    .line 36
    :cond_1
    return-object v0

    .line 31
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
