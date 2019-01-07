.class final Liav$53;
.super Lhzy;
.source "ConversationRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Ljava/lang/String;",
        "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;

.field final synthetic b:Liav;


# direct methods
.method constructor <init>(Liav;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;)V
    .locals 0
    .param p1, "this$0"    # Liav;

    .prologue
    .line 407
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    iput-object p1, p0, Liav$53;->b:Liav;

    iput-object p3, p0, Liav$53;->a:Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;

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
    const/4 v2, 0x1

    .line 407
    check-cast p1, Ljava/lang/String;

    .line 1410
    invoke-virtual {p0}, Liav$53;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzs;->b(Ljava/lang/String;)V

    .line 1411
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;-><init>()V

    .line 1412
    iput-object p1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    .line 1413
    iget-object v1, p0, Liav$53;->a:Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->openIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTotalMemberCount:I

    .line 1414
    iget-object v1, p0, Liav$53;->a:Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->type:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Liav$53;->a:Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1415
    iput v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    .line 1418
    :goto_0
    iget-object v1, p0, Liav$53;->a:Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitle:Ljava/lang/String;

    .line 1419
    iget-object v1, p0, Liav$53;->a:Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->icon:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIcon:Ljava/lang/String;

    .line 1420
    invoke-static {}, Liaf;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCreateAt:J

    .line 1421
    iget-object v1, p0, Liav$53;->a:Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->tag:Ljava/lang/Long;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTag:J

    .line 1422
    iget-object v1, p0, Liav$53;->a:Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->extension:Ljava/util/Map;

    invoke-static {v1}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1423
    iget-object v1, p0, Liav$53;->a:Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->iconOption:Lcom/alibaba/wukong/idl/im/models/IconOptionModel;

    if-eqz v1, :cond_0

    .line 1424
    iget-object v1, p0, Liav$53;->a:Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->iconOption:Lcom/alibaba/wukong/idl/im/models/IconOptionModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->type:Ljava/lang/Integer;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIconType:I

    .line 1425
    iget v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIconType:I

    sget-object v2, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->AUTOMATIC:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->typeValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1426
    iget-object v1, p0, Liav$53;->a:Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->iconOption:Lcom/alibaba/wukong/idl/im/models/IconOptionModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->automaticIcon:Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;

    .line 1427
    if-eqz v1, :cond_0

    .line 1428
    iget-object v2, v1, Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;->automaticIconMediaId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIcon:Ljava/lang/String;

    .line 1429
    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;->automaticIconTag:Ljava/lang/Long;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIconTag:J

    .line 1438
    :cond_0
    :goto_1
    iget-object v1, p0, Liav$53;->a:Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->showHistoryType:Ljava/lang/Integer;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mShowHistoryType:I

    .line 407
    return-object v0

    .line 1417
    :cond_1
    const/4 v1, 0x2

    iput v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    goto :goto_0

    .line 1432
    :cond_2
    iget-object v1, p0, Liav$53;->a:Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->iconOption:Lcom/alibaba/wukong/idl/im/models/IconOptionModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->customIcon:Lcom/alibaba/wukong/idl/im/models/CustomIconModel;

    .line 1433
    if-eqz v1, :cond_0

    .line 1434
    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/CustomIconModel;->customIconMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIcon:Ljava/lang/String;

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 444
    invoke-super {p0, p1, p2}, Lhzy;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0}, Liav$53;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, p1, v1}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-void
.end method
