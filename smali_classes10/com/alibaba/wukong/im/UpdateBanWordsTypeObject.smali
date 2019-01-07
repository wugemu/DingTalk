.class public Lcom/alibaba/wukong/im/UpdateBanWordsTypeObject;
.super Ljava/lang/Object;
.source "UpdateBanWordsTypeObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public banWordsType:I

.field public conversationId:Ljava/lang/String;

.field public sendMessage:Lcom/alibaba/wukong/im/Message;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toModel()Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsTypeModel;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 22
    new-instance v0, Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsTypeModel;

    invoke-direct {v0}, Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsTypeModel;-><init>()V

    .line 23
    .local v0, "model":Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsTypeModel;
    iget-object v1, p0, Lcom/alibaba/wukong/im/UpdateBanWordsTypeObject;->conversationId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsTypeModel;->conversationId:Ljava/lang/String;

    .line 24
    iget v1, p0, Lcom/alibaba/wukong/im/UpdateBanWordsTypeObject;->banWordsType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsTypeModel;->banWordsType:Ljava/lang/Integer;

    .line 25
    iget-object v1, p0, Lcom/alibaba/wukong/im/UpdateBanWordsTypeObject;->sendMessage:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/wukong/im/UpdateBanWordsTypeObject;->sendMessage:Lcom/alibaba/wukong/im/Message;

    instance-of v1, v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/alibaba/wukong/im/UpdateBanWordsTypeObject;->sendMessage:Lcom/alibaba/wukong/im/Message;

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {v1}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/idl/im/models/SendMessageModel;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsTypeModel;->sendMessageModel:Lcom/alibaba/wukong/idl/im/models/SendMessageModel;

    .line 27
    iget-object v1, v0, Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsTypeModel;->sendMessageModel:Lcom/alibaba/wukong/idl/im/models/SendMessageModel;

    iget-object v2, p0, Lcom/alibaba/wukong/im/UpdateBanWordsTypeObject;->conversationId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->conversationId:Ljava/lang/String;

    .line 29
    :cond_0
    return-object v0
.end method
