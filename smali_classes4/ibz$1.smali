.class final Libz$1;
.super Lhzy;
.source "MessageRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Libz;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/SendResultModel;",
        "Lcom/alibaba/wukong/im/message/MessageImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/message/MessageImpl;

.field final synthetic b:Libz;


# direct methods
.method constructor <init>(Libz;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/message/MessageImpl;)V
    .locals 0
    .param p1, "this$0"    # Libz;

    .prologue
    .line 67
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    iput-object p1, p0, Libz$1;->b:Libz;

    iput-object p3, p0, Libz$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 67
    check-cast p1, Lcom/alibaba/wukong/idl/im/models/SendResultModel;

    .line 1071
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1072
    :cond_0
    iget-object v0, p0, Libz$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, p1, Lcom/alibaba/wukong/idl/im/models/SendResultModel;->messageId:Ljava/lang/Long;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    .line 1073
    iget-object v0, p0, Libz$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, p1, Lcom/alibaba/wukong/idl/im/models/SendResultModel;->createdAt:Ljava/lang/Long;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    .line 1074
    iget-object v0, p0, Libz$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, p0, Libz$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-wide v2, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    iput-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastModify:J

    .line 1075
    iget-object v0, p0, Libz$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    .line 1076
    iget-object v0, p1, Lcom/alibaba/wukong/idl/im/models/SendResultModel;->model:Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;

    .line 1077
    if-eqz v0, :cond_1

    .line 1078
    iget-object v0, p0, Libz$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, p1, Lcom/alibaba/wukong/idl/im/models/SendResultModel;->model:Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;->unReadCount:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    .line 1079
    iget-object v0, p0, Libz$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, p1, Lcom/alibaba/wukong/idl/im/models/SendResultModel;->model:Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;->totalCount:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mTotalCount:I

    .line 1081
    :cond_1
    iget-object v0, p0, Libz$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    goto :goto_0
.end method
