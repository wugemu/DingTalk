.class public Lcom/alibaba/wukong/im/conversation/ConversationImpl;
.super Ljava/lang/Object;
.source "ConversationImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/Conversation;


# static fields
.field private static final AUTHORITY_PRIVATE:I = 0x1

.field private static final AUTHORITY_PUBLIC:I = 0x0

.field public static final EXTENSION_KEY_KICK_REASON_TYPE:Ljava/lang/String; = "kick_reason_type"

.field static final FLAG_CHILDREN_CACHED:I = 0x1

.field static final FLAG_LASTMSG_OUTDATED:I = 0x4

.field static final FLAG_UNREADCOUNT_SERVER:I = 0x2

.field public static final TAG_BURN_CHAT:I = 0x4

.field public static final TAG_SHOPPING_CHAT:I = 0x10

.field private static mDisplayProxy:Lcom/alibaba/wukong/im/ConversationDisplayProxy; = null

.field private static sComparator:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x6fab6deb6742c9ecL


# instance fields
.field public mAtAllType:I

.field public mAtStatus:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mAuthority:I

.field public mBanWordsTime:J

.field public mCategoryId:J

.field public mCid:Ljava/lang/String;

.field public mConfigurationExpireTime:J

.field public mConfigurationProperty:Ljava/lang/String;

.field public mConfigurationVersion:J

.field public mConversationType:I

.field public mCreateAt:J

.field public mDraftText:Ljava/lang/String;

.field public mEntranceId:J

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

.field public mGroupIcon:Ljava/lang/String;

.field public mGroupIconTag:J

.field public mGroupIconType:I

.field public mGroupId:J

.field public mGroupIdSearchable:Z

.field public mGroupLevel:I

.field public mIcon:Ljava/lang/String;

.field public mInBanBlack:Z

.field public mInBanWhite:Z

.field public mIsBanWords:Z

.field private transient mIsNotSnapshot:Z

.field public mIsNotification:Z

.field public mIsParent:Z

.field private transient mIsSyncing:Z

.field public mJoinValidationType:I

.field public mLastMessage:Lcom/alibaba/wukong/im/Message;

.field public mLastModify:J

.field public mLastMsgCreateAt:J

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

.field public mMemberLimit:I

.field public mMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/MemberRole;",
            ">;"
        }
    .end annotation
.end field

.field public mNotificationSound:Ljava/lang/String;

.field public mOwnerId:J

.field public transient mParentConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

.field public mParentId:Ljava/lang/String;

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

.field public mShowHistoryType:I

.field public mStatus:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

.field private transient mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

.field public mTag:J

.field public mTitle:Ljava/lang/String;

.field public mTitleSearchable:Z

.field public mTop:J

.field public mTotalMemberCount:I

.field public mUnreadCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lias;

    invoke-direct {v0}, Lias;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->sComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    sget-object v0, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iput-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mStatus:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    .line 99
    iput-boolean v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsNotification:Z

    .line 101
    iput-boolean v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAtStatus:Z

    .line 179
    iput-boolean v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsSyncing:Z

    .line 198
    iput-boolean v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsNotSnapshot:Z

    .line 199
    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    return-object p1
.end method

.method static synthetic access$102(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsSyncing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Liaq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p1, "x1"    # Ljava/util/concurrent/ConcurrentHashMap;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->updateExtensionByKeysLocal(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method

.method private fetchMessages(Lcom/alibaba/wukong/im/Message;ZZZILcom/alibaba/wukong/Callback;)V
    .locals 17
    .param p1, "cursorMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "isForward"    # Z
    .param p3, "withRpc"    # Z
    .param p4, "updateCache"    # Z
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "ZZZI",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1131
    .local p6, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const/16 v16, 0x0

    .line 1133
    .local v16, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v2, "[TAG] Conv"

    .line 50064
    const-string/jumbo v3, "im"

    invoke-static {v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v16

    .line 1134
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[API] getMsgs, cid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cursor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lhzv;->a(Ljava/lang/String;)V

    .line 1136
    if-gtz p5, :cond_1

    .line 1137
    const-string/jumbo v2, "101002"

    const-string/jumbo v3, "PARAMETER_ERR invalid count"

    move-object/from16 v0, p6

    invoke-static {v0, v2, v3}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[API] Param err cnt="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50065
    invoke-static/range {v16 .. v16}, Lhzt;->a(Lhzv;)V

    .line 1323
    :goto_1
    return-void

    .line 1134
    :cond_0
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 1144
    :cond_1
    invoke-static/range {p6 .. p6}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 50067
    invoke-static/range {v16 .. v16}, Lhzt;->a(Lhzv;)V

    goto :goto_1

    .line 1146
    :cond_2
    :try_start_2
    const-string/jumbo v2, "ListMsg"

    invoke-static {v2}, Lhzs;->a(Ljava/lang/String;)Lhzs$a;

    move-result-object v15

    .line 50069
    .local v15, "statistics":Lhzs$a;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v15, Lhzs$a;->a:J

    .line 1149
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1150
    .local v13, "localList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    const/16 v2, 0x64

    move/from16 v0, p5

    if-le v0, v2, :cond_3

    const/16 v9, 0x64

    .line 1151
    .local v9, "newCount":I
    :goto_2
    new-instance v12, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v12, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1152
    .local v12, "requestCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;

    new-instance v4, Liaf$a;

    move-object/from16 v0, p6

    invoke-direct {v4, v0}, Liaf$a;-><init>(Lcom/alibaba/wukong/Callback;)V

    const/4 v5, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v3

    invoke-virtual {v3}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v14, p4

    invoke-direct/range {v2 .. v15}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;IZZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;ZLhzs$a;)V

    .line 1320
    invoke-virtual {v2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50071
    invoke-static/range {v16 .. v16}, Lhzt;->a(Lhzv;)V

    goto :goto_1

    .end local v9    # "newCount":I
    .end local v12    # "requestCount":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_3
    move/from16 v9, p5

    .line 1150
    goto :goto_2

    .line 1322
    .end local v13    # "localList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v15    # "statistics":Lhzs$a;
    :catchall_0
    move-exception v2

    .line 50073
    invoke-static/range {v16 .. v16}, Lhzt;->a(Lhzv;)V

    .line 1322
    throw v2
.end method

.method private filterMessages(Lcom/alibaba/wukong/im/Message;ZIIZJLcom/alibaba/wukong/Callback;)V
    .locals 10
    .param p1, "cursorObject"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "isForward"    # Z
    .param p3, "count"    # I
    .param p4, "contentType"    # I
    .param p5, "includeCursor"    # Z
    .param p6, "senderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "ZIIZJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1401
    .local p8, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const/4 v0, 0x1

    new-array v4, v0, [I

    const/4 v0, 0x0

    aput p4, v4, v0

    .local v4, "contentTypes":[I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    .line 1402
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->filterMessages(Lcom/alibaba/wukong/im/Message;ZI[IZJLcom/alibaba/wukong/Callback;)V

    .line 1403
    return-void
.end method

.method private filterMessages(Lcom/alibaba/wukong/im/Message;ZI[IZJLcom/alibaba/wukong/Callback;)V
    .locals 20
    .param p1, "cursorObject"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "isForward"    # Z
    .param p3, "count"    # I
    .param p4, "contentTypes"    # [I
    .param p5, "includeCursor"    # Z
    .param p6, "senderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "ZI[IZJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1354
    .local p8, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const/16 v19, 0x0

    .line 1356
    .local v19, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v4, "[TAG] Conv"

    .line 50075
    const-string/jumbo v5, "im"

    invoke-static {v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v19

    .line 1357
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1358
    .local v17, "sbContentTypes":Ljava/lang/StringBuilder;
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    array-length v4, v0

    if-lez v4, :cond_0

    .line 1359
    move-object/from16 v0, p4

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget v16, p4, v4

    .line 1360
    .local v16, "contentType":I
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1361
    const-string/jumbo v6, "|"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1364
    .end local v16    # "contentType":I
    :cond_0
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[API] getMsgs by type, cid="

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1365
    .local v18, "sbInfo":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    const-string/jumbo v4, " cursor="

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    if-nez p1, :cond_1

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1368
    const-string/jumbo v4, " types="

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    const-string/jumbo v4, " sender="

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    move-object/from16 v0, v18

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1372
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 1374
    if-gtz p3, :cond_2

    .line 1375
    const-string/jumbo v4, "101002"

    const-string/jumbo v5, "PARAMETER_ERR invalid count"

    move-object/from16 v0, p8

    invoke-static {v0, v4, v5}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50076
    invoke-static/range {v19 .. v19}, Lhzt;->a(Lhzv;)V

    .line 1394
    :goto_2
    return-void

    .line 1367
    :cond_1
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1

    .line 1381
    :cond_2
    invoke-static/range {p8 .. p8}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    .line 50078
    invoke-static/range {v19 .. v19}, Lhzt;->a(Lhzv;)V

    goto :goto_2

    .line 1382
    :cond_3
    :try_start_2
    new-instance v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl$18;

    new-instance v6, Liaf$a;

    move-object/from16 v0, p8

    invoke-direct {v6, v0}, Liaf$a;-><init>(Lcom/alibaba/wukong/Callback;)V

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v5

    invoke-virtual {v5}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v8

    move-object/from16 v5, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p2

    move-object/from16 v12, p4

    move/from16 v13, p5

    move-wide/from16 v14, p6

    invoke-direct/range {v4 .. v15}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$18;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/Message;IZ[IZJ)V

    .line 1391
    invoke-virtual {v4}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$18;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50080
    invoke-static/range {v19 .. v19}, Lhzt;->a(Lhzv;)V

    goto :goto_2

    .line 1393
    .end local v17    # "sbContentTypes":Ljava/lang/StringBuilder;
    .end local v18    # "sbInfo":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    .line 50082
    invoke-static/range {v19 .. v19}, Lhzt;->a(Lhzv;)V

    .line 1393
    throw v4
.end method

.method public static fromBaseConversationModel(Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;J)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .locals 1
    .param p0, "baseModel"    # Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;
    .param p1, "openId"    # J

    .prologue
    .line 2528
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->fromBaseConversationModel(Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;JLcom/alibaba/wukong/idl/im/models/EntranceConversationPropertyModel;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    return-object v0
.end method

.method public static fromBaseConversationModel(Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;JLcom/alibaba/wukong/idl/im/models/EntranceConversationPropertyModel;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .locals 13
    .param p0, "baseModel"    # Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;
    .param p1, "openId"    # J
    .param p3, "entrancePropertyModel"    # Lcom/alibaba/wukong/idl/im/models/EntranceConversationPropertyModel;

    .prologue
    .line 2533
    if-nez p0, :cond_0

    .line 2534
    const/4 v3, 0x0

    .line 2614
    :goto_0
    return-object v3

    .line 2536
    :cond_0
    new-instance v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-direct {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;-><init>()V

    .line 2537
    .local v3, "object":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->conversationId:Ljava/lang/String;

    iput-object v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    .line 2538
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->type:Ljava/lang/Integer;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v7

    .line 2539
    .local v7, "type":I
    iput v7, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    .line 2540
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->tag:Ljava/lang/Long;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v10

    iput-wide v10, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTag:J

    .line 2541
    const/4 v9, 0x1

    if-ne v7, v9, :cond_5

    .line 2542
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->conversationId:Ljava/lang/String;

    invoke-static {v9, p1, p2}, Liaw;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2543
    .local v4, "otherId":J
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitle:Ljava/lang/String;

    .line 2544
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIcon:Ljava/lang/String;

    .line 2545
    const/4 v9, 0x2

    iput v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTotalMemberCount:I

    .line 2552
    .end local v4    # "otherId":J
    :goto_1
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->createAt:Ljava/lang/Long;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v10

    iput-wide v10, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCreateAt:J

    .line 2553
    const/4 v9, 0x0

    iput-object v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mDraftText:Ljava/lang/String;

    .line 2554
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->status:Ljava/lang/Integer;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->status:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_6

    .line 2555
    sget-object v9, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->HIDE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iput-object v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mStatus:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    .line 2559
    :goto_2
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->extension:Ljava/util/Map;

    invoke-static {v9}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    iput-object v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2560
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->memberExtension:Ljava/util/Map;

    invoke-static {v9}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    iput-object v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2561
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->notificationOff:Ljava/lang/Integer;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v9

    if-nez v9, :cond_7

    const/4 v9, 0x1

    :goto_3
    iput-boolean v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsNotification:Z

    .line 2562
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->sort:Ljava/lang/Long;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v10

    iput-wide v10, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTop:J

    .line 2563
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->memberLimit:Ljava/lang/Integer;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v9

    iput v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMemberLimit:I

    .line 2564
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->superGroup:Ljava/lang/Integer;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v9

    iput v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupLevel:I

    .line 2566
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->unreadPoint:Ljava/lang/Integer;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v8

    .line 2567
    .local v8, "unreadPoint":I
    if-lez v8, :cond_1

    .line 2568
    iput v8, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    .line 2569
    const/4 v9, 0x2

    iput v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mFlag:I

    .line 2571
    :cond_1
    const-string/jumbo v9, "0"

    iget-object v10, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->parentId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x0

    :goto_4
    iput-object v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentId:Ljava/lang/String;

    .line 2572
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->nodeType:Ljava/lang/Integer;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    const/4 v9, 0x1

    :goto_5
    iput-boolean v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsParent:Z

    .line 2573
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->ownerId:Ljava/lang/Long;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v10

    iput-wide v10, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mOwnerId:J

    .line 2574
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->groupValidationInfo:Lcom/alibaba/wukong/idl/im/models/GroupValidationInfoModel;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->groupValidationInfo:Lcom/alibaba/wukong/idl/im/models/GroupValidationInfoModel;

    iget-object v9, v9, Lcom/alibaba/wukong/idl/im/models/GroupValidationInfoModel;->type:Ljava/lang/Integer;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v9

    :goto_6
    iput v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mJoinValidationType:I

    .line 2575
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->banWordsType:Ljava/lang/Integer;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    const/4 v9, 0x1

    :goto_7
    iput-boolean v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsBanWords:Z

    .line 2576
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->inBanWhite:Ljava/lang/Integer;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_c

    const/4 v9, 0x1

    :goto_8
    iput-boolean v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mInBanWhite:Z

    .line 2577
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->inBanBlack:Ljava/lang/Integer;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    const/4 v9, 0x1

    :goto_9
    iput-boolean v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mInBanBlack:Z

    .line 2578
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->banWordsTime:Ljava/lang/Long;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v10

    iput-wide v10, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mBanWordsTime:J

    .line 2579
    iget-object v2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->iconOption:Lcom/alibaba/wukong/idl/im/models/IconOptionModel;

    .line 2580
    .local v2, "iconOptionModel":Lcom/alibaba/wukong/idl/im/models/IconOptionModel;
    if-eqz v2, :cond_2

    .line 2581
    iget-object v9, v2, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->type:Ljava/lang/Integer;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v9

    iput v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIconType:I

    .line 2582
    iget v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIconType:I

    sget-object v10, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->AUTOMATIC:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    invoke-virtual {v10}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->typeValue()I

    move-result v10

    if-ne v9, v10, :cond_e

    .line 2583
    iget-object v0, v2, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->automaticIcon:Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;

    .line 2584
    .local v0, "automaticIconModel":Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;
    if-eqz v0, :cond_2

    .line 2585
    iget-object v9, v0, Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;->automaticIconMediaId:Ljava/lang/String;

    iput-object v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIcon:Ljava/lang/String;

    .line 2586
    iget-object v9, v0, Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;->automaticIconTag:Ljava/lang/Long;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v10

    iput-wide v10, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIconTag:J

    .line 2595
    .end local v0    # "automaticIconModel":Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;
    :cond_2
    :goto_a
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->showHistoryType:Ljava/lang/Integer;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v9

    iput v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mShowHistoryType:I

    .line 2597
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->searchableModel:Lcom/alibaba/wukong/idl/im/models/SearchableModel;

    if-eqz v9, :cond_3

    .line 2598
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->searchableModel:Lcom/alibaba/wukong/idl/im/models/SearchableModel;

    iget-object v9, v9, Lcom/alibaba/wukong/idl/im/models/SearchableModel;->groupId:Ljava/lang/Long;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v10

    iput-wide v10, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupId:J

    .line 2599
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->searchableModel:Lcom/alibaba/wukong/idl/im/models/SearchableModel;

    iget-object v9, v9, Lcom/alibaba/wukong/idl/im/models/SearchableModel;->titleSearchable:Ljava/lang/Integer;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f

    const/4 v9, 0x1

    :goto_b
    iput-boolean v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitleSearchable:Z

    .line 2600
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->searchableModel:Lcom/alibaba/wukong/idl/im/models/SearchableModel;

    iget-object v9, v9, Lcom/alibaba/wukong/idl/im/models/SearchableModel;->groupIdSearchable:Ljava/lang/Integer;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10

    const/4 v9, 0x1

    :goto_c
    iput-boolean v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIdSearchable:Z

    .line 2603
    :cond_3
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->atAllType:Ljava/lang/Integer;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v9

    iput v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAtAllType:I

    .line 2604
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->lastMsgCreateAt:Ljava/lang/Long;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v10

    iput-wide v10, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMsgCreateAt:J

    .line 2605
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->categoryId:Ljava/lang/Long;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v10

    iput-wide v10, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCategoryId:J

    .line 2606
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->entranceId:Ljava/lang/Long;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v10

    iput-wide v10, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mEntranceId:J

    .line 2607
    invoke-static/range {p3 .. p3}, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;->fromIdl(Lcom/alibaba/wukong/idl/im/models/EntranceConversationPropertyModel;)Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;

    move-result-object v6

    .line 2608
    .local v6, "propertyObject":Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;
    if-eqz v6, :cond_4

    .line 2609
    iget-object v9, v6, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;->property:Ljava/lang/String;

    iput-object v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationProperty:Ljava/lang/String;

    .line 2610
    iget-wide v10, v6, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;->version:J

    iput-wide v10, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationVersion:J

    .line 2611
    iget-wide v10, v6, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;->expireTime:J

    iput-wide v10, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationExpireTime:J

    .line 2613
    :cond_4
    invoke-static {v3}, Libb;->j(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v10

    iput-wide v10, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mEntranceId:J

    goto/16 :goto_0

    .line 2547
    .end local v2    # "iconOptionModel":Lcom/alibaba/wukong/idl/im/models/IconOptionModel;
    .end local v6    # "propertyObject":Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;
    .end local v8    # "unreadPoint":I
    :cond_5
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->title:Ljava/lang/String;

    iput-object v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitle:Ljava/lang/String;

    .line 2548
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->icon:Ljava/lang/String;

    iput-object v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIcon:Ljava/lang/String;

    .line 2549
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->memberCount:Ljava/lang/Integer;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v9

    iput v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTotalMemberCount:I

    .line 2550
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->authority:Ljava/lang/Integer;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v9

    iput v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAuthority:I

    goto/16 :goto_1

    .line 2557
    :cond_6
    sget-object v9, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iput-object v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mStatus:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    goto/16 :goto_2

    .line 2561
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 2571
    .restart local v8    # "unreadPoint":I
    :cond_8
    iget-object v9, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->parentId:Ljava/lang/String;

    goto/16 :goto_4

    .line 2572
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 2574
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 2575
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 2576
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_8

    .line 2577
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 2589
    .restart local v2    # "iconOptionModel":Lcom/alibaba/wukong/idl/im/models/IconOptionModel;
    :cond_e
    iget-object v1, v2, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->customIcon:Lcom/alibaba/wukong/idl/im/models/CustomIconModel;

    .line 2590
    .local v1, "customIconModel":Lcom/alibaba/wukong/idl/im/models/CustomIconModel;
    if-eqz v1, :cond_2

    .line 2591
    iget-object v9, v1, Lcom/alibaba/wukong/idl/im/models/CustomIconModel;->customIconMediaId:Ljava/lang/String;

    iput-object v9, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIcon:Ljava/lang/String;

    goto/16 :goto_a

    .line 2599
    .end local v1    # "customIconModel":Lcom/alibaba/wukong/idl/im/models/CustomIconModel;
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_b

    .line 2600
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_c
.end method

.method public static fromConversationModel(Lcom/alibaba/wukong/idl/im/models/ConversationModel;J)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .locals 5
    .param p0, "model"    # Lcom/alibaba/wukong/idl/im/models/ConversationModel;
    .param p1, "openId"    # J

    .prologue
    const/4 v2, 0x0

    .line 2504
    if-nez p0, :cond_1

    move-object v1, v2

    .line 2524
    :cond_0
    :goto_0
    return-object v1

    .line 2507
    :cond_1
    iget-object v3, p0, Lcom/alibaba/wukong/idl/im/models/ConversationModel;->baseConversation:Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;

    invoke-static {v3, p1, p2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->fromBaseConversationModel(Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;J)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 2508
    .local v1, "object":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v1, :cond_2

    move-object v1, v2

    .line 2509
    goto :goto_0

    .line 2511
    :cond_2
    iget-object v2, p0, Lcom/alibaba/wukong/idl/im/models/ConversationModel;->lastMessages:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/wukong/idl/im/models/ConversationModel;->lastMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2512
    iget-object v2, p0, Lcom/alibaba/wukong/idl/im/models/ConversationModel;->lastMessages:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;

    .line 2513
    .local v0, "msgModel":Lcom/alibaba/wukong/idl/im/models/MessageModel;
    invoke-static {v0, p1, p2, v1}, Libt;->a(Lcom/alibaba/wukong/idl/im/models/MessageModel;JLcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    .line 2514
    iget-object v2, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    if-eqz v2, :cond_0

    .line 2515
    iget-object v2, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastModify:J

    goto :goto_0
.end method

.method private getIMContext()Liaq;
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v0

    return-object v0
.end method

.method public static isAbsentOrParent(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 2757
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isChildConversation(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 2758
    .end local p0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getParent()Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChildConversation(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 2715
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->isParent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2716
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHide(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v1, 0x0

    .line 2725
    if-nez p0, :cond_1

    .line 2728
    :cond_0
    :goto_0
    return v1

    .line 2727
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v0

    .line 2728
    .local v0, "status":Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    sget-object v2, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->HIDE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isInvalid(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v1, 0x1

    .line 2748
    if-nez p0, :cond_1

    .line 2751
    :cond_0
    :goto_0
    return v1

    .line 2750
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v0

    .line 2751
    .local v0, "status":Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    sget-object v2, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->QUIT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNormalConversation(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 2720
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->isParent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2721
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOffline(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v1, 0x0

    .line 2732
    if-nez p0, :cond_1

    .line 2735
    :cond_0
    :goto_0
    return v1

    .line 2734
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v0

    .line 2735
    .local v0, "status":Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    sget-object v2, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->OFFLINE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isRootConversation(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 2710
    if-eqz p0, :cond_1

    .line 2711
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->isParent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVisible(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v1, 0x0

    .line 2739
    if-nez p0, :cond_1

    .line 2742
    :cond_0
    :goto_0
    return v1

    .line 2741
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v0

    .line 2742
    .local v0, "status":Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    sget-object v2, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private latestMessageInner()Lcom/alibaba/wukong/im/Message;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    goto :goto_0
.end method

.method public static setComparator(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p0, :cond_0

    .line 230
    sput-object p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->sComparator:Ljava/util/Comparator;

    .line 232
    :cond_0
    return-void
.end method

.method public static setDisplayProxy(Lcom/alibaba/wukong/im/ConversationDisplayProxy;)V
    .locals 0
    .param p0, "proxy"    # Lcom/alibaba/wukong/im/ConversationDisplayProxy;

    .prologue
    .line 225
    sput-object p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mDisplayProxy:Lcom/alibaba/wukong/im/ConversationDisplayProxy;

    .line 226
    return-void
.end method

.method private unreadMessageCountInner()I
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    goto :goto_0
.end method

.method private updateExtensionByKeysLocal(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 798
    .local p1, "extensionByKeys":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->extension()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 799
    .local v0, "copyExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 37020
    new-instance v0, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;

    .end local v0    # "copyExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;-><init>()V

    .line 800
    .restart local v0    # "copyExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 802
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 803
    .local v2, "val":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 804
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 806
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 808
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "val":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Liar;->a(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 809
    iput-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 811
    :cond_3
    return-void
.end method


# virtual methods
.method public final addUnreadCount(I)V
    .locals 2
    .param p1, "delta"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 575
    if-nez p1, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v0

    invoke-virtual {v0}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$2;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public banWordsTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mBanWordsTime:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-wide v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mBanWordsTime:J

    goto :goto_0
.end method

.method public checkUpdateConfigInfo()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2486
    .line 50215
    if-eqz p0, :cond_0

    invoke-static {p0}, Libb;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50216
    :cond_0
    :goto_0
    return-void

    .line 50218
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getPeerId()J

    move-result-wide v2

    .line 50219
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 50223
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getConfigurationExpireTime()J

    move-result-wide v0

    invoke-static {}, Liaf;->c()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    .line 50226
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getConfigurationVersion()J

    move-result-wide v4

    .line 50227
    new-instance v1, Libc$1;

    invoke-direct {v1, v2, v3}, Libc$1;-><init>(J)V

    .line 50251
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Libc$2;

    invoke-direct {v4, v1}, Libc$2;-><init>(Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->getEntranceConversationProperty(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public clear(Lcom/alibaba/wukong/Callback;)V
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
    .line 1688
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    .line 1690
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] Conv"

    .line 50111
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 1691
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] clearConv, cid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 1693
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 50112
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 1715
    :goto_0
    return-void

    .line 1694
    :cond_0
    :try_start_1
    new-instance v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl$26;

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v3

    invoke-virtual {v3}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$26;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 1712
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$26;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50114
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1714
    :catchall_0
    move-exception v1

    .line 50116
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 1714
    throw v1
.end method

.method public final compareTo(Lcom/alibaba/wukong/im/Conversation;)I
    .locals 1
    .param p1, "another"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 2706
    sget-object v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->sComparator:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 66
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->compareTo(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v0

    return v0
.end method

.method public final conversationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    return-object v0
.end method

.method public final copyFrom(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V
    .locals 2
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2630
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2634
    :goto_0
    return-void

    .line 2632
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->copyRemoteAttributes(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    .line 2633
    invoke-virtual {p0, p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->copyLocalAttribute(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    goto :goto_0
.end method

.method public final copyLocalAttribute(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V
    .locals 2
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2637
    if-nez p1, :cond_0

    .line 2646
    :goto_0
    return-void

    .line 2640
    :cond_0
    iget-object v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mDraftText:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mDraftText:Ljava/lang/String;

    .line 2641
    iget-boolean v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAtStatus:Z

    iput-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAtStatus:Z

    .line 2642
    iget-object v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2643
    iget-wide v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastModify:J

    iput-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastModify:J

    .line 2644
    iget v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mFlag:I

    iput v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mFlag:I

    .line 2645
    iget-object v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    goto :goto_0
.end method

.method public final copyRemoteAttributes(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    .line 2649
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->copyRemoteAttributes(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Z)V

    .line 2650
    return-void
.end method

.method public final copyRemoteAttributes(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Z)V
    .locals 2
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p2, "withUnread"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2653
    if-nez p1, :cond_0

    .line 2701
    :goto_0
    return-void

    .line 2656
    :cond_0
    iget-object v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    .line 2657
    iget v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    iput v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    .line 2658
    iget-wide v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTag:J

    iput-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTag:J

    .line 2659
    iget-object v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitle:Ljava/lang/String;

    .line 2660
    iget-object v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIcon:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIcon:Ljava/lang/String;

    .line 2661
    iget-object v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    iput-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    .line 2662
    iget v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTotalMemberCount:I

    iput v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTotalMemberCount:I

    .line 2663
    iget-object v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2664
    iget-object v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2665
    iget-object v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mStatus:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iput-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mStatus:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    .line 2666
    iget-wide v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCreateAt:J

    iput-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCreateAt:J

    .line 2667
    iget-boolean v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsNotification:Z

    iput-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsNotification:Z

    .line 2668
    iget-wide v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTop:J

    iput-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTop:J

    .line 2669
    iget v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAuthority:I

    iput v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAuthority:I

    .line 2670
    iget-object v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMembers:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMembers:Ljava/util/List;

    .line 2671
    iget v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMemberLimit:I

    iput v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMemberLimit:I

    .line 2672
    iget v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupLevel:I

    iput v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupLevel:I

    .line 2673
    iget-object v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentId:Ljava/lang/String;

    .line 2674
    iget-boolean v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsParent:Z

    iput-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsParent:Z

    .line 2675
    iget-wide v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mOwnerId:J

    iput-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mOwnerId:J

    .line 2676
    iget v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mJoinValidationType:I

    iput v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mJoinValidationType:I

    .line 2677
    iget-boolean v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsBanWords:Z

    iput-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsBanWords:Z

    .line 2678
    iget-boolean v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mInBanWhite:Z

    iput-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mInBanWhite:Z

    .line 2679
    iget-boolean v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mInBanBlack:Z

    iput-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mInBanBlack:Z

    .line 2680
    iget-wide v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mBanWordsTime:J

    iput-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mBanWordsTime:J

    .line 2681
    if-eqz p2, :cond_1

    .line 2682
    iget v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    iput v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    .line 2683
    :cond_1
    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mFlag:I

    iget v1, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mFlag:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mFlag:I

    .line 2685
    iget v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIconType:I

    iput v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIconType:I

    .line 2686
    iget-object v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIcon:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIcon:Ljava/lang/String;

    .line 2687
    iget-wide v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIconTag:J

    iput-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIconTag:J

    .line 2688
    iget v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mShowHistoryType:I

    iput v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mShowHistoryType:I

    .line 2690
    iget-wide v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupId:J

    iput-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupId:J

    .line 2691
    iget-boolean v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitleSearchable:Z

    iput-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitleSearchable:Z

    .line 2692
    iget-boolean v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIdSearchable:Z

    iput-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIdSearchable:Z

    .line 2693
    iget v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAtAllType:I

    iput v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAtAllType:I

    .line 2694
    iget-wide v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMsgCreateAt:J

    iput-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMsgCreateAt:J

    .line 2695
    iget-wide v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCategoryId:J

    iput-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCategoryId:J

    .line 2696
    iget-wide v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mEntranceId:J

    iput-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mEntranceId:J

    .line 2697
    iget-object v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationProperty:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationProperty:Ljava/lang/String;

    .line 2698
    iget-wide v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationVersion:J

    iput-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationVersion:J

    .line 2699
    iget-wide v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationExpireTime:J

    iput-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationExpireTime:J

    goto/16 :goto_0
.end method

.method public final createdAt()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 283
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCreateAt:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-wide v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCreateAt:J

    goto :goto_0
.end method

.method public disband(Lcom/alibaba/wukong/Callback;)V
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
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v3, 0x1

    .line 1817
    const/4 v0, 0x0

    .line 1819
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] Conv"

    .line 50136
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 1820
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] disband, cid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 1822
    iget v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    if-ne v1, v3, :cond_0

    .line 1823
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "PARAMETER_ERR, not support chat conversation"

    invoke-static {p1, v1, v2}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50137
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 1850
    :goto_0
    return-void

    .line 1829
    :cond_0
    :try_start_1
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 50139
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1831
    :cond_1
    :try_start_2
    new-instance v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl$29;

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v3

    invoke-virtual {v3}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$29;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 1847
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$29;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50141
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1849
    :catchall_0
    move-exception v1

    .line 50143
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 1849
    throw v1
.end method

.method public final draftMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mDraftText:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mDraftText:Ljava/lang/String;

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2621
    if-eqz p1, :cond_0

    instance-of v3, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 2626
    :cond_1
    :goto_0
    return v1

    .line 2623
    :cond_2
    if-eq p0, p1, :cond_1

    move-object v0, p1

    .line 2625
    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 2626
    .local v0, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    iget-object v3, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final extension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 655
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v1, :cond_2

    .line 656
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-object v0

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 658
    :cond_2
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final extension()Ljava/util/Map;
    .locals 2
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 664
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 666
    .local v0, "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 664
    .end local v0    # "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v0, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    .line 666
    .restart local v0    # "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_1
.end method

.method public forceRemoveFromLocal(Lcom/alibaba/wukong/Callback;)V
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
    .line 842
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    .line 844
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] Conv"

    .line 41014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 845
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] forceRemoveFromLocal, cid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 847
    iget v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 848
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "PARAMETER_ERR, not support chat conversation"

    invoke-static {p1, v1, v2}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 878
    :goto_0
    return-void

    .line 854
    :cond_0
    :try_start_1
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 42030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 856
    :cond_1
    :try_start_2
    new-instance v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl$9;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v3

    invoke-virtual {v3}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$9;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 875
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$9;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 877
    :catchall_0
    move-exception v1

    .line 44030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 877
    throw v1
.end method

.method public genGroupId(Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2304
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 2306
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Conv"

    .line 50192
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 2307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] genGroupId, cid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 2308
    iget-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2309
    iget-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50193
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 2336
    :goto_0
    return-void

    .line 2313
    :cond_0
    :try_start_1
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 50195
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 2314
    :cond_1
    move-object v5, v6

    .line 2315
    .local v5, "finalTrace":Lhzv;
    :try_start_2
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$42;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$42;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lhzv;)V

    .line 2333
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$42;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50197
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 2335
    .end local v5    # "finalTrace":Lhzv;
    :catchall_0
    move-exception v0

    .line 50199
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 2335
    throw v0
.end method

.method public getAtAllType()I
    .locals 1

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAtAllType:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAtAllType:I

    goto :goto_0
.end method

.method public getCategoryId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2436
    iget-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCategoryId:J

    return-wide v0
.end method

.method public getChildren(Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2104
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    const/4 v6, 0x0

    .line 2106
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Conv"

    .line 50154
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 2107
    iget-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsParent:Z

    if-nez v0, :cond_0

    .line 2108
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR not parent conversation"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    const-string/jumbo v0, "[API] param err, not parent conv"

    invoke-virtual {v6, v0}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50155
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 2141
    :goto_0
    return-void

    .line 2115
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$38;

    new-instance v2, Liaf$a;

    invoke-direct {v2, p1}, Liaf$a;-><init>(Lcom/alibaba/wukong/Callback;)V

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$38;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/Callback;)V

    .line 2138
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$38;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50157
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 2140
    :catchall_0
    move-exception v0

    .line 50159
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 2140
    throw v0
.end method

.method public getConfigurationExpireTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2481
    iget-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationExpireTime:J

    return-wide v0
.end method

.method public getConfigurationProperty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationProperty:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigurationVersion()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2476
    iget-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationVersion:J

    return-wide v0
.end method

.method public getEntranceCid()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2462
    iget-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mEntranceId:J

    invoke-static {v0, v1}, Libb;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2463
    iget-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mEntranceId:J

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Liaw;->a(JJZ)Ljava/lang/String;

    move-result-object v0

    .line 2465
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntranceId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2457
    iget-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mEntranceId:J

    return-wide v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 2494
    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mFlag:I

    return v0
.end method

.method public getGroupLevel()I
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupLevel:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupLevel:I

    goto :goto_0
.end method

.method public final getLastModify()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastModify:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-wide v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastModify:J

    goto :goto_0
.end method

.method public getMemberLimit()I
    .locals 1

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMemberLimit:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMemberLimit:I

    goto :goto_0
.end method

.method public getMembers(Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Member;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 519
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Member;>;>;"
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$47;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v2

    invoke-virtual {v2}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$47;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 530
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$47;->start()V

    .line 531
    return-void
.end method

.method public final getMessage(JLcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "messageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1077
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getMessage(JZLcom/alibaba/wukong/Callback;)V

    .line 1078
    return-void
.end method

.method public final getMessage(JZLcom/alibaba/wukong/Callback;)V
    .locals 11
    .param p1, "messageId"    # J
    .param p3, "isSaveDB"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1082
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v0, 0x0

    .line 1084
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] Conv"

    .line 50055
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 1085
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] getMsg, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\uff0c isSaveDB="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 1087
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 1088
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "PARAMETER_ERR invalid messageId"

    invoke-static {p4, v1, v2}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    const-string/jumbo v1, "[API] Param err"

    invoke-virtual {v0, v1}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50056
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 1125
    :goto_0
    return-void

    .line 1095
    :cond_0
    :try_start_1
    invoke-static {p4}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 50058
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1096
    :cond_1
    :try_start_2
    new-instance v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl$16;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v2

    invoke-virtual {v2}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v2, p0

    move-object v3, p4

    move v4, p3

    move-wide v6, p1

    move-object v8, p4

    move v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$16;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;JLcom/alibaba/wukong/Callback;Z)V

    .line 1122
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$16;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50060
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1124
    :catchall_0
    move-exception v1

    .line 50062
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 1124
    throw v1
.end method

.method public getOnlyOwnerModifiable()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1909
    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v2, :cond_2

    iget v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAuthority:I

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget v2, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAuthority:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getOwnerId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mOwnerId:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-wide v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mOwnerId:J

    goto :goto_0
.end method

.method public getParent()Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .locals 1

    .prologue
    .line 2490
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentId:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getPeerId()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Liaw;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowHistoryType()I
    .locals 1

    .prologue
    .line 2259
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mShowHistoryType:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mShowHistoryType:I

    goto :goto_0
.end method

.method public final getTop()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTop:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-wide v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTop:J

    goto :goto_0
.end method

.method public groupIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2199
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIcon:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIcon:Ljava/lang/String;

    goto :goto_0
.end method

.method public groupIconType()I
    .locals 1

    .prologue
    .line 2204
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIconType:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIconType:I

    goto :goto_0
.end method

.method public groupId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2299
    iget-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupId:J

    return-wide v0
.end method

.method public groupIdSearchable()Z
    .locals 1

    .prologue
    .line 2346
    iget-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIdSearchable:Z

    return v0
.end method

.method public final hasUnreadAtMeMessage()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAtStatus:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-boolean v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAtStatus:Z

    goto :goto_0
.end method

.method public hide()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 883
    const/4 v0, 0x0

    .line 885
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] Conv"

    .line 45014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 886
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] hideConv, cid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 888
    const/4 v1, 0x0

    invoke-static {v1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 45030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 908
    :goto_0
    return-void

    .line 889
    :cond_0
    :try_start_1
    new-instance v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl$10;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v4

    invoke-virtual {v4}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$10;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 905
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$10;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 907
    :catchall_0
    move-exception v1

    .line 47030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 907
    throw v1
.end method

.method public final icon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIcon:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIcon:Ljava/lang/String;

    goto :goto_0
.end method

.method public inBanBlack()Z
    .locals 1

    .prologue
    .line 2009
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mInBanBlack:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-boolean v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mInBanBlack:Z

    goto :goto_0
.end method

.method public inBanWhite()Z
    .locals 1

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mInBanWhite:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-boolean v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mInBanWhite:Z

    goto :goto_0
.end method

.method public isBanWords()Z
    .locals 1

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsBanWords:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-boolean v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsBanWords:Z

    goto :goto_0
.end method

.method public isBurn()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2762
    iget-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTag:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isNotificationEnabled()Z
    .locals 1

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsNotification:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-boolean v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsNotification:Z

    goto :goto_0
.end method

.method public isParent()Z
    .locals 1

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsParent:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-boolean v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsParent:Z

    goto :goto_0
.end method

.method public isUnreadCountFromServer()Z
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mFlag:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserBanWords()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2065
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v0

    .line 2066
    .local v0, "currentTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 2067
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2069
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->inBanBlack()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->banWordsTime()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_2

    .line 2079
    :cond_1
    :goto_0
    return v2

    .line 2072
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isBanWords()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2073
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->inBanWhite()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 2074
    goto :goto_0

    :cond_3
    move v2, v3

    .line 2079
    goto :goto_0
.end method

.method public final isValid()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 2194
    invoke-static {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    return v0
.end method

.method public joinValidationType()Lcom/alibaba/wukong/im/Conversation$JoinValidationType;
    .locals 1

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mJoinValidationType:I

    :goto_0
    invoke-static {v0}, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->fromValue(I)Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mJoinValidationType:I

    goto :goto_0
.end method

.method public final latestMessage()Lcom/alibaba/wukong/im/Message;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 374
    sget-object v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mDisplayProxy:Lcom/alibaba/wukong/im/ConversationDisplayProxy;

    if-eqz v0, :cond_0

    .line 375
    sget-object v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mDisplayProxy:Lcom/alibaba/wukong/im/ConversationDisplayProxy;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessageInner()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alibaba/wukong/im/ConversationDisplayProxy;->getLastestMsg(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessageInner()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    goto :goto_0
.end method

.method public listLocalMessages(Lcom/alibaba/wukong/im/Message;I[IZJLcom/alibaba/wukong/Callback;)V
    .locals 17
    .param p1, "cursorMessage"    # Lcom/alibaba/wukong/im/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "count"    # I
    .param p3, "contentTypes"    # [I
    .param p4, "includeCursor"    # Z
    .param p5, "senderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "I[IZJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1538
    .local p7, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const/16 v16, 0x0

    .line 1540
    .local v16, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v3, "[TAG] Conv"

    .line 50100
    const-string/jumbo v4, "im"

    invoke-static {v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v16

    .line 1541
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1542
    .local v14, "sbContentTypes":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v3, v0

    if-lez v3, :cond_0

    .line 1543
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget v2, p3, v3

    .line 1544
    .local v2, "contentType":I
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1545
    const-string/jumbo v5, "|"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1548
    .end local v2    # "contentType":I
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[API] getMsgs by type, cid="

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1549
    .local v15, "sbInfo":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    const-string/jumbo v3, " cursor="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    if-nez p1, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1552
    const-string/jumbo v3, " types="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    const-string/jumbo v3, " sender="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    move-wide/from16 v0, p5

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1556
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lhzv;->a(Ljava/lang/String;)V

    .line 1558
    if-nez p1, :cond_2

    .line 1559
    const-string/jumbo v3, "101002"

    const-string/jumbo v4, "PARAMETER_ERR invalid cursor"

    move-object/from16 v0, p7

    invoke-static {v0, v3, v4}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50101
    invoke-static/range {v16 .. v16}, Lhzt;->a(Lhzv;)V

    .line 1583
    :goto_2
    return-void

    .line 1551
    :cond_1
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1

    .line 1563
    :cond_2
    if-gtz p2, :cond_3

    .line 1564
    const-string/jumbo v3, "101002"

    const-string/jumbo v4, "PARAMETER_ERR invalid count"

    move-object/from16 v0, p7

    invoke-static {v0, v3, v4}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50103
    invoke-static/range {v16 .. v16}, Lhzt;->a(Lhzv;)V

    goto :goto_2

    .line 1570
    :cond_3
    :try_start_2
    invoke-static/range {p7 .. p7}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_4

    .line 50105
    invoke-static/range {v16 .. v16}, Lhzt;->a(Lhzv;)V

    goto :goto_2

    .line 1571
    :cond_4
    :try_start_3
    new-instance v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl$21;

    new-instance v5, Liaf$a;

    move-object/from16 v0, p7

    invoke-direct {v5, v0}, Liaf$a;-><init>(Lcom/alibaba/wukong/Callback;)V

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v4

    invoke-virtual {v4}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v7

    move-object/from16 v4, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-wide/from16 v12, p5

    invoke-direct/range {v3 .. v13}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$21;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/Message;I[IZJ)V

    .line 1580
    invoke-virtual {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$21;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50107
    invoke-static/range {v16 .. v16}, Lhzt;->a(Lhzv;)V

    goto :goto_2

    .line 1582
    .end local v14    # "sbContentTypes":Ljava/lang/StringBuilder;
    .end local v15    # "sbInfo":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v3

    .line 50109
    invoke-static/range {v16 .. v16}, Lhzt;->a(Lhzv;)V

    .line 1582
    throw v3
.end method

.method public final listNextLocalMessages(Lcom/alibaba/wukong/im/Message;IIJLcom/alibaba/wukong/Callback;)V
    .locals 10
    .param p1, "cursorMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "count"    # I
    .param p3, "contentType"    # I
    .param p4, "senderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "IIJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1517
    .local p6, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->filterMessages(Lcom/alibaba/wukong/im/Message;ZIIZJLcom/alibaba/wukong/Callback;)V

    .line 1518
    return-void
.end method

.method public final listNextLocalMessages(Lcom/alibaba/wukong/im/Message;IILcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "cursorMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "count"    # I
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "II",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1329
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const/4 v2, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->filterMessages(Lcom/alibaba/wukong/im/Message;ZIIZJLcom/alibaba/wukong/Callback;)V

    .line 1330
    return-void
.end method

.method public final listNextLocalMessages(Lcom/alibaba/wukong/im/Message;IIZLcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "cursorMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "count"    # I
    .param p3, "contentType"    # I
    .param p4, "include"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "IIZ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1497
    .local p5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const/4 v2, 0x1

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->filterMessages(Lcom/alibaba/wukong/im/Message;ZIIZJLcom/alibaba/wukong/Callback;)V

    .line 1498
    return-void
.end method

.method public listNextLocalMessages(Lcom/alibaba/wukong/im/Message;I[IJLcom/alibaba/wukong/Callback;)V
    .locals 10
    .param p1, "cursorMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "count"    # I
    .param p3, "contentTypes"    # [I
    .param p4, "senderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "I[IJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1522
    .local p6, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->filterMessages(Lcom/alibaba/wukong/im/Message;ZI[IZJLcom/alibaba/wukong/Callback;)V

    .line 1523
    return-void
.end method

.method public listNextLocalMessages(Lcom/alibaba/wukong/im/Message;I[ILcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "cursorMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "count"    # I
    .param p3, "contentTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "I[I",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1335
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const/4 v2, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->filterMessages(Lcom/alibaba/wukong/im/Message;ZI[IZJLcom/alibaba/wukong/Callback;)V

    .line 1336
    return-void
.end method

.method public listNextLocalMessages(Lcom/alibaba/wukong/im/Message;I[IZLcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "cursorMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "count"    # I
    .param p3, "contentTypes"    # [I
    .param p4, "include"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "I[IZ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1502
    .local p5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const/4 v2, 0x1

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->filterMessages(Lcom/alibaba/wukong/im/Message;ZI[IZJLcom/alibaba/wukong/Callback;)V

    .line 1503
    return-void
.end method

.method public final listNextMessages(Lcom/alibaba/wukong/im/Message;ILcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "cursorMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "I",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const/4 v2, 0x1

    .line 1049
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->fetchMessages(Lcom/alibaba/wukong/im/Message;ZZZILcom/alibaba/wukong/Callback;)V

    .line 1050
    return-void
.end method

.method public final listNextMessages(Lcom/alibaba/wukong/im/Message;ZILcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "cursorMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "withRpc"    # Z
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "ZI",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const/4 v2, 0x1

    .line 1063
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, v2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->fetchMessages(Lcom/alibaba/wukong/im/Message;ZZZILcom/alibaba/wukong/Callback;)V

    .line 1064
    return-void
.end method

.method public listNextMessagesAroundAnchor(Lcom/alibaba/wukong/im/Message;ZILcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "cursorMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "withRpc"    # Z
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "ZI",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1040
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->fetchMessages(Lcom/alibaba/wukong/im/Message;ZZZILcom/alibaba/wukong/Callback;)V

    .line 1041
    return-void
.end method

.method public final listPreviousLocalMessages(Lcom/alibaba/wukong/im/Message;IIJLcom/alibaba/wukong/Callback;)V
    .locals 10
    .param p1, "cursorMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "count"    # I
    .param p3, "contentType"    # I
    .param p4, "senderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "IIJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p6, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const/4 v2, 0x0

    .line 1527
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->filterMessages(Lcom/alibaba/wukong/im/Message;ZIIZJLcom/alibaba/wukong/Callback;)V

    .line 1528
    return-void
.end method

.method public final listPreviousLocalMessages(Lcom/alibaba/wukong/im/Message;IILcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "cursorMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "count"    # I
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "II",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const/4 v2, 0x0

    .line 1341
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->filterMessages(Lcom/alibaba/wukong/im/Message;ZIIZJLcom/alibaba/wukong/Callback;)V

    .line 1342
    return-void
.end method

.method public final listPreviousLocalMessages(Lcom/alibaba/wukong/im/Message;IIZLcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "cursorMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "count"    # I
    .param p3, "contentType"    # I
    .param p4, "include"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "IIZ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1507
    .local p5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->filterMessages(Lcom/alibaba/wukong/im/Message;ZIIZJLcom/alibaba/wukong/Callback;)V

    .line 1508
    return-void
.end method

.method public listPreviousLocalMessages(Lcom/alibaba/wukong/im/Message;I[IJLcom/alibaba/wukong/Callback;)V
    .locals 10
    .param p1, "cursorMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "count"    # I
    .param p3, "contentTypes"    # [I
    .param p4, "senderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "I[IJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p6, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const/4 v2, 0x0

    .line 1532
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, v2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->filterMessages(Lcom/alibaba/wukong/im/Message;ZI[IZJLcom/alibaba/wukong/Callback;)V

    .line 1533
    return-void
.end method

.method public listPreviousLocalMessages(Lcom/alibaba/wukong/im/Message;I[ILcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "cursorMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "count"    # I
    .param p3, "contentTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "I[I",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const/4 v2, 0x0

    .line 1347
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, v2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->filterMessages(Lcom/alibaba/wukong/im/Message;ZI[IZJLcom/alibaba/wukong/Callback;)V

    .line 1348
    return-void
.end method

.method public listPreviousLocalMessages(Lcom/alibaba/wukong/im/Message;I[IZLcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "cursorMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "count"    # I
    .param p3, "contentTypes"    # [I
    .param p4, "include"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "I[IZ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1512
    .local p5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->filterMessages(Lcom/alibaba/wukong/im/Message;ZI[IZJLcom/alibaba/wukong/Callback;)V

    .line 1513
    return-void
.end method

.method public final listPreviousMessages(Lcom/alibaba/wukong/im/Message;ILcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "cursorMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "I",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1054
    if-nez p1, :cond_0

    .line 1055
    const/4 v1, 0x0

    move-object v0, p0

    move v3, v2

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->fetchMessages(Lcom/alibaba/wukong/im/Message;ZZZILcom/alibaba/wukong/Callback;)V

    .line 1059
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v3, v4

    move v5, p2

    move-object v6, p3

    .line 1057
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->fetchMessages(Lcom/alibaba/wukong/im/Message;ZZZILcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final listPreviousMessages(Lcom/alibaba/wukong/im/Message;ZILcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "cursorMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "withRpc"    # Z
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "ZI",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1068
    .line 1071
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->fetchMessages(Lcom/alibaba/wukong/im/Message;ZZZILcom/alibaba/wukong/Callback;)V

    .line 1073
    return-void
.end method

.method public listPreviousMessagesAroundAnchor(Lcom/alibaba/wukong/im/Message;ZILcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "cursorMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "withRpc"    # Z
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "ZI",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const/4 v2, 0x0

    .line 1044
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, v2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->fetchMessages(Lcom/alibaba/wukong/im/Message;ZZZILcom/alibaba/wukong/Callback;)V

    .line 1045
    return-void
.end method

.method public listUserBanModel(Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/UserBanObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2087
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/UserBanObject;>;>;"
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2100
    :goto_0
    return-void

    .line 2088
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$37;

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v2

    invoke-virtual {v2}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$37;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 2099
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$37;->start()V

    goto :goto_0
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
    .line 449
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0
.end method

.method public notificationSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mNotificationSound:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mNotificationSound:Ljava/lang/String;

    goto :goto_0
.end method

.method public final privateExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 405
    :goto_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 408
    :cond_1
    iget-object p0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    goto :goto_0
.end method

.method public final quit(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v2, 0x1

    .line 1001
    const/4 v6, 0x0

    .line 1003
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Conv"

    .line 50046
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] quitConv, cid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 1005
    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    if-ne v0, v2, :cond_0

    .line 1006
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR, not support chat conversation"

    invoke-static {p2, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50047
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 1036
    :goto_0
    return-void

    .line 1011
    :cond_0
    :try_start_1
    invoke-static {p2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 50049
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1013
    :cond_1
    :try_start_2
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$15;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$15;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/Message;)V

    .line 1033
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$15;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50051
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1035
    :catchall_0
    move-exception v0

    .line 50053
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 1035
    throw v0
.end method

.method public quitSilent(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v2, 0x1

    .line 1775
    const/4 v6, 0x0

    .line 1777
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Conv"

    .line 50127
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 1778
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] quitSilent, cid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 1780
    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    if-ne v0, v2, :cond_0

    .line 1781
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR, not support chat conversation"

    invoke-static {p2, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50128
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 1811
    :goto_0
    return-void

    .line 1787
    :cond_0
    :try_start_1
    invoke-static {p2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 50130
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1789
    :cond_1
    :try_start_2
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$28;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$28;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/Message;)V

    .line 1808
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$28;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50132
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1810
    :catchall_0
    move-exception v0

    .line 50134
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 1810
    throw v0
.end method

.method public final remove()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 815
    const/4 v0, 0x0

    .line 817
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] Conv"

    .line 38014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] removeConv, cid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 820
    const/4 v1, 0x0

    invoke-static {v1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 38030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 837
    :goto_0
    return-void

    .line 821
    :cond_0
    :try_start_1
    new-instance v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl$8;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v4

    invoke-virtual {v4}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$8;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 834
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$8;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 836
    :catchall_0
    move-exception v1

    .line 40030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 836
    throw v1
.end method

.method public removeAndClearMessage()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 913
    const/4 v0, 0x0

    .line 915
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] Conv"

    .line 48014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 916
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] removeClearConv, cid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 918
    const/4 v1, 0x0

    invoke-static {v1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 48030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 942
    :goto_0
    return-void

    .line 919
    :cond_0
    :try_start_1
    new-instance v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl$11;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v4

    invoke-virtual {v4}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$11;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 939
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$11;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 941
    :catchall_0
    move-exception v1

    .line 50030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 941
    throw v1
.end method

.method public removeLocalPreviousMessages(Lcom/alibaba/wukong/im/Message;)V
    .locals 8
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 947
    invoke-static {v1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 948
    :cond_1
    if-eqz p1, :cond_0

    .line 949
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v6

    .line 950
    .local v6, "modifyTime":J
    const/4 v0, 0x0

    .line 952
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] Conv"

    .line 50032
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 953
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] remove local, cid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",mid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 954
    new-instance v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl$13;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v2

    invoke-virtual {v2}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$13;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;J)V

    .line 960
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$13;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50033
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 962
    :catchall_0
    move-exception v1

    .line 50035
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 962
    throw v1
.end method

.method public final resetUnreadCount()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 558
    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    if-nez v0, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v0

    invoke-virtual {v0}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl$49;

    invoke-direct {v1, p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$49;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public sendTypingEvent(Lcom/alibaba/wukong/im/Conversation$TypingCommand;Lcom/alibaba/wukong/im/Conversation$TypingType;)V
    .locals 3
    .param p1, "command"    # Lcom/alibaba/wukong/im/Conversation$TypingCommand;
    .param p2, "type"    # Lcom/alibaba/wukong/im/Conversation$TypingType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1856
    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1865
    :goto_0
    return-void

    .line 1859
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getWKExecutor()Lcom/alibaba/wukong/WKExecutor;

    move-result-object v0

    new-instance v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl$30;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$30;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/Conversation$TypingCommand;Lcom/alibaba/wukong/im/Conversation$TypingType;)V

    sget-object v2, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/WKExecutor;->execute(Ljava/lang/Runnable;Lcom/alibaba/doraemon/Priority;)V

    goto :goto_0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setLastMessage(Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 2449
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    .line 2450
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-eqz v0, :cond_0

    .line 2451
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput-object p1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    .line 2453
    :cond_0
    return-void
.end method

.method public setOnlyOwnerModifiable(ZLcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "canModify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v0, 0x1

    .line 1870
    const/4 v6, 0x0

    .line 1871
    .local v6, "trace":Lhzv;
    if-eqz p1, :cond_0

    move v5, v0

    .line 1873
    .local v5, "authority":I
    :goto_0
    :try_start_0
    const-string/jumbo v1, "[TAG] Conv"

    .line 50145
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 1874
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] setOnlyOwnerModifiable, cid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " canModify:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 1876
    iget v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    if-ne v1, v0, :cond_1

    .line 1877
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR, not support chat conversation"

    invoke-static {p2, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50146
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 1903
    :goto_1
    return-void

    .line 1871
    .end local v5    # "authority":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 1883
    .restart local v5    # "authority":I
    :cond_1
    :try_start_1
    invoke-static {p2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 50148
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_1

    .line 1885
    :cond_2
    :try_start_2
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$31;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$31;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;I)V

    .line 1900
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$31;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50150
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_1

    .line 1902
    :catchall_0
    move-exception v0

    .line 50152
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 1902
    throw v0
.end method

.method public setTop(Z)V
    .locals 2
    .param p1, "top"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1451
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    iput-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTop:J

    .line 1452
    return-void

    .line 1451
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setUnreadCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 2441
    iput p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    .line 2442
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-eqz v0, :cond_0

    .line 2443
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput p1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    .line 2445
    :cond_0
    return-void
.end method

.method public final status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mStatus:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mStatus:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    goto :goto_0
.end method

.method public final stayOnTop(ZLcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "toTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1457
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 1459
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Conv"

    .line 50093
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] setTop, cid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 1462
    invoke-static {p2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 50094
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 1482
    :goto_0
    return-void

    .line 1463
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$20;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$20;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Z)V

    .line 1479
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$20;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50096
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1481
    :catchall_0
    move-exception v0

    .line 50098
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 1481
    throw v0
.end method

.method public final declared-synchronized sync()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsNotSnapshot:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 240
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    .line 244
    iget-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsSyncing:Z

    if-nez v0, :cond_0

    .line 248
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    .line 3412
    invoke-static {v0}, Liar;->e(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 248
    iput-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 249
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsSyncing:Z

    .line 253
    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v0

    invoke-virtual {v0}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl$1;

    invoke-direct {v1, p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$1;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final tag()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 612
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTag:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-wide v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTag:J

    goto :goto_0
.end method

.method public final title()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    .line 275
    invoke-static {}, Lcom/alibaba/wukong/im/ConversationTitleManager;->getInstance()Lcom/alibaba/wukong/im/ConversationTitleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/wukong/im/ConversationTitleManager;->getLocaleTitle(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/im/ConversationTitleManager;->getInstance()Lcom/alibaba/wukong/im/ConversationTitleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v2, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationTitleManager;->getLocaleTitle(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public titleSearchable()Z
    .locals 1

    .prologue
    .line 2341
    iget-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitleSearchable:Z

    return v0
.end method

.method public final totalMembers()I
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTotalMemberCount:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mSyncConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTotalMemberCount:I

    goto :goto_0
.end method

.method public final type()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    return v0
.end method

.method public final unreadMessageCount()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 387
    sget-object v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mDisplayProxy:Lcom/alibaba/wukong/im/ConversationDisplayProxy;

    if-eqz v0, :cond_0

    .line 388
    sget-object v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mDisplayProxy:Lcom/alibaba/wukong/im/ConversationDisplayProxy;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->unreadMessageCountInner()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/alibaba/wukong/im/ConversationDisplayProxy;->getUnreadCount(Lcom/alibaba/wukong/im/Conversation;I)I

    move-result v0

    .line 390
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->unreadMessageCountInner()I

    move-result v0

    goto :goto_0
.end method

.method public updateAtAllType(ILcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    .line 2393
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v8, 0x0

    .line 2395
    .local v8, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Conv"

    .line 50208
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v8

    .line 2396
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2397
    .local v7, "sbStr":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "[API] update@allType, cid="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2398
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2399
    const-string/jumbo v0, ", type="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2400
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2401
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 2404
    invoke-static {p2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 50209
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 2426
    :goto_0
    return-void

    .line 2405
    :cond_0
    move-object v6, v8

    .line 2406
    .local v6, "finalTrace":Lhzv;
    :try_start_1
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$44;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$44;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;ILhzv;)V

    .line 2423
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$44;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50211
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 2425
    .end local v6    # "finalTrace":Lhzv;
    .end local v7    # "sbStr":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    .line 50213
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 2425
    throw v0
.end method

.method public final updateAtMeStatus(Z)V
    .locals 2
    .param p1, "hasAt"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAtStatus:Z

    if-ne v0, p1, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v0

    invoke-virtual {v0}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl$48;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$48;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateBanWords(ZLcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "isBan"    # Z
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/alibaba/wukong/im/Message;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1968
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    iget-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsBanWords:Z

    if-ne p1, v0, :cond_1

    .line 1969
    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 2000
    :cond_0
    :goto_0
    return-void

    .line 1973
    :cond_1
    invoke-static {p3}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1974
    if-nez p2, :cond_2

    .line 1975
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR, not support system message"

    invoke-static {p3, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1979
    :cond_2
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$33;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p3

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$33;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;ZLcom/alibaba/wukong/im/Message;)V

    .line 1999
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$33;->start()V

    goto :goto_0
.end method

.method public updateBanWordsBlacklist(Lcom/alibaba/wukong/im/UpdateBanWordsBlacklistObject;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "updateBanWordsBlacklistObject"    # Lcom/alibaba/wukong/im/UpdateBanWordsBlacklistObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/UpdateBanWordsBlacklistObject;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2043
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {p2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2061
    :goto_0
    return-void

    .line 2044
    :cond_0
    if-nez p1, :cond_1

    .line 2045
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR, not support update param 0"

    invoke-static {p2, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2049
    :cond_1
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$36;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$36;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/UpdateBanWordsBlacklistObject;)V

    .line 2060
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$36;->start()V

    goto :goto_0
.end method

.method public updateBanWordsWhitelist(Lcom/alibaba/wukong/im/UpdateBanWordsWhitelistObject;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "updateBanWordsWhitelistObject"    # Lcom/alibaba/wukong/im/UpdateBanWordsWhitelistObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/UpdateBanWordsWhitelistObject;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2020
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {p2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2038
    :goto_0
    return-void

    .line 2021
    :cond_0
    if-nez p1, :cond_1

    .line 2022
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR, not support update param 0"

    invoke-static {p2, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2026
    :cond_1
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$35;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$35;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/UpdateBanWordsWhitelistObject;)V

    .line 2037
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$35;->start()V

    goto :goto_0
.end method

.method public final updateDraftMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "draft"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 598
    const/4 v0, 0x0

    invoke-static {v0}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    :goto_0
    return-void

    .line 599
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v0

    invoke-virtual {v0}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$3;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final updateExtension(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 703
    const/4 v6, 0x0

    .line 705
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Conv"

    .line 29014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] updateExt, cid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 29030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 736
    :goto_0
    return-void

    .line 710
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 30030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 712
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    .line 713
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Liea;->b(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    .line 717
    .local v5, "extension":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v5, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$6;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$6;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 733
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$6;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 31020
    .end local v5    # "extension":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    new-instance v5, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;

    invoke-direct {v5}, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 715
    .restart local v5    # "extension":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 735
    .end local v5    # "extension":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    .line 32030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 735
    throw v0
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
    .line 671
    .local p1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 673
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Conv"

    .line 25014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] updateExt, cid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 25030
    :cond_1
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 698
    :goto_0
    return-void

    .line 678
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 26030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 679
    :cond_3
    :try_start_2
    invoke-static {p1}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    .line 680
    .local v5, "finalExtension":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$5;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$5;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 695
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$5;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 697
    .end local v5    # "finalExtension":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    .line 28030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 697
    throw v0
.end method

.method public updateExtensionByKeys(Ljava/util/Map;)V
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
    .line 745
    .local p1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->updateExtensionByKeys(Ljava/util/Map;Lcom/alibaba/wukong/Callback;)V

    .line 746
    return-void
.end method

.method public updateExtensionByKeys(Ljava/util/Map;Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 750
    .local p1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->updateExtensionByKeys(Ljava/util/Map;ZLcom/alibaba/wukong/Callback;)V

    .line 751
    return-void
.end method

.method public updateExtensionByKeys(Ljava/util/Map;ZLcom/alibaba/wukong/Callback;)V
    .locals 8
    .param p2, "syncServer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 756
    .local p1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v7, 0x0

    .line 758
    .local v7, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Conv"

    .line 33014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v7

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] updateExtByKeys, cid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 760
    if-nez p1, :cond_0

    .line 761
    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 794
    :goto_0
    return-void

    .line 764
    :cond_0
    :try_start_1
    invoke-static {p3}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 34030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 765
    :cond_1
    :try_start_2
    invoke-static {p1}, Liea;->b(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    .line 766
    .local v5, "extensionByKeys":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 767
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 768
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 793
    .end local v5    # "extensionByKeys":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    .line 36030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 793
    throw v0

    .line 771
    .restart local v5    # "extensionByKeys":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    if-eqz p2, :cond_4

    .line 772
    :try_start_3
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$7;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$7;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 786
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$7;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35030
    :goto_2
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 789
    :cond_4
    :try_start_4
    invoke-direct {p0, v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->updateExtensionByKeysLocal(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 790
    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public updateGroupIcon(Lcom/alibaba/wukong/im/Conversation$GroupIconType;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "type"    # Lcom/alibaba/wukong/im/Conversation$GroupIconType;
    .param p2, "iconUrl"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation$GroupIconType;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Message;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/GroupIconObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/GroupIconObject;>;"
    const/4 v2, 0x1

    .line 2209
    const/4 v8, 0x0

    .line 2211
    .local v8, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Conv"

    .line 50172
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v8

    .line 2212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] updateGroupIcon, cid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 2213
    if-nez p1, :cond_0

    .line 2214
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR, groupType is null"

    invoke-static {p4, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50173
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 2254
    :goto_0
    return-void

    .line 2218
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    if-ne v0, v2, :cond_1

    .line 2219
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR, not support chat conversation"

    invoke-static {p4, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50175
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 2224
    :cond_1
    :try_start_2
    invoke-static {p4}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 50177
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 2225
    :cond_2
    :try_start_3
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$40;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p4

    move-object v5, p3

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$40;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation$GroupIconType;Ljava/lang/String;)V

    .line 2251
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$40;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50179
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 2253
    :catchall_0
    move-exception v0

    .line 50181
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 2253
    throw v0
.end method

.method public updateGroupLevel(ILcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "groupLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1661
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupLevel:I

    if-ne v0, p1, :cond_1

    .line 1662
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 1684
    :cond_0
    :goto_0
    return-void

    .line 1666
    :cond_1
    invoke-static {p2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1667
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$25;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$25;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;I)V

    .line 1683
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$25;->start()V

    goto :goto_0
.end method

.method public final updateIcon(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V
    .locals 8
    .param p1, "iconUrl"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Message;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v2, 0x1

    .line 334
    const/4 v7, 0x0

    .line 336
    .local v7, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Conv"

    .line 8014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v7

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] updateIcon, cid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 338
    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    if-ne v0, v2, :cond_0

    .line 339
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR, not support chat conversation"

    invoke-static {p3, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 369
    :goto_0
    return-void

    .line 345
    :cond_0
    :try_start_1
    invoke-static {p3}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 9030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 347
    :cond_1
    :try_start_2
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$23;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$23;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$23;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    .line 11030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 368
    throw v0
.end method

.method public updateJoinValidationType(Lcom/alibaba/wukong/im/Conversation$JoinValidationType;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "type"    # Lcom/alibaba/wukong/im/Conversation$JoinValidationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation$JoinValidationType;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1935
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    if-eqz p1, :cond_1

    iget v5, p1, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->value:I

    .line 1936
    .local v5, "t":I
    :goto_0
    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mJoinValidationType:I

    if-ne v5, v0, :cond_2

    .line 1937
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 1959
    :cond_0
    :goto_1
    return-void

    .line 1935
    .end local v5    # "t":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1941
    .restart local v5    # "t":I
    :cond_2
    invoke-static {p2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1942
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$32;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$32;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;I)V

    .line 1958
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$32;->start()V

    goto :goto_1
.end method

.method public updateLocalExtras(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 507
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 508
    .local v0, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-virtual {p0, v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->updateLocalExtrasByKeys(Ljava/util/Map;)V

    .line 510
    return-void
.end method

.method public final updateLocalExtras(Ljava/util/Map;)V
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
    .line 454
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 456
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Conv"

    .line 15014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] updateExtras, cid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 458
    const/4 v0, 0x0

    invoke-static {v0}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 15030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 470
    :goto_0
    return-void

    .line 459
    :cond_0
    :try_start_1
    invoke-static {p1}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    .line 460
    .local v5, "finalExtra":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$45;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->e()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$45;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 467
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$45;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 469
    .end local v5    # "finalExtra":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    .line 17030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 469
    throw v0
.end method

.method public updateLocalExtrasByKeys(Ljava/util/Map;)V
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
    .line 475
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    const/4 v6, 0x0

    .line 479
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Conv"

    .line 18014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] updateExtrasByKeys, cid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 481
    const/4 v0, 0x0

    invoke-static {v0}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 18030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 482
    :cond_2
    :try_start_1
    invoke-static {p1}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    .line 483
    .local v5, "finalExtra":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$46;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->e()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$46;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 499
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$46;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 501
    .end local v5    # "finalExtra":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    .line 20030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 501
    throw v0
.end method

.method public updateMemberLimit(ILcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1624
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    if-gtz p1, :cond_1

    .line 1625
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid limit value"

    invoke-static {p2, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    :cond_0
    :goto_0
    return-void

    .line 1629
    :cond_1
    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMemberLimit:I

    if-ne v0, p1, :cond_2

    .line 1630
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto :goto_0

    .line 1634
    :cond_2
    invoke-static {p2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1635
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$24;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$24;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;I)V

    .line 1651
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$24;->start()V

    goto :goto_0
.end method

.method public updateMemberRoles(Ljava/util/List;Ljava/util/List;Lcom/alibaba/wukong/im/Member$RoleType;Lcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p3, "roleType"    # Lcom/alibaba/wukong/im/Member$RoleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Lcom/alibaba/wukong/im/Member$RoleType;",
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
    .line 2146
    .local p1, "openIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v8, 0x0

    .line 2148
    .local v8, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Conv"

    .line 50161
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v8

    .line 2149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] updateMemberRoles, cid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "openId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 2151
    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2152
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR, not support chat conversation"

    invoke-static {p4, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50162
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 2189
    :goto_0
    return-void

    .line 2156
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2157
    :cond_1
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR, openIds null or empty"

    invoke-static {p4, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50164
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 2163
    :cond_2
    :try_start_2
    invoke-static {p4}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 50166
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 2165
    :cond_3
    :try_start_3
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$39;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p4

    move-object v5, p1

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$39;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/List;Lcom/alibaba/wukong/im/Member$RoleType;Ljava/util/List;)V

    .line 2186
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$39;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50168
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 2188
    :catchall_0
    move-exception v0

    .line 50170
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 2188
    throw v0
.end method

.method public final updateNotification(ZLcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1412
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v6, 0x0

    .line 1414
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Conv"

    .line 50084
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 1415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] updateNotify, cid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 1416
    iget-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsNotification:Z

    if-ne v0, p1, :cond_0

    .line 1417
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50085
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 1441
    :goto_0
    return-void

    .line 1421
    :cond_0
    :try_start_1
    invoke-static {p2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 50087
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1422
    :cond_1
    :try_start_2
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$19;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$19;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Z)V

    .line 1438
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$19;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50089
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1440
    :catchall_0
    move-exception v0

    .line 50091
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 1440
    throw v0
.end method

.method public updateNotificationSound(Ljava/lang/String;)V
    .locals 6
    .param p1, "sound"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1593
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mNotificationSound:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1614
    :cond_0
    :goto_0
    return-void

    .line 1596
    :cond_1
    invoke-static {v2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1597
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$22;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$22;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 1613
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$22;->start()V

    goto :goto_0
.end method

.method public updateOwner(JLcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "openId"    # J
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/im/Message;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v2, 0x1

    .line 1720
    const/4 v8, 0x0

    .line 1722
    .local v8, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Conv"

    .line 50118
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v8

    .line 1723
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] updateOwner, cid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "openId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 1725
    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    if-ne v0, v2, :cond_0

    .line 1726
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR, not support chat conversation"

    invoke-static {p4, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50119
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 1770
    :goto_0
    return-void

    .line 1732
    :cond_0
    :try_start_1
    invoke-static {p4}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 50121
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1734
    :cond_1
    :try_start_2
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$27;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p4

    move-object v5, p3

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$27;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/Message;J)V

    .line 1767
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$27;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50123
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1769
    :catchall_0
    move-exception v0

    .line 50125
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 1769
    throw v0
.end method

.method public updatePrivateExtension(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 413
    const/4 v6, 0x0

    .line 415
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Conv"

    .line 12014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] updatePriExt, cid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 418
    const/4 v0, 0x0

    invoke-static {v0}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 12030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 444
    :goto_0
    return-void

    .line 420
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Liea;->b(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    .line 425
    .local v5, "extension":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v5, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$34;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$34;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 441
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$34;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 13020
    .end local v5    # "extension":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_2
    new-instance v5, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;

    invoke-direct {v5}, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 423
    .restart local v5    # "extension":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 443
    .end local v5    # "extension":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    .line 14030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 443
    throw v0
.end method

.method public updateSearchable(Lcom/alibaba/wukong/Callback;ZZ)V
    .locals 10
    .param p2, "titleSearchable"    # Z
    .param p3, "groupIdSearchable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2351
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v9, 0x0

    .line 2353
    .local v9, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Conv"

    .line 50201
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v9

    .line 2354
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2355
    .local v8, "sbStr":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "[API] updateSearchable, cid="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2356
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2357
    const-string/jumbo v0, ", ts="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2358
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2359
    const-string/jumbo v0, ", gis="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2360
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2361
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 2364
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 50202
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    .line 2388
    :goto_0
    return-void

    .line 2365
    :cond_0
    move-object v7, v9

    .line 2366
    .local v7, "finalTrace":Lhzv;
    :try_start_1
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$43;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$43;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;ZZLhzv;)V

    .line 2385
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$43;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50204
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 2387
    .end local v7    # "finalTrace":Lhzv;
    .end local v8    # "sbStr":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    .line 50206
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    .line 2387
    throw v0
.end method

.method public updateShowHistoryType(ILcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v2, 0x1

    .line 2264
    const/4 v6, 0x0

    .line 2266
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Conv"

    .line 50183
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 2267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] updateShowHistoryType, cid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 2268
    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    if-ne v0, v2, :cond_0

    .line 2269
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR, not support chat conversation"

    invoke-static {p2, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50184
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 2294
    :goto_0
    return-void

    .line 2274
    :cond_0
    :try_start_1
    invoke-static {p2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 50186
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 2275
    :cond_1
    :try_start_2
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$41;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$41;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;I)V

    .line 2291
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$41;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50188
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 2293
    :catchall_0
    move-exception v0

    .line 50190
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 2293
    throw v0
.end method

.method public final updateTag(J)V
    .locals 1
    .param p1, "tag"    # J

    .prologue
    .line 617
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->updateTag(JLcom/alibaba/wukong/Callback;)V

    .line 618
    return-void
.end method

.method public updateTag(JLcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "tag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 622
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    .line 624
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] Conv"

    .line 21014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] updateTag, cid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 626
    iget-wide v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTag:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 627
    const/4 v1, 0x0

    invoke-static {p3, v1}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 650
    :goto_0
    return-void

    .line 631
    :cond_0
    :try_start_1
    invoke-static {p3}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 22030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 632
    :cond_1
    :try_start_2
    new-instance v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl$4;

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v2

    invoke-virtual {v2}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v2, p0

    move-object v3, p3

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$4;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;J)V

    .line 647
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$4;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 649
    :catchall_0
    move-exception v1

    .line 24030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 649
    throw v1
.end method

.method public final updateTitle(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Message;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v2, 0x1

    .line 289
    const/4 v7, 0x0

    .line 291
    .local v7, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Conv"

    .line 4014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v7

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] updateTitle, cid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 294
    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    if-ne v0, v2, :cond_0

    .line 295
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR, not support chat conversation"

    invoke-static {p3, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 324
    :goto_0
    return-void

    .line 300
    :cond_0
    :try_start_1
    invoke-static {p3}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 5030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 302
    :cond_1
    :try_start_2
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$12;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$12;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$12;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    .line 7030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 323
    throw v0
.end method

.method public final updateToVisible()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 968
    const/4 v0, 0x0

    .line 970
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] Conv"

    .line 50037
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 971
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] updateVisible, cid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 972
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mStatus:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    sget-object v2, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->HIDE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_0

    .line 50038
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 996
    :goto_0
    return-void

    .line 974
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 50040
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 975
    :cond_1
    :try_start_2
    new-instance v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl$14;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getIMContext()Liaq;

    move-result-object v4

    invoke-virtual {v4}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$14;-><init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 993
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl$14;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50042
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 995
    :catchall_0
    move-exception v1

    .line 50044
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 995
    throw v1
.end method
