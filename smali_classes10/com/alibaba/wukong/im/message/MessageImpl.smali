.class public Lcom/alibaba/wukong/im/message/MessageImpl;
.super Ljava/lang/Object;
.source "MessageImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;
    }
.end annotation


# static fields
.field private static final EXTENSION_KEY_IS_FORWARD:Ljava/lang/String; = "isForwardMsg"

.field public static final EXTENSION_KEY_SENDER_NAME:Ljava/lang/String; = "sender_name"

.field private static final EXTENSION_VALUE_IS_FORWARD:Ljava/lang/String; = "1"

.field public static final FLAG_COMPENSATE:I = 0x8

.field public static final FLAG_HAS_GAP_AFTER:I = 0x4

.field public static final FLAG_HAS_GAP_BEFORE:I = 0x2

.field public static final FLAG_IS_FIRST:I = 0x1

.field public static final FLAG_NORMAL:I = 0x0

.field public static final FLAG_SHIELD:I = 0x1

.field private static final RECALL_LIMIT_TIME:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "MessageImpl"

.field static sEncryptHelper:Lcom/alibaba/wukong/im/EncryptHelper; = null

.field static sProxy:Lcom/alibaba/wukong/im/MessageProxy; = null

.field private static final serialVersionUID:J = 0x62b682bf02abe4ecL


# instance fields
.field public mAtMeStatusObjects:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/alibaba/wukong/im/AtMeStatusObject;",
            ">;"
        }
    .end annotation
.end field

.field public mAtOpenIdExObjectList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/alibaba/wukong/im/OpenIdExObject;",
            ">;"
        }
    .end annotation
.end field

.field public mAtOpenIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public transient mController:Libq;

.field public mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

.field public mCreatedAt:J

.field public mCreatorType:Lcom/alibaba/wukong/im/Message$CreatorType;

.field public mEncryptContent:Lcom/alibaba/wukong/im/MessageContent;

.field public volatile mEncryptStatus:I

.field public mExcludeUids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mExtension:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mFlag:I

.field public mIsRead:Z

.field public mLastModify:J

.field public mLastUpdateUnreadCount:J

.field public mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLocalId:Ljava/lang/String;

.field public mMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

.field public mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

.field public mMessageType:Lcom/alibaba/wukong/im/Message$MessageType;

.field public mMid:J

.field public mPassMode:Z

.field public mPriority:I

.field public mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPrivateTag:J

.field public mRecallStatus:I

.field public mReceiverUids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mSendProgress:I

.field public mSenderId:J

.field public mSenderVersion:J

.field public mSentLocalTime:J

.field public mShieldStatus:I

.field public mTag:J

.field public mTemplateId:I

.field public mTotalCount:I

.field public mUnreadCount:I

.field public transient mUploadController:Lifu;

.field public mViewStatus:I

.field public mXPNInfo:Lcom/alibaba/wukong/im/XPNInfo;

.field public senderName:Ljava/lang/String;

.field public transient statSize:I


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalId:Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/alibaba/wukong/im/Message$MessageStatus;->OFFLINE:Lcom/alibaba/wukong/im/Message$MessageStatus;

    iput-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    .line 123
    iput v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSendProgress:I

    .line 148
    iput-boolean v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mPassMode:Z

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/lang/String;Lcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/VideoCompress;
    .param p3, "x3"    # Lcom/alibaba/wukong/im/Uploader;
    .param p4, "x4"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/wukong/im/message/MessageImpl;->doSendByMsgType(Ljava/lang/String;Lcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/wukong/im/message/MessageImpl;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/wukong/im/message/MessageImpl;->commitRateSuccess(IJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/wukong/im/message/MessageImpl;ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # J
    .param p6, "x5"    # J

    .prologue
    .line 66
    invoke-direct/range {p0 .. p7}, Lcom/alibaba/wukong/im/message/MessageImpl;->commitRateFail(ILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/wukong/im/message/MessageImpl;Lhzs$a;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p1, "x1"    # Lhzs$a;
    .param p2, "x2"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->endStatistics(Lhzs$a;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/alibaba/wukong/im/VideoCompress;
    .param p4, "x4"    # Lcom/alibaba/wukong/im/Uploader;
    .param p5, "x5"    # Lcom/alibaba/wukong/im/SendNameAppender;
    .param p6, "x6"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 66
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/wukong/im/message/MessageImpl;->sendMsg(Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/wukong/im/message/MessageImpl;)Liaq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    move-result-object v0

    return-object v0
.end method

.method public static checkAndSave(Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/lang/String;)V
    .locals 6
    .param p0, "msg"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 765
    const/4 v1, 0x0

    .line 767
    .local v1, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v2, "[TAG] Msg"

    .line 23014
    const-string/jumbo v3, "im"

    invoke-static {v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v1

    .line 769
    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageType:Lcom/alibaba/wukong/im/Message$MessageType;

    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v2, v3, :cond_0

    .line 771
    invoke-static {}, Lcom/alibaba/wukong/im/message/MessageImpl;->newInstance()Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v0

    .line 772
    .local v0, "forkMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/message/MessageImpl;Z)V

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checkAndSave encrypt message mid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhzv;->a(Ljava/lang/String;)V

    .line 774
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->encrypt()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 775
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checkAndSave encrypt message mid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " success."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhzv;->a(Ljava/lang/String;)V

    .line 776
    iget-object v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    iput-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptContent:Lcom/alibaba/wukong/im/MessageContent;

    .line 777
    iget-object v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 778
    iget-object v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mXPNInfo:Lcom/alibaba/wukong/im/XPNInfo;

    iput-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mXPNInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 785
    .end local v0    # "forkMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->doAfter()V

    .line 786
    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatorType:Lcom/alibaba/wukong/im/Message$CreatorType;

    sget-object v3, Lcom/alibaba/wukong/im/Message$CreatorType;->SELF:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-ne v2, v3, :cond_1

    .line 788
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v2

    .line 23061
    const/4 v3, 0x1

    invoke-virtual {v2, p1, p0, v3}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Z)Z

    .line 790
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Liar;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Z
    :try_end_0
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24030
    :cond_1
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 796
    :goto_1
    return-void

    .line 780
    .restart local v0    # "forkMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_2
    :try_start_1
    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageType;->COMMON:Lcom/alibaba/wukong/im/Message$MessageType;

    iput-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageType:Lcom/alibaba/wukong/im/Message$MessageType;

    iput-object v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageType:Lcom/alibaba/wukong/im/Message$MessageType;

    .line 781
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checkAndSave encrypt message mid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failed, send common message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 793
    .end local v0    # "forkMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :catch_0
    move-exception v2

    :try_start_2
    const-string/jumbo v2, "[API] save msg err"

    invoke-virtual {v1, v2}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25030
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    goto :goto_1

    .line 795
    :catchall_0
    move-exception v2

    .line 26030
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 795
    throw v2
.end method

.method private checkParams(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;J)Z
    .locals 11
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "startTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v10, 0x0

    .line 709
    const/4 v9, 0x0

    .line 711
    .local v9, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Msg"

    .line 17014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v9

    .line 712
    if-nez p1, :cond_0

    .line 714
    const-string/jumbo v0, "[API] Param conv null"

    invoke-virtual {v9, v0}, Lhzv;->b(Ljava/lang/String;)V

    .line 715
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR conversation is empty"

    invoke-static {p2, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const-string/jumbo v2, "101002"

    const-string/jumbo v3, "PARAMETER_ERR"

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    move-object v0, p0

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/wukong/im/message/MessageImpl;->commitRateFail(ILjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17030
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    move v0, v10

    .line 749
    :goto_0
    return v0

    .line 721
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    .line 722
    .local v8, "cid":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] sendMsg, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 723
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isInvalid(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 725
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] Param cid null or conv status err "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lhzv;->b(Ljava/lang/String;)V

    .line 726
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR conversation is invalid"

    invoke-static {p2, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const-string/jumbo v2, "101002"

    const-string/jumbo v3, "PARAMETER_ERR"

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    move-object v0, p0

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/wukong/im/message/MessageImpl;->commitRateFail(ILjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18030
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    move v0, v10

    .line 749
    goto :goto_0

    .line 732
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    if-nez v0, :cond_3

    .line 734
    const-string/jumbo v0, "[API] Param msg content null"

    invoke-virtual {v9, v0}, Lhzv;->b(Ljava/lang/String;)V

    .line 735
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR message has no messageContent"

    invoke-static {p2, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const-string/jumbo v2, "101002"

    const-string/jumbo v3, "PARAMETER_ERR"

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    move-object v0, p0

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/wukong/im/message/MessageImpl;->commitRateFail(ILjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19030
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    move v0, v10

    .line 749
    goto/16 :goto_0

    .line 742
    :cond_3
    :try_start_3
    invoke-static {p2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 743
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const-string/jumbo v2, "101004"

    const-string/jumbo v3, "NOT_LOGIN_ERR"

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    move-object v0, p0

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/wukong/im/message/MessageImpl;->commitRateFail(ILjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20030
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    move v0, v10

    .line 749
    goto/16 :goto_0

    .line 21030
    :cond_4
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    .line 749
    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v8    # "cid":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 22030
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    .line 749
    throw v0
.end method

.method private commitRateFail(ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "errDesc"    # Ljava/lang/String;
    .param p4, "messageId"    # J
    .param p6, "startTime"    # J

    .prologue
    .line 807
    const-string/jumbo v1, "101008"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "101010"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "130015"

    .line 808
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "130100"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "130101"

    .line 809
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 810
    const-wide/16 v2, 0x0

    cmp-long v1, p6, v2

    if-lez v1, :cond_0

    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "_/r/IDLSend/send_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p6

    iget v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->statSize:I

    const/4 v5, 0x0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/laiwang/protocol/android/log/PerfLogger;->logAccess(Ljava/lang/String;JIZLjava/lang/String;)V

    .line 813
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 814
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 815
    .local v7, "dt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "msgId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    const-string/jumbo v1, "errCode"

    invoke-interface {v7, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    const-string/jumbo v1, "errDesc"

    invoke-interface {v7, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    const-string/jumbo v1, "cType"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    new-instance v0, Lhzu;

    invoke-direct {v0}, Lhzu;-><init>()V

    .line 820
    .local v0, "alarm":Lhzu;
    const-string/jumbo v1, "im"

    iput-object v1, v0, Lhzu;->a:Ljava/lang/String;

    .line 821
    iput-object v7, v0, Lhzu;->b:Ljava/util/Map;

    .line 822
    const/16 v1, 0xca

    iput v1, v0, Lhzu;->c:I

    .line 823
    const-string/jumbo v1, "\u6d88\u606f\u53d1\u9001\u5931\u8d25\uff08\u7f51\u7edc\u6b63\u5e38\uff09"

    iput-object v1, v0, Lhzu;->d:Ljava/lang/String;

    .line 824
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhzr;->a(Lhzu;)V

    .line 826
    .end local v0    # "alarm":Lhzu;
    .end local v7    # "dt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v1, "SendMsg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-static {v1, v2, p2, v3}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    :cond_2
    return-void
.end method

.method private commitRateSuccess(IJ)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "startTime"    # J

    .prologue
    .line 831
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "_/r/IDLSend/send_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p2

    iget v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->statSize:I

    const/4 v5, 0x1

    const-string/jumbo v6, "200"

    invoke-static/range {v1 .. v6}, Lcom/laiwang/protocol/android/log/PerfLogger;->logAccess(Ljava/lang/String;JIZLjava/lang/String;)V

    .line 834
    :cond_0
    const-string/jumbo v0, "SendMsg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhzs;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    return-void
.end method

.method private doSendByMsgType(Ljava/lang/String;Lcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "videoCompress"    # Lcom/alibaba/wukong/im/VideoCompress;
    .param p3, "uploader"    # Lcom/alibaba/wukong/im/Uploader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/VideoCompress;",
            "Lcom/alibaba/wukong/im/Uploader;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p4, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    const/4 v3, 0x1

    .line 496
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 628
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v1

    invoke-virtual {v1, p0, p4}, Libz;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 498
    :sswitch_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v1

    invoke-virtual {v1, p0, p4}, Libz;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 502
    :sswitch_1
    invoke-static {p0, p4}, Libx;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 505
    :sswitch_2
    if-eqz p2, :cond_1

    .line 507
    const-string/jumbo v1, "MessageImpl"

    const-string/jumbo v2, "[VideoCompress] start"

    .line 7018
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageImpl$19;

    invoke-direct {v1, p0, p4}, Lcom/alibaba/wukong/im/message/MessageImpl$19;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {p2, p0, v1}, Lcom/alibaba/wukong/im/VideoCompress;->compress(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 537
    :cond_1
    const-string/jumbo v1, "MessageImpl"

    const-string/jumbo v2, "[VideoCompress] not need"

    .line 8018
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-static {p0, p4}, Libx;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 544
    :sswitch_3
    invoke-static {p1}, Libp;->a(Ljava/lang/String;)Libp;

    move-result-object v0

    .line 545
    .local v0, "queue":Libp;
    if-eqz v0, :cond_2

    .line 546
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageImpl$20;

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    move-object v2, p0

    move-object v3, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/wukong/im/message/MessageImpl$20;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;JLcom/alibaba/wukong/im/Uploader;)V

    .line 8078
    const/4 v2, 0x0

    .line 8081
    :try_start_0
    const-string/jumbo v3, "[TAG] Msg"

    .line 9014
    const-string/jumbo v4, "im"

    invoke-static {v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v2

    .line 8085
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "add queue task msg:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9060
    iget-wide v4, v1, Libp$a;->b:J

    .line 8085
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzv;->a(Ljava/lang/String;)V

    .line 8087
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8088
    :try_start_1
    iget-object v3, v0, Libp;->a:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 8089
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8090
    :try_start_2
    invoke-virtual {v0}, Libp;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10030
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0

    .line 8089
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 8093
    :catchall_1
    move-exception v1

    .line 11030
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    .line 8093
    throw v1

    .line 553
    :cond_2
    invoke-static {p0, p3, p4}, Libx;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 559
    .end local v0    # "queue":Libp;
    :sswitch_4
    invoke-static {p0, p3, p4}, Libx;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 563
    :sswitch_5
    invoke-static {p0, p3, p4}, Libx;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 566
    :sswitch_6
    if-eqz p2, :cond_3

    .line 568
    const-string/jumbo v1, "MessageImpl"

    const-string/jumbo v2, "[VideoCompress] start"

    .line 12018
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageImpl$21;

    invoke-direct {v1, p0, p3, p4}, Lcom/alibaba/wukong/im/message/MessageImpl$21;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {p2, p0, v1}, Lcom/alibaba/wukong/im/VideoCompress;->compressEncryptVideo(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 606
    :cond_3
    const-string/jumbo v1, "MessageImpl"

    const-string/jumbo v2, "[VideoCompress] not need"

    .line 13018
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-static {p0, p3, p4}, Libx;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 613
    :sswitch_7
    invoke-static {p0, p3, p4}, Libx;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 13057
    :sswitch_8
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    if-nez v1, :cond_4

    .line 13058
    if-eqz p4, :cond_0

    .line 13059
    const-string/jumbo v1, "message content empty"

    const-string/jumbo v2, ""

    invoke-interface {p4, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 13064
    :cond_4
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0x190

    if-eq v1, v2, :cond_5

    .line 13065
    if-eqz p4, :cond_0

    .line 13066
    const-string/jumbo v1, "content type is not cmail"

    const-string/jumbo v2, ""

    invoke-interface {p4, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 13071
    :cond_5
    if-eqz p3, :cond_6

    .line 13072
    new-instance v1, Lcom/alibaba/wukong/im/Uploader$UploadParams;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/Uploader$UploadParams;-><init>()V

    .line 13073
    invoke-virtual {v1, p0}, Lcom/alibaba/wukong/im/Uploader$UploadParams;->setMessage(Lcom/alibaba/wukong/im/Message;)V

    .line 13074
    new-instance v2, Libx$d;

    invoke-direct {v2, p0, p4, v3, v3}, Libx$d;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZZ)V

    invoke-interface {p3, v1, v2}, Lcom/alibaba/wukong/im/Uploader;->upload(Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    goto/16 :goto_0

    .line 13075
    :cond_6
    if-eqz p4, :cond_0

    .line 13076
    const-string/jumbo v1, "101005"

    const-string/jumbo v2, "UPLOAD_ERR"

    invoke-interface {p4, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 619
    :sswitch_9
    invoke-static {p0, p3, p4}, Libx;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 622
    :sswitch_a
    invoke-static {p0, p3, p4}, Libx;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 625
    :sswitch_b
    invoke-static {p0, p3, p4}, Libx;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 496
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0x66 -> :sswitch_b
        0x67 -> :sswitch_1
        0x68 -> :sswitch_4
        0xca -> :sswitch_2
        0xcb -> :sswitch_3
        0xcc -> :sswitch_5
        0xcd -> :sswitch_5
        0xce -> :sswitch_6
        0x190 -> :sswitch_8
        0x1f4 -> :sswitch_7
        0x1f5 -> :sswitch_7
        0x1f6 -> :sswitch_7
        0x1f7 -> :sswitch_9
        0x1f8 -> :sswitch_a
    .end sparse-switch
.end method

.method private endStatistics(Lhzs$a;I)V
    .locals 3
    .param p1, "statistics"    # Lhzs$a;
    .param p2, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 801
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 802
    .local v0, "dim":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "msgType"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    invoke-virtual {p1, v0}, Lhzs$a;->a(Ljava/util/Map;)V

    .line 804
    return-void
.end method

.method private forwardMsg(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V
    .locals 11
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "nameAppender"    # Lcom/alibaba/wukong/im/SendNameAppender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/im/SendNameAppender;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 636
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Message;>;"
    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->initAtStatus()V

    .line 638
    const/4 v10, 0x0

    .line 640
    .local v10, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Msg"

    .line 14014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v10

    .line 641
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->checkParams(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 14030
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    .line 705
    :goto_0
    return-void

    .line 644
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    .line 645
    .local v5, "cid":Ljava/lang/String;
    const-string/jumbo v0, "ForwardMsg"

    invoke-static {v0}, Lhzs;->a(Ljava/lang/String;)Lhzs$a;

    move-result-object v9

    .line 14155
    .local v9, "statistics":Lhzs$a;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v9, Lhzs$a;->a:J

    .line 648
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageImpl$22;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->j()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/wukong/im/message/MessageImpl$22;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;Lhzs$a;)V

    .line 702
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl$22;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15030
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 704
    .end local v5    # "cid":Ljava/lang/String;
    .end local v9    # "statistics":Lhzs$a;
    :catchall_0
    move-exception v0

    .line 16030
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    .line 704
    throw v0
.end method

.method private getIMContext()Liaq;
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v0

    return-object v0
.end method

.method private initAtStatus()V
    .locals 6

    .prologue
    .line 1862
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIds:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIds:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1879
    :cond_0
    return-void

    .line 1865
    :cond_1
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIds:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1866
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1867
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1868
    .local v2, "openId":Ljava/lang/Long;
    if-eqz v2, :cond_2

    .line 1871
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtMeStatusObjects:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v3, :cond_3

    .line 1872
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtMeStatusObjects:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1874
    :cond_3
    new-instance v1, Lcom/alibaba/wukong/im/AtMeStatusObject;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/AtMeStatusObject;-><init>()V

    .line 1875
    .local v1, "object":Lcom/alibaba/wukong/im/AtMeStatusObject;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/alibaba/wukong/im/AtMeStatusObject;->openId:J

    .line 1876
    const/4 v3, 0x1

    iput v3, v1, Lcom/alibaba/wukong/im/AtMeStatusObject;->readStatus:I

    .line 1877
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtMeStatusObjects:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static isEarliest(Lcom/alibaba/wukong/im/message/MessageImpl;)Z
    .locals 1
    .param p0, "msg"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    .prologue
    .line 1751
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isForwardMsg()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1211
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "isForwardMsg"

    invoke-virtual {p0, v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newInstance()Lcom/alibaba/wukong/im/message/MessageImpl;
    .locals 1

    .prologue
    .line 1732
    sget-object v0, Lcom/alibaba/wukong/im/message/MessageImpl;->sProxy:Lcom/alibaba/wukong/im/MessageProxy;

    if-nez v0, :cond_0

    .line 1734
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;-><init>()V

    .line 1736
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alibaba/wukong/im/message/MessageImpl;->sProxy:Lcom/alibaba/wukong/im/MessageProxy;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/MessageProxy;->newInstance()Lcom/alibaba/wukong/im/ExtendedMessage;

    move-result-object v0

    goto :goto_0
.end method

.method private sendMsg(Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V
    .locals 23
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "passMode"    # Z
    .param p3, "videoCompress"    # Lcom/alibaba/wukong/im/VideoCompress;
    .param p4, "uploader"    # Lcom/alibaba/wukong/im/Uploader;
    .param p5, "nameAppender"    # Lcom/alibaba/wukong/im/SendNameAppender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Z",
            "Lcom/alibaba/wukong/im/VideoCompress;",
            "Lcom/alibaba/wukong/im/Uploader;",
            "Lcom/alibaba/wukong/im/SendNameAppender;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p6, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Message;>;"
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->initAtStatus()V

    .line 371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 373
    .local v20, "t1":J
    const/4 v6, 0x0

    .line 375
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v7, "[TAG] Msg"

    .line 4014
    const-string/jumbo v8, "im"

    invoke-static {v7, v8}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 376
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/wukong/im/message/MessageImpl;->checkParams(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 4030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 491
    :goto_0
    return-void

    .line 379
    :cond_0
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v12

    .line 380
    .local v12, "cid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    move-wide/from16 v18, v0

    .line 381
    .local v18, "oldMid":J
    const-string/jumbo v7, "SendMsg"

    invoke-static {v7}, Lhzs;->a(Ljava/lang/String;)Lhzs$a;

    move-result-object v22

    .line 4155
    .local v22, "statistics":Lhzs$a;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object/from16 v0, v22

    iput-wide v8, v0, Lhzs$a;->a:J

    .line 384
    new-instance v7, Lcom/alibaba/wukong/im/message/MessageImpl$12;

    const/4 v10, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    move-result-object v8

    invoke-virtual {v8}, Liaq;->j()Ljava/util/concurrent/Executor;

    move-result-object v11

    move-object/from16 v8, p0

    move-object/from16 v9, p6

    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object/from16 v15, p5

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    invoke-direct/range {v7 .. v22}, Lcom/alibaba/wukong/im/message/MessageImpl$12;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;JJLhzs$a;)V

    .line 488
    invoke-virtual {v7}, Lcom/alibaba/wukong/im/message/MessageImpl$12;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 490
    .end local v12    # "cid":Ljava/lang/String;
    .end local v18    # "oldMid":J
    .end local v22    # "statistics":Lhzs$a;
    :catchall_0
    move-exception v7

    .line 6030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 490
    throw v7
.end method

.method public static setEncryptHelper(Lcom/alibaba/wukong/im/EncryptHelper;)V
    .locals 0
    .param p0, "encryptHelper"    # Lcom/alibaba/wukong/im/EncryptHelper;

    .prologue
    .line 1785
    sput-object p0, Lcom/alibaba/wukong/im/message/MessageImpl;->sEncryptHelper:Lcom/alibaba/wukong/im/EncryptHelper;

    .line 1786
    return-void
.end method

.method public static setProxy(Lcom/alibaba/wukong/im/MessageProxy;)V
    .locals 0
    .param p0, "proxy"    # Lcom/alibaba/wukong/im/MessageProxy;

    .prologue
    .line 1744
    sput-object p0, Lcom/alibaba/wukong/im/message/MessageImpl;->sProxy:Lcom/alibaba/wukong/im/MessageProxy;

    .line 1745
    return-void
.end method


# virtual methods
.method public final allReceiversRead()Z
    .locals 1

    .prologue
    .line 928
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public atOpenIdExList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/OpenIdExObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIdExObjectList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final atOpenIds()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIds:Ljava/util/Map;

    return-object v0
.end method

.method public atStatusObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/AtMeStatusObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtMeStatusObjects:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public canRecall()Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1484
    iget-wide v8, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderId:J

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    sget-object v9, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v8, v9, :cond_1

    iget v8, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mRecallStatus:I

    if-nez v8, :cond_1

    move v0, v6

    .line 1486
    .local v0, "canrecall":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 1487
    const-wide/32 v2, 0x5265c00

    .line 1488
    .local v2, "limitTime":J
    invoke-static {}, Lifo;->a()Lifo;

    move-result-object v8

    const-string/jumbo v9, "dd_im"

    const-string/jumbo v10, "recall_time"

    invoke-virtual {v8, v9, v10}, Lifo;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v1

    .line 1490
    .local v1, "setting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v1, :cond_0

    .line 1491
    invoke-interface {v1}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v4

    .line 1492
    .local v4, "time":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_0

    .line 1493
    const-wide/16 v8, 0x3e8

    mul-long v2, v4, v8

    .line 1496
    .end local v4    # "time":J
    :cond_0
    iget-wide v8, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSentLocalTime:J

    add-long/2addr v8, v2

    invoke-static {}, Liaf;->c()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 1498
    .end local v1    # "setting":Lcom/alibaba/wukong/settings/CloudSetting;
    .end local v2    # "limitTime":J
    :goto_1
    return v6

    .end local v0    # "canrecall":Z
    :cond_1
    move v0, v7

    .line 1484
    goto :goto_0

    .restart local v0    # "canrecall":Z
    .restart local v1    # "setting":Lcom/alibaba/wukong/settings/CloudSetting;
    .restart local v2    # "limitTime":J
    :cond_2
    move v6, v7

    .line 1496
    goto :goto_1

    .end local v1    # "setting":Lcom/alibaba/wukong/settings/CloudSetting;
    .end local v2    # "limitTime":J
    :cond_3
    move v6, v7

    .line 1498
    goto :goto_1
.end method

.method public final compareOffset(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;Lcom/alibaba/wukong/Callback;)V
    .locals 8
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "type"    # Lcom/alibaba/wukong/im/Message$CreatorType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Lcom/alibaba/wukong/im/Message$CreatorType;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1340
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 1342
    .local v7, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Msg"

    .line 48014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v7

    .line 1343
    invoke-virtual {p0, p1}, Lcom/alibaba/wukong/im/message/MessageImpl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 1371
    :goto_0
    return-void

    .line 1347
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1348
    :cond_1
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR message not in same conversation"

    invoke-static {p3, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1352
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] compareOffset "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 1354
    invoke-static {p3}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 50030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1356
    :cond_3
    :try_start_3
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageImpl$8;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->i()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/message/MessageImpl$8;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)V

    .line 1368
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl$8;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50032
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1370
    :catchall_0
    move-exception v0

    .line 50034
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 1370
    throw v0
.end method

.method public final compareTo(Lcom/alibaba/wukong/im/Message;)I
    .locals 10
    .param p1, "another"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1425
    if-ne p0, p1, :cond_1

    .line 1431
    :cond_0
    :goto_0
    return v2

    .line 1428
    :cond_1
    if-nez p1, :cond_2

    move v2, v3

    .line 1429
    goto :goto_0

    .line 1430
    :cond_2
    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 1431
    .local v0, "ret":J
    cmp-long v4, v0, v8

    if-gez v4, :cond_3

    const/4 v2, -0x1

    goto :goto_0

    :cond_3
    cmp-long v4, v0, v8

    if-lez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 66
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    invoke-virtual {p0, p1}, Lcom/alibaba/wukong/im/message/MessageImpl;->compareTo(Lcom/alibaba/wukong/im/Message;)I

    move-result v0

    return v0
.end method

.method public final conversation()Lcom/alibaba/wukong/im/Conversation;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    return-object v0
.end method

.method public final createdAt()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 864
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    return-wide v0
.end method

.method public final creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatorType:Lcom/alibaba/wukong/im/Message$CreatorType;

    return-object v0
.end method

.method public decrypt()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 1809
    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageType:Lcom/alibaba/wukong/im/Message$MessageType;

    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    if-nez v2, :cond_0

    .line 1810
    sget-object v2, Lcom/alibaba/wukong/im/message/MessageImpl;->sEncryptHelper:Lcom/alibaba/wukong/im/EncryptHelper;

    if-eqz v2, :cond_2

    .line 1811
    sget-object v2, Lcom/alibaba/wukong/im/message/MessageImpl;->sEncryptHelper:Lcom/alibaba/wukong/im/EncryptHelper;

    invoke-interface {v2, p0}, Lcom/alibaba/wukong/im/EncryptHelper;->decrypt(Lcom/alibaba/wukong/im/Message;)I

    move-result v0

    .line 1812
    .local v0, "ret":I
    if-ne v0, v1, :cond_1

    .line 1813
    iput v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    .line 1814
    const-string/jumbo v2, "[TAG] MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "msg decrypt return true mid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50065
    const-string/jumbo v4, "im"

    invoke-static {v2, v3, v4}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    .end local v0    # "ret":I
    :cond_0
    :goto_0
    return v1

    .line 1817
    .restart local v0    # "ret":I
    :cond_1
    const-string/jumbo v1, "[TAG] MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "msg decrypt return false mid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50067
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    .end local v0    # "ret":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final delete(Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 943
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    .line 945
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] Msg"

    .line 27014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] Msg del "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 948
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 27030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 975
    :goto_0
    return-void

    .line 951
    :cond_0
    :try_start_1
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageImpl$24;

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    move-result-object v3

    invoke-virtual {v3}, Liaq;->j()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/alibaba/wukong/im/message/MessageImpl$24;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 972
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl$24;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 974
    :catchall_0
    move-exception v1

    .line 29030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 974
    throw v1
.end method

.method public doAfter()V
    .locals 0

    .prologue
    .line 1741
    return-void
.end method

.method public encrypt()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1790
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    if-ne v3, v1, :cond_0

    .line 1791
    sget-object v3, Lcom/alibaba/wukong/im/message/MessageImpl;->sEncryptHelper:Lcom/alibaba/wukong/im/EncryptHelper;

    if-eqz v3, :cond_2

    .line 1792
    sget-object v3, Lcom/alibaba/wukong/im/message/MessageImpl;->sEncryptHelper:Lcom/alibaba/wukong/im/EncryptHelper;

    invoke-interface {v3, p0}, Lcom/alibaba/wukong/im/EncryptHelper;->encrypt(Lcom/alibaba/wukong/im/Message;)I

    move-result v0

    .line 1793
    .local v0, "ret":I
    if-ne v0, v1, :cond_1

    .line 1794
    iput v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    .line 1795
    const-string/jumbo v2, "[TAG] MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "msg encrypt return true mid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50061
    const-string/jumbo v4, "im"

    invoke-static {v2, v3, v4}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    .end local v0    # "ret":I
    :cond_0
    :goto_0
    return v1

    .line 1798
    .restart local v0    # "ret":I
    :cond_1
    const-string/jumbo v1, "[TAG] MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "msg encrypt return false mid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50063
    const-string/jumbo v4, "im"

    invoke-static {v1, v3, v4}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "ret":I
    :cond_2
    move v1, v2

    .line 1801
    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1410
    if-eqz p1, :cond_0

    instance-of v3, p1, Lcom/alibaba/wukong/im/message/MessageImpl;

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 1419
    :cond_1
    :goto_0
    return v1

    .line 1412
    :cond_2
    if-eq p1, p0, :cond_1

    move-object v0, p1

    .line 1414
    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1415
    .local v0, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v4, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-virtual {v3, v4}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1416
    iget-wide v4, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    iget-wide v6, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    iget-wide v4, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderId:J

    iget-wide v6, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalId:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalId:Ljava/lang/String;

    .line 1417
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    move v1, v2

    .line 1419
    goto :goto_0
.end method

.method public final extension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 990
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public extension()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 995
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final getAudioStreamController()Lcom/alibaba/wukong/im/AudioStreamController;
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mController:Libq;

    return-object v0
.end method

.method public getMemoryCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1854
    :cond_0
    const/4 v0, 0x0

    .line 1857
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getOffsetMessage(ILcom/alibaba/wukong/im/Message$CreatorType;ZLcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "offset"    # I
    .param p2, "type"    # Lcom/alibaba/wukong/im/Message$CreatorType;
    .param p3, "isContinued"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alibaba/wukong/im/Message$CreatorType;",
            "Z",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1377
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v8, 0x0

    .line 1379
    .local v8, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Msg"

    .line 50036
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v8

    .line 1380
    if-nez p1, :cond_0

    .line 1381
    invoke-static {p4, p0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50037
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 1404
    :goto_0
    return-void

    .line 1384
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_1

    .line 1385
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR conversation is null"

    invoke-static {p4, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50039
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1389
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] getOffsetMsg "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 1391
    invoke-static {p4}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 50041
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1393
    :cond_2
    :try_start_3
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageImpl$9;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->i()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p4

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/wukong/im/message/MessageImpl$9;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;ILcom/alibaba/wukong/im/Message$CreatorType;Z)V

    .line 1401
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl$9;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50043
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1403
    :catchall_0
    move-exception v0

    .line 50045
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 1403
    throw v0
.end method

.method public getUploadController()Lifu;
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mUploadController:Lifu;

    return-object v0
.end method

.method public final iHaveRead()Z
    .locals 1

    .prologue
    .line 933
    iget-boolean v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mIsRead:Z

    return v0
.end method

.method public final isAt()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIds:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIds:Ljava/util/Map;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->isForwardMsg()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isAtAll()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIds:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIds:Ljava/util/Map;

    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->senderId()J

    move-result-wide v0

    .line 1207
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->isForwardMsg()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDecrypted()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 1521
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageType:Lcom/alibaba/wukong/im/Message$MessageType;

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mIsRead:Z

    return v0
.end method

.method public isView()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 209
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mViewStatus:I

    sget-object v1, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->VIEW:Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->typeValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastUpdateUnreadCount()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 869
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastUpdateUnreadCount:J

    return-wide v0
.end method

.method public final localExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final localId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalId:Ljava/lang/String;

    return-object v0
.end method

.method public final messageContent()Lcom/alibaba/wukong/im/MessageContent;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    if-nez v0, :cond_0

    .line 1185
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/alibaba/wukong/im/message/MessageContentImpl;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    return-object v0
.end method

.method public final messageId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    return-wide v0
.end method

.method public final messageReceivers(Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/MessageReceiver;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1286
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/MessageReceiver;>;>;"
    const/4 v0, 0x0

    .line 1288
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] Msg"

    .line 44014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 1289
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] Msg receiver, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 1290
    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {v2, v3}, Liaf;->b(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1291
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "PARAMETER_ERR message is offline"

    invoke-static {p1, v1, v2}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 1335
    :goto_0
    return-void

    .line 1296
    :cond_0
    :try_start_1
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 45030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1299
    :cond_1
    :try_start_2
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageImpl$7;

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    move-result-object v3

    invoke-virtual {v3}, Liaq;->j()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/alibaba/wukong/im/message/MessageImpl$7;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 1332
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl$7;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1334
    :catchall_0
    move-exception v1

    .line 47030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 1334
    throw v1
.end method

.method public final messageType()Lcom/alibaba/wukong/im/Message$MessageType;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageType:Lcom/alibaba/wukong/im/Message$MessageType;

    return-object v0
.end method

.method public passSendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 755
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->passSendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    .line 756
    return-void
.end method

.method public passSendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "nameAppender"    # Lcom/alibaba/wukong/im/SendNameAppender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/im/SendNameAppender;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v3, 0x0

    .line 761
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/message/MessageImpl;->sendMsg(Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    .line 762
    return-void
.end method

.method public final privateExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final privateTag()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1000
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateTag:J

    return-wide v0
.end method

.method public putMemoryCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1837
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1849
    :goto_0
    return-void

    .line 1841
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    .line 50069
    new-instance v0, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;-><init>()V

    .line 1842
    iput-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1844
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1845
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1847
    :cond_2
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final read()V
    .locals 1

    .prologue
    .line 888
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->read(Z)V

    .line 889
    return-void
.end method

.method public read(Z)V
    .locals 7
    .param p1, "forceLocalRead1st"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 894
    invoke-static {v0}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mIsRead:Z

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {v2, v3}, Liaf;->b(J)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mRecallStatus:I

    if-eq v1, v6, :cond_0

    iget v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mShieldStatus:I

    if-eq v1, v6, :cond_0

    .line 902
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, "cid":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 905
    invoke-static {}, Liaf;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 907
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 26465
    invoke-static {v1}, Liar;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 26468
    instance-of v2, v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    if-eqz v2, :cond_3

    .line 26469
    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v1, v6}, Lcom/alibaba/wukong/im/message/MessageImpl;->setIsRead(Z)V

    .line 911
    :cond_3
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/alibaba/wukong/im/message/MessageImpl$23;

    invoke-direct {v2, p0, v0, p1}, Lcom/alibaba/wukong/im/message/MessageImpl$23;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public recallMessage(Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1436
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->canRecall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1437
    const-string/jumbo v1, "400"

    const-string/jumbo v2, "400 can not be recall"

    invoke-static {p1, v1, v2}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    :goto_0
    return-void

    .line 1442
    :cond_0
    const/4 v0, 0x0

    .line 1444
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] Msg"

    .line 50047
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 1445
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recall msg "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 1447
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 50048
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1449
    :cond_1
    :try_start_1
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageImpl$10;

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    move-result-object v3

    invoke-virtual {v3}, Liaq;->i()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/alibaba/wukong/im/message/MessageImpl$10;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 1463
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl$10;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50050
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1465
    :catchall_0
    move-exception v1

    .line 50052
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 1465
    throw v1
.end method

.method public recallStatus()I
    .locals 1

    .prologue
    .line 938
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mRecallStatus:I

    return v0
.end method

.method public final receiverCount()I
    .locals 1

    .prologue
    .line 883
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mTotalCount:I

    return v0
.end method

.method public receiverUids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mReceiverUids:Ljava/util/List;

    return-object v0
.end method

.method public resetEncryptStatusAndContent(Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1658
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageType:Lcom/alibaba/wukong/im/Message$MessageType;

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-eq v0, v1, :cond_1

    .line 1659
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR message type is not encrypt"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    :cond_0
    :goto_0
    return-void

    .line 1663
    :cond_1
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1666
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageImpl$18;

    const/4 v1, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v2

    invoke-virtual {v2}, Liaq;->j()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/alibaba/wukong/im/message/MessageImpl$18;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 1728
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl$18;->start()V

    goto :goto_0
.end method

.method public sendEncryptVideo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "videoCompress"    # Lcom/alibaba/wukong/im/VideoCompress;
    .param p3, "uploader"    # Lcom/alibaba/wukong/im/Uploader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/im/VideoCompress;",
            "Lcom/alibaba/wukong/im/Uploader;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 289
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/wukong/im/message/MessageImpl;->sendEncryptVideo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    .line 290
    return-void
.end method

.method public sendEncryptVideo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "videoCompress"    # Lcom/alibaba/wukong/im/VideoCompress;
    .param p3, "uploader"    # Lcom/alibaba/wukong/im/Uploader;
    .param p4, "nameAppender"    # Lcom/alibaba/wukong/im/SendNameAppender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/im/VideoCompress;",
            "Lcom/alibaba/wukong/im/Uploader;",
            "Lcom/alibaba/wukong/im/SendNameAppender;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 295
    .local p5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Message;>;"
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {v0, v1}, Liaf;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    invoke-virtual {p0, p1, p5}, Lcom/alibaba/wukong/im/message/MessageImpl;->sendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V

    .line 300
    :goto_0
    return-void

    .line 299
    :cond_0
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/message/MessageImpl;->sendMsg(Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final sendProgress()I
    .locals 1

    .prologue
    .line 839
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSendProgress:I

    return v0
.end method

.method public final sendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->sendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    .line 229
    return-void
.end method

.method public sendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "nameAppender"    # Lcom/alibaba/wukong/im/SendNameAppender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/im/SendNameAppender;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/alibaba/wukong/im/message/MessageImpl;->sendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    .line 235
    return-void
.end method

.method public sendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "uploader"    # Lcom/alibaba/wukong/im/Uploader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/im/Uploader;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alibaba/wukong/im/message/MessageImpl;->sendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    .line 267
    return-void
.end method

.method public sendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V
    .locals 10
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "uploader"    # Lcom/alibaba/wukong/im/Uploader;
    .param p3, "nameAppender"    # Lcom/alibaba/wukong/im/SendNameAppender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/im/Uploader;",
            "Lcom/alibaba/wukong/im/SendNameAppender;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 240
    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {v4, v5}, Liaf;->b(J)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 241
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/message/MessageImpl;->sendMsg(Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    .line 262
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageType:Lcom/alibaba/wukong/im/Message$MessageType;

    sget-object v4, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v1, v4, :cond_1

    .line 244
    invoke-static {}, Lcom/alibaba/wukong/im/message/MessageImpl;->newInstance()Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v0

    .line 245
    .local v0, "newMessage":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-static {p0, v0, v2}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/message/MessageImpl;Z)V

    .line 246
    invoke-static {}, Liaf;->b()J

    move-result-wide v8

    .line 247
    .local v8, "seqId":J
    invoke-static {v8, v9}, Liaf;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalId:Ljava/lang/String;

    .line 248
    neg-long v4, v8

    iput-wide v4, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    .line 249
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderId:J

    .line 250
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mIsRead:Z

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    .line 252
    iget-wide v4, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    iput-wide v4, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastModify:J

    .line 253
    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->OFFLINE:Lcom/alibaba/wukong/im/Message$MessageStatus;

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    .line 254
    iput-object v3, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mController:Libq;

    .line 255
    invoke-static {}, Liaf;->c()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastUpdateUnreadCount:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 256
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/message/MessageImpl;->sendMsg(Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 259
    .end local v0    # "newMessage":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v8    # "seqId":J
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/wukong/im/message/MessageImpl;->forwardMsg(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public sendToLocal(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->sendToLocal(Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/Callback;)V

    .line 305
    return-void
.end method

.method public sendToLocal(Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "updateLastMsg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Z",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 309
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    if-nez p1, :cond_0

    .line 310
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR conversation is empty"

    invoke-static {p3, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    .line 315
    .local v5, "cid":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isInvalid(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    :cond_1
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR conversation is invalid"

    invoke-static {p3, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    if-nez v0, :cond_3

    .line 321
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR message has no messageContent"

    invoke-static {p3, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_3
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageImpl$1;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->i()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p3

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/wukong/im/message/MessageImpl$1;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/Callback;)V

    .line 352
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl$1;->start()V

    goto :goto_0
.end method

.method public sendToLocalAtTime(Lcom/alibaba/wukong/im/Conversation;JLcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "createAt"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/wukong/im/message/MessageImpl;->sendToLocalAtTime(Lcom/alibaba/wukong/im/Conversation;JZLcom/alibaba/wukong/Callback;)V

    .line 358
    return-void
.end method

.method public sendToLocalAtTime(Lcom/alibaba/wukong/im/Conversation;JZLcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "createAt"    # J
    .param p4, "updateLastMsg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "JZ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    iput-wide p2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    .line 363
    invoke-virtual {p0, p1, p4, p5}, Lcom/alibaba/wukong/im/message/MessageImpl;->sendToLocal(Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/Callback;)V

    .line 364
    return-void
.end method

.method public sendToVideo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "videoCompress"    # Lcom/alibaba/wukong/im/VideoCompress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/im/VideoCompress;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alibaba/wukong/im/message/MessageImpl;->sendToVideo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    .line 273
    return-void
.end method

.method public sendToVideo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "videoCompress"    # Lcom/alibaba/wukong/im/VideoCompress;
    .param p3, "nameAppender"    # Lcom/alibaba/wukong/im/SendNameAppender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/im/VideoCompress;",
            "Lcom/alibaba/wukong/im/SendNameAppender;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 278
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Message;>;"
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {v0, v1}, Liaf;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    invoke-virtual {p0, p1, p4}, Lcom/alibaba/wukong/im/message/MessageImpl;->sendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V

    .line 284
    :goto_0
    return-void

    .line 283
    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/message/MessageImpl;->sendMsg(Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final senderId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 844
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderId:J

    return-wide v0
.end method

.method public senderVersion()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 849
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderVersion:J

    return-wide v0
.end method

.method public setEncryptStatus(I)V
    .locals 0
    .param p1, "encryptStatus"    # I

    .prologue
    .line 1525
    iput p1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    .line 1526
    return-void
.end method

.method public setIsRead(Z)V
    .locals 0
    .param p1, "isRead"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mIsRead:Z

    .line 214
    return-void
.end method

.method public setUnreadCount(I)V
    .locals 0
    .param p1, "unreadCount"    # I

    .prologue
    .line 878
    iput p1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    .line 879
    return-void
.end method

.method public shieldMessage(Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1577
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    .line 1579
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] Msg"

    .line 50054
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 1580
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shield msg "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 1582
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 50055
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 1602
    :goto_0
    return-void

    .line 1585
    :cond_0
    :try_start_1
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageImpl$15;

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    move-result-object v3

    invoke-virtual {v3}, Liaq;->j()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/alibaba/wukong/im/message/MessageImpl$15;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 1599
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl$15;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50057
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1601
    :catchall_0
    move-exception v1

    .line 50059
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 1601
    throw v1
.end method

.method public shieldStatus()I
    .locals 1

    .prologue
    .line 1624
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mShieldStatus:I

    return v0
.end method

.method public final status()Lcom/alibaba/wukong/im/Message$MessageStatus;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    return-object v0
.end method

.method public final tag()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 985
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mTag:J

    return-wide v0
.end method

.method public translateVoice(Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1567
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageImpl$14;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    move-result-object v2

    invoke-virtual {v2}, Liaq;->j()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/alibaba/wukong/im/message/MessageImpl$14;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 1572
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl$14;->start()V

    .line 1573
    return-void
.end method

.method public tryToDecryptSync()Z
    .locals 1

    .prologue
    .line 1562
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->tryToDecryptSync(Z)Z

    move-result v0

    return v0
.end method

.method public tryToDecryptSync(Z)Z
    .locals 5
    .param p1, "ignoreUpdateLocal"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->decrypt()Z

    move-result v0

    .line 1533
    .local v0, "success":Z
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->doAfter()V

    .line 1534
    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1535
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageImpl$13;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    move-result-object v4

    invoke-virtual {v4}, Liaq;->i()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/alibaba/wukong/im/message/MessageImpl$13;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 1555
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl$13;->start()V

    .line 1557
    :cond_0
    return v0
.end method

.method public final unReadCount()I
    .locals 1

    .prologue
    .line 874
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    return v0
.end method

.method public final unreadMembers(Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/MessageReceiver;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1143
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/MessageReceiver;>;>;"
    const/4 v0, 0x0

    .line 1145
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] Msg"

    .line 40014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 1146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] Msg unreadMember, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 1147
    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {v2, v3}, Liaf;->b(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1148
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "PARAMETER_ERR message is offline"

    invoke-static {p1, v1, v2}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 1179
    :goto_0
    return-void

    .line 1153
    :cond_0
    :try_start_1
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 41030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1155
    :cond_1
    :try_start_2
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageImpl$4;

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    move-result-object v3

    invoke-virtual {v3}, Liaq;->j()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/alibaba/wukong/im/message/MessageImpl$4;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 1176
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl$4;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1178
    :catchall_0
    move-exception v1

    .line 43030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 1178
    throw v1
.end method

.method public final updateExtension(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1101
    .local p1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1103
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Msg"

    .line 35014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] updateExt, mid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 1105
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 35030
    :cond_1
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 1127
    :goto_0
    return-void

    .line 1108
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 36030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1110
    :cond_3
    :try_start_2
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageImpl$3;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->j()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/message/MessageImpl$3;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/Map;)V

    .line 1124
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl$3;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1126
    :catchall_0
    move-exception v0

    .line 38030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 1126
    throw v0
.end method

.method public updateLocalAtStatus(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/AtMeStatusObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "atMeStatusObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/AtMeStatusObject;>;"
    const/4 v2, 0x0

    .line 1644
    invoke-static {v2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1654
    :goto_0
    return-void

    .line 1647
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageImpl$17;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->i()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/message/MessageImpl$17;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/List;)V

    .line 1653
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl$17;->start()V

    goto :goto_0
.end method

.method public updateLocalExtension(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    :goto_0
    return-void

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    .line 39020
    new-instance v0, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;-><init>()V

    .line 1136
    iput-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1138
    :cond_1
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final updateLocalExtras(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1222
    invoke-static {v2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1237
    :goto_0
    return-void

    .line 1224
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageImpl$5;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->i()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/message/MessageImpl$5;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/Map;)V

    .line 1236
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl$5;->start()V

    goto :goto_0
.end method

.method public updateLocalExtrasByKeys(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1241
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->updateLocalExtrasByKeys(Ljava/util/Map;Z)V

    .line 1242
    return-void
.end method

.method public updateLocalExtrasByKeys(Ljava/util/Map;Z)V
    .locals 7
    .param p2, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1246
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1278
    :cond_0
    :goto_0
    return-void

    .line 1249
    :cond_1
    invoke-static {v2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageImpl$6;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->e()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/message/MessageImpl$6;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/Map;Z)V

    .line 1277
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl$6;->start()V

    goto :goto_0
.end method

.method public updateLocalRecallStatus(I)V
    .locals 6
    .param p1, "recallStatus"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1471
    invoke-static {v2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1480
    :goto_0
    return-void

    .line 1473
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageImpl$11;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->i()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/message/MessageImpl$11;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;I)V

    .line 1479
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl$11;->start()V

    goto :goto_0
.end method

.method public updateLocalShieldStatus(I)V
    .locals 6
    .param p1, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1607
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mShieldStatus:I

    if-ne v0, p1, :cond_1

    .line 1620
    :cond_0
    :goto_0
    return-void

    .line 1611
    :cond_1
    invoke-static {v2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1613
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageImpl$16;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->i()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/message/MessageImpl$16;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;I)V

    .line 1619
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl$16;->start()V

    goto :goto_0
.end method

.method public final updatePrivateExtension(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 34020
    new-instance v0, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;-><init>()V

    .line 1050
    .local v0, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->updatePrivateExtension(Ljava/util/Map;)V

    .line 1051
    return-void
.end method

.method public final updatePrivateExtension(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1055
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    invoke-static {v2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageImpl$2;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->e()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/message/MessageImpl$2;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/Map;)V

    .line 1096
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl$2;->start()V

    goto :goto_0
.end method

.method public final updatePrivateTag(J)V
    .locals 9
    .param p1, "tag"    # J

    .prologue
    .line 1005
    const/4 v0, 0x0

    .line 1007
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] Msg"

    .line 30014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] Msg updatePriTag, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 1009
    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateTag:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 30030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 1039
    :goto_0
    return-void

    .line 1012
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 31030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1014
    :cond_1
    :try_start_2
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageImpl$25;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    move-result-object v2

    invoke-virtual {v2}, Liaq;->j()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v2, p0

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/wukong/im/message/MessageImpl$25;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;J)V

    .line 1036
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl$25;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1038
    :catchall_0
    move-exception v1

    .line 33030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 1038
    throw v1
.end method

.method public viewMessage()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 1504
    invoke-static {v0}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1517
    :cond_0
    :goto_0
    return-void

    .line 1506
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mIsRead:Z

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {v2, v3}, Liaf;->b(J)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->getIMContext()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mViewStatus:I

    sget-object v2, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->VIEW:Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;

    .line 1507
    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->typeValue()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1512
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 1513
    .local v0, "cid":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1515
    invoke-static {}, Licb;->a()Licb;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-virtual {v1, v0, v2, v3}, Licb;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method
