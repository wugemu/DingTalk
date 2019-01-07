.class public Lcom/alibaba/android/search/model/MsgModel;
.super Lcom/alibaba/android/search/model/BaseModel;
.source "MsgModel.java"

# interfaces
.implements Ldcr;


# static fields
.field private static final IS_DEBUG_TITLE_OPEN:Z


# instance fields
.field private mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field private mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

.field private mIsMerge:Z

.field private mIsMixed:Z

.field private mMediaIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/SearchUserIconObject;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

.field private mMsgNarrowModel:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

.field private mName:Ljava/lang/String;

.field private mUserMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/util/Map;Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p3, "msgNarrowModel"    # Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;
    .param p4, "keyword"    # Ljava/lang/String;
    .param p5, "isMerge"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p2, "userMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 257
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;-><init>()V

    .line 88
    iput-boolean v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mIsMerge:Z

    .line 90
    iput-boolean v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mIsMixed:Z

    .line 258
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Msg:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/MsgModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 259
    iput-object p1, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 260
    iput-object p2, p0, Lcom/alibaba/android/search/model/MsgModel;->mUserMap:Ljava/util/Map;

    .line 261
    iput-object p3, p0, Lcom/alibaba/android/search/model/MsgModel;->mMsgNarrowModel:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .line 262
    iput-object p4, p0, Lcom/alibaba/android/search/model/MsgModel;->mKeyword:Ljava/lang/String;

    .line 263
    iput-boolean p5, p0, Lcom/alibaba/android/search/model/MsgModel;->mIsMerge:Z

    .line 264
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;Ljava/util/Map;Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;Ljava/lang/String;)V
    .locals 1
    .param p1, "groupMessageObject"    # Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;
    .param p3, "msgNarrowModel"    # Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;
    .param p4, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "userMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 275
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;-><init>()V

    .line 88
    iput-boolean v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mIsMerge:Z

    .line 90
    iput-boolean v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mIsMixed:Z

    .line 276
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Msg:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/MsgModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 277
    iput-object p2, p0, Lcom/alibaba/android/search/model/MsgModel;->mUserMap:Ljava/util/Map;

    .line 278
    iput-object p1, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    .line 279
    iput-object p3, p0, Lcom/alibaba/android/search/model/MsgModel;->mMsgNarrowModel:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .line 280
    iput-object p4, p0, Lcom/alibaba/android/search/model/MsgModel;->mKeyword:Ljava/lang/String;

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mIsMerge:Z

    .line 282
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/search/model/idl/objects/MessageObject;Ljava/util/Map;Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;Ljava/lang/String;)V
    .locals 2
    .param p1, "messageObject"    # Lcom/alibaba/android/search/model/idl/objects/MessageObject;
    .param p3, "msgNarrowModel"    # Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;
    .param p4, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/search/model/idl/objects/MessageObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "userMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .line 266
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;-><init>()V

    .line 88
    iput-boolean v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mIsMerge:Z

    .line 90
    iput-boolean v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mIsMixed:Z

    .line 267
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Msg:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/MsgModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 268
    iput-object p1, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    .line 269
    iput-object p2, p0, Lcom/alibaba/android/search/model/MsgModel;->mUserMap:Ljava/util/Map;

    .line 270
    iput-object p3, p0, Lcom/alibaba/android/search/model/MsgModel;->mMsgNarrowModel:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .line 271
    iput-object p4, p0, Lcom/alibaba/android/search/model/MsgModel;->mKeyword:Ljava/lang/String;

    .line 272
    iput-boolean v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mIsMerge:Z

    .line 273
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/search/model/MsgModel;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/model/MsgModel;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/model/MsgModel;->toConversation(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/android/search/model/MsgModel;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/model/MsgModel;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/android/search/model/MsgModel;)Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/model/MsgModel;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mMsgNarrowModel:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    return-object v0
.end method

.method private getFinalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 305
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-eq v0, v1, :cond_0

    .line 310
    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "name":Ljava/lang/String;
    :cond_0
    iget-object p1, p0, Lcom/alibaba/android/search/model/MsgModel;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method private getMessage(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 6
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/wukong/im/Message;>;"
    const-wide/16 v4, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/MsgModel;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 167
    .local v2, "tag":Ljava/lang/Object;
    instance-of v3, v2, Lcom/alibaba/wukong/im/Message;

    if-eqz v3, :cond_0

    .line 168
    check-cast v2, Lcom/alibaba/wukong/im/Message;

    .end local v2    # "tag":Ljava/lang/Object;
    invoke-interface {p3, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 220
    :goto_0
    return-void

    .line 172
    .restart local v2    # "tag":Ljava/lang/Object;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 173
    :cond_1
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "mid = "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", cid = "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/android/search/model/MsgModel;->trace(Ljava/lang/String;)V

    goto :goto_0

    .line 3109
    :cond_2
    invoke-static {p1, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 178
    .local v0, "mid":J
    cmp-long v3, v0, v4

    if-gtz v3, :cond_3

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mid <= 0, while cid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/android/search/model/MsgModel;->trace(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_3
    const-class v3, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v4, Lcom/alibaba/android/search/model/MsgModel$1;

    invoke-direct {v4, p0, v0, v1, p3}, Lcom/alibaba/android/search/model/MsgModel$1;-><init>(Lcom/alibaba/android/search/model/MsgModel;JLcma;)V

    invoke-interface {v3, v4, p2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getMessageFromGroup(Lcma;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 247
    .local p1, "listener":Lcma;, "Lcma<Lcom/alibaba/wukong/im/Message;>;"
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    iget-object v4, v4, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->content:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 248
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 250
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    invoke-interface {p1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 251
    return-void
.end method

.method private getMessageFromLocalSearchUnChecked(Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 223
    .local p1, "listener":Lcma;, "Lcma<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    .line 224
    .local v0, "conversationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 225
    const-string/jumbo v1, "conversationMap = null"

    invoke-static {v1}, Lcom/alibaba/android/search/model/MsgModel;->trace(Ljava/lang/String;)V

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string/jumbo v1, "mid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "cid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Lcom/alibaba/android/search/model/MsgModel;->getMessage(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method private getMessageFromSvrSearchUnchecked(Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 232
    .local p1, "listener":Lcma;, "Lcma<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    if-nez v0, :cond_0

    .line 234
    const-string/jumbo v0, "getMessageFromSvrSearchUnChecked while mMessageObject = null and mGroupMessageObject = null"

    invoke-static {v0}, Lcom/alibaba/android/search/model/MsgModel;->trace(Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/model/MsgModel;->getMessageFromGroup(Lcma;)V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    iget-object v0, v0, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->messageId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    iget-object v1, v1, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->cid:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/search/model/MsgModel;->getMessage(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method private processUserData(J)V
    .locals 5
    .param p1, "uid"    # J

    .prologue
    .line 568
    iget-object v2, p0, Lcom/alibaba/android/search/model/MsgModel;->mUserMap:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/search/model/MsgModel;->mUserMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 573
    .local v0, "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 577
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/search/model/MsgModel;->mMediaIdList:Ljava/util/List;

    .line 578
    new-instance v1, Lcom/alibaba/android/search/SearchUserIconObject;

    invoke-direct {v1}, Lcom/alibaba/android/search/SearchUserIconObject;-><init>()V

    .line 579
    .local v1, "userIconObject":Lcom/alibaba/android/search/SearchUserIconObject;
    const-string/jumbo v2, "avatarMediaId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/search/SearchUserIconObject;->mediaId:Ljava/lang/String;

    .line 580
    const-string/jumbo v2, "nick"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/search/SearchUserIconObject;->nick:Ljava/lang/String;

    .line 581
    iget-object v2, p0, Lcom/alibaba/android/search/model/MsgModel;->mMediaIdList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    const-string/jumbo v2, "nick"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/search/model/MsgModel;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method private toConversation(Landroid/app/Activity;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 477
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 478
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "anchor_id"

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/MsgModel;->getMid()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 479
    const-string/jumbo v1, "im_navigator_from"

    const-string/jumbo v2, "search_result"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/MsgModel;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 481
    return-void
.end method

.method private static trace(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    const-string/jumbo v0, "Search"

    const-string/jumbo v1, "MsgModel"

    invoke-static {v0, v1, p0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/SearchUserIconObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mMediaIdList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mMediaIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mMediaIdList:Ljava/util/List;

    .line 378
    :goto_0
    return-object v0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {v0}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mMediaIdList:Ljava/util/List;

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mMediaIdList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mMediaIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    iget-object v0, v0, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->mediaIdList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    iget-object v0, v0, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->mediaIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 370
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    iget-object v0, v0, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->mediaIdList:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mMediaIdList:Ljava/util/List;

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mMediaIdList:Ljava/util/List;

    goto :goto_0
.end method

.method public getCid()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 500
    const-string/jumbo v0, ""

    .line 501
    .local v0, "cid":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 502
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v2, "cid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cid":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 509
    .restart local v0    # "cid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 503
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    if-eqz v1, :cond_2

    .line 504
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    iget-object v0, v1, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->cid:Ljava/lang/String;

    goto :goto_0

    .line 505
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    iget-object v0, v1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->cid:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "count":I
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v2, "count"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4150
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 494
    :cond_0
    :goto_0
    return v0

    .line 488
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    if-eqz v1, :cond_2

    .line 489
    const/4 v0, 0x1

    goto :goto_0

    .line 490
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    iget v0, v1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->msgCount:I

    goto :goto_0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 383
    iget-boolean v3, p0, Lcom/alibaba/android/search/model/MsgModel;->mIsMerge:Z

    if-eqz v3, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-object v2

    .line 388
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/MsgModel;->getCreateTimestamp()J

    move-result-wide v0

    .line 389
    .local v0, "createTime":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 393
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcog;->a(JZZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getCreateTimestamp()J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 397
    const-wide/16 v0, 0x0

    .line 398
    .local v0, "createTime":J
    iget-object v2, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 399
    iget-object v2, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v3, "createdAt"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4109
    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 402
    :cond_0
    cmp-long v2, v0, v4

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    if-eqz v2, :cond_1

    .line 403
    iget-object v2, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    iget-wide v0, v2, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->timeStamp:J

    .line 405
    :cond_1
    return-wide v0
.end method

.method public getDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 335
    const-string/jumbo v0, ""

    .line 338
    .local v0, "desc":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->content:Ljava/lang/String;

    .line 343
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    iget-object v1, v1, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    iget-object v0, v1, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->content:Ljava/lang/String;

    .line 348
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    if-eqz v1, :cond_2

    .line 349
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    iget-object v0, v1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->content:Ljava/lang/String;

    .line 352
    :cond_2
    return-object v0
.end method

.method public getDisplayConversationObject()Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    return-object v0
.end method

.method public getGroupMessageObject()Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/MsgModel;->getCid()Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 620
    .end local v0    # "cid":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "cid":Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/search/model/BaseModel;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMessage(Lcma;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "listener":Lcma;, "Lcma<Lcom/alibaba/wukong/im/Message;>;"
    if-nez p1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/model/MsgModel;->getMessageFromLocalSearchUnChecked(Lcma;)V

    goto :goto_0

    .line 161
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/model/MsgModel;->getMessageFromSvrSearchUnchecked(Lcma;)V

    goto :goto_0
.end method

.method public getMessageObject()Lcom/alibaba/android/search/model/idl/objects/MessageObject;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->singleMsgContentType:I

    .line 100
    :goto_0
    return v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    iget v0, v0, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->contentType:I

    goto :goto_0

    .line 100
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMid()J
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 514
    const-wide/16 v2, 0x0

    .line 515
    .local v2, "mid":J
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 516
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v4, "mid"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5109
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 526
    :cond_0
    :goto_0
    return-wide v2

    .line 517
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    if-eqz v1, :cond_2

    .line 518
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    iget-object v1, v1, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->messageId:Ljava/lang/String;

    .line 6109
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 518
    goto :goto_0

    .line 519
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    iget-object v1, v1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->msgList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    iget-object v1, v1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->msgList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    iget-object v1, v1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->msgList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    .line 521
    .local v0, "messageObject":Lcom/alibaba/android/search/model/idl/objects/MessageObject;
    if-eqz v0, :cond_0

    .line 522
    iget-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->messageId:Ljava/lang/String;

    .line 7109
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 522
    goto :goto_0
.end method

.method public getMsgId()J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    .line 134
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    .line 136
    .local v0, "conversationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 137
    const-string/jumbo v1, "conversationMap = null"

    invoke-static {v1}, Lcom/alibaba/android/search/model/MsgModel;->trace(Ljava/lang/String;)V

    .line 146
    .end local v0    # "conversationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-wide v2

    .line 141
    .restart local v0    # "conversationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v1, "mid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1109
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_0

    .line 142
    .end local v0    # "conversationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    iget-object v1, v1, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->messageId:Ljava/lang/String;

    .line 2109
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/search/model/MsgModel;->getFinalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_0
    return-object v0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {v0}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mName:Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    iget-object v0, v0, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    iget-object v0, v0, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mName:Ljava/lang/String;

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/search/model/MsgModel;->getFinalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSearchContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->content:Ljava/lang/String;

    .line 130
    :goto_0
    return-object v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    iget-object v0, v0, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->content:Ljava/lang/String;

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    iget-object v0, v0, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->content:Ljava/lang/String;

    goto :goto_0

    .line 130
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public isMerge()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mIsMerge:Z

    return v0
.end method

.method public isMixed()Z
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/alibaba/android/search/model/MsgModel;->mIsMixed:Z

    return v0
.end method

.method public onClick(Landroid/app/Activity;Landroid/view/View;)V
    .locals 7
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 411
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel;->mKeyword:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    const-string/jumbo v1, "search_click_type"

    const-string/jumbo v2, "type=%s"

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "chatmsg"

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/MsgModel;->getCount()I

    move-result v0

    .line 418
    .local v0, "count":I
    if-gt v0, v5, :cond_2

    .line 421
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_search_check_message_exist"

    invoke-virtual {v1, v2, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/MsgModel;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/MsgModel;->getMid()J

    move-result-wide v4

    new-instance v3, Lcom/alibaba/android/search/model/MsgModel$2;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/search/model/MsgModel$2;-><init>(Lcom/alibaba/android/search/model/MsgModel;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;JLcma;)V

    .line 473
    :goto_1
    return-void

    .line 414
    .end local v0    # "count":I
    :cond_0
    const-string/jumbo v1, "search_click_type"

    const-string/jumbo v2, "type=%s,kw=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "chatmsg"

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/alibaba/android/search/model/MsgModel;->mKeyword:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 443
    .restart local v0    # "count":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/model/MsgModel;->toConversation(Landroid/app/Activity;)V

    goto :goto_1

    .line 446
    :cond_2
    invoke-static {p1, p2}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 447
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/search/msg_list.html"

    new-instance v3, Lcom/alibaba/android/search/model/MsgModel$3;

    invoke-direct {v3, p0, v0, p1}, Lcom/alibaba/android/search/model/MsgModel$3;-><init>(Lcom/alibaba/android/search/model/MsgModel;ILandroid/app/Activity;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_1
.end method

.method public processData()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 531
    iget-object v3, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/alibaba/android/search/model/MsgModel;->mIsMerge:Z

    if-eqz v3, :cond_1

    .line 535
    iget-object v3, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v4, "cid"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 536
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 537
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 538
    .local v1, "uid":Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 539
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/alibaba/android/search/model/MsgModel;->processUserData(J)V

    .line 564
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "uid":Ljava/lang/Long;
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/alibaba/android/search/model/MsgModel;->mIsMerge:Z

    if-nez v3, :cond_2

    .line 546
    iget-object v3, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v4, "senderId"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8109
    .local v2, "uidStr":Ljava/lang/String;
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 547
    invoke-direct {p0, v4, v5}, Lcom/alibaba/android/search/model/MsgModel;->processUserData(J)V

    goto :goto_0

    .line 548
    .end local v2    # "uidStr":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    if-eqz v3, :cond_3

    .line 552
    iget-object v3, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    iget-wide v4, v3, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->senderUid:J

    invoke-direct {p0, v4, v5}, Lcom/alibaba/android/search/model/MsgModel;->processUserData(J)V

    goto :goto_0

    .line 553
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    if-eqz v3, :cond_0

    .line 557
    iget-object v3, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    iget-object v3, v3, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->cid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    iget-object v3, v3, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->cid:Ljava/lang/String;

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 558
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/search/model/MsgModel;->mGroupMessageObject:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    iget-object v4, v4, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->cid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 559
    .restart local v1    # "uid":Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 560
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/alibaba/android/search/model/MsgModel;->processUserData(J)V

    goto :goto_0
.end method

.method public setDisplayConversationObject(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 0
    .param p1, "displayConversationObject"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/alibaba/android/search/model/MsgModel;->mDisplayConversationObject:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 607
    return-void
.end method

.method public setMessageObject(Lcom/alibaba/android/search/model/idl/objects/MessageObject;)V
    .locals 0
    .param p1, "messageObject"    # Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/alibaba/android/search/model/MsgModel;->mMessageObject:Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    .line 611
    return-void
.end method

.method public setMixed(Z)V
    .locals 0
    .param p1, "isMixed"    # Z

    .prologue
    .line 594
    iput-boolean p1, p0, Lcom/alibaba/android/search/model/MsgModel;->mIsMixed:Z

    .line 595
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alibaba/android/search/model/MsgModel;->tag:Ljava/lang/Object;

    .line 119
    return-void
.end method
