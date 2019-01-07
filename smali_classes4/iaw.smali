.class public final Liaw;
.super Ljava/lang/Object;
.source "ConversationServiceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/ConversationService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liaw$a;,
        Liaw$b;
    }
.end annotation


# static fields
.field private static volatile a:J

.field private static volatile b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    const-wide/16 v0, 0x0

    sput-wide v0, Liaw;->a:J

    .line 85
    const/4 v0, 0x0

    sput-object v0, Liaw;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Liaw;-><init>()V

    return-void
.end method

.method static synthetic a(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 80
    sput-wide p0, Liaw;->a:J

    return-wide p0
.end method

.method public static a(Ljava/lang/String;J)J
    .locals 5
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "myUid"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 812
    if-nez p0, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-wide v0

    .line 813
    :cond_1
    const-string/jumbo v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 814
    .local v2, "uids":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 816
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Lieb;->g(Ljava/lang/String;)J

    move-result-wide v0

    .line 817
    .local v0, "uid":J
    cmp-long v3, v0, p1

    if-nez v3, :cond_0

    .line 818
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Lieb;->g(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/wukong/im/CreateConversationParams;)Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/wukong/im/CreateConversationParams;

    .prologue
    .line 80
    .line 50107
    if-nez p0, :cond_0

    .line 50108
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 50109
    :cond_0
    new-instance v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;

    invoke-direct {v1}, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;-><init>()V

    .line 50110
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/CreateConversationParams;->getOpenIds()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->openIds:Ljava/util/List;

    .line 50111
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/CreateConversationParams;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->title:Ljava/lang/String;

    .line 50112
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/CreateConversationParams;->getIcon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->icon:Ljava/lang/String;

    .line 50113
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/CreateConversationParams;->getExtension()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->extension:Ljava/util/Map;

    .line 50114
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/CreateConversationParams;->getTag()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->tag:Ljava/lang/Long;

    .line 50115
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/CreateConversationParams;->getTypeMask()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->type:Ljava/lang/Integer;

    .line 50116
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/CreateConversationParams;->getMemberLimit()I

    move-result v0

    if-gez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->memberLimit:Ljava/lang/Integer;

    .line 50117
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/CreateConversationParams;->getGroupLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->superGroup:Ljava/lang/Integer;

    .line 50118
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/CreateConversationParams;->getUnique()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->unique:Ljava/lang/Integer;

    .line 50119
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/CreateConversationParams;->getShowHistoryType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->showHistoryType:Ljava/lang/Integer;

    .line 50120
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/CreateConversationParams;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->uuid:Ljava/lang/String;

    .line 50121
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/CreateConversationParams;->getGroupIconObject()Lcom/alibaba/wukong/im/GroupIconObject;

    move-result-object v0

    .line 50122
    if-eqz v0, :cond_1

    .line 50123
    new-instance v2, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;

    invoke-direct {v2}, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;-><init>()V

    .line 50124
    iget v3, v0, Lcom/alibaba/wukong/im/GroupIconObject;->groupIconType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->type:Ljava/lang/Integer;

    .line 50125
    iget-object v3, v2, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->type:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->AUTOMATIC:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->typeValue()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 50126
    new-instance v3, Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;

    invoke-direct {v3}, Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;-><init>()V

    .line 50127
    iget-object v4, v0, Lcom/alibaba/wukong/im/GroupIconObject;->groupIcon:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;->automaticIconMediaId:Ljava/lang/String;

    .line 50128
    iget-wide v4, v0, Lcom/alibaba/wukong/im/GroupIconObject;->groupIconTag:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;->automaticIconTag:Ljava/lang/Long;

    .line 50129
    iput-object v3, v2, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->automaticIcon:Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;

    .line 50135
    :goto_2
    iput-object v2, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->iconOption:Lcom/alibaba/wukong/idl/im/models/IconOptionModel;

    :cond_1
    move-object v0, v1

    .line 80
    goto/16 :goto_0

    .line 50116
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/CreateConversationParams;->getMemberLimit()I

    move-result v0

    goto :goto_1

    .line 50131
    :cond_3
    new-instance v3, Lcom/alibaba/wukong/idl/im/models/CustomIconModel;

    invoke-direct {v3}, Lcom/alibaba/wukong/idl/im/models/CustomIconModel;-><init>()V

    .line 50132
    iget-object v0, v0, Lcom/alibaba/wukong/im/GroupIconObject;->groupIcon:Ljava/lang/String;

    iput-object v0, v3, Lcom/alibaba/wukong/idl/im/models/CustomIconModel;->customIconMediaId:Ljava/lang/String;

    .line 50133
    iput-object v3, v2, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->customIcon:Lcom/alibaba/wukong/idl/im/models/CustomIconModel;

    goto :goto_2
.end method

.method static synthetic a(Liaw;JJJLjava/util/Map;Z)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .locals 5
    .param p0, "x0"    # Liaw;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J
    .param p7, "x4"    # Ljava/util/Map;
    .param p8, "x5"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 80
    .line 50086
    cmp-long v0, p3, v2

    if-eqz v0, :cond_0

    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    .line 50087
    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    .line 50089
    :cond_2
    invoke-static {p1, p2, p3, p4, p8}, Liaw;->b(JJZ)Ljava/lang/String;

    move-result-object v1

    .line 50090
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    invoke-virtual {v0, v1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 50091
    if-nez v0, :cond_1

    .line 50092
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;-><init>()V

    .line 50093
    iput-object v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    .line 50094
    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    .line 50095
    const/4 v1, 0x2

    iput v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTotalMemberCount:I

    .line 50096
    invoke-static {}, Liaf;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCreateAt:J

    .line 50097
    sget-object v1, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->OFFLINE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iput-object v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mStatus:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    .line 50099
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitle:Ljava/lang/String;

    .line 50100
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIcon:Ljava/lang/String;

    .line 50102
    iput-wide p5, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTag:J

    .line 50103
    invoke-static {p7}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50104
    iget-wide v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCreateAt:J

    iput-wide v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastModify:J

    goto :goto_0
.end method

.method public static a()Liaw;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Liaw$b;->a:Liaw;

    return-object v0
.end method

.method public static a(JJZ)Ljava/lang/String;
    .locals 2
    .param p0, "creatorUid"    # J
    .param p2, "uid"    # J
    .param p4, "reverse"    # Z

    .prologue
    .line 808
    invoke-static {p0, p1, p2, p3, p4}, Liaw;->b(JJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/MemberRole;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 833
    const-string/jumbo v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 834
    const-string/jumbo v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 835
    .local v3, "uids":[Ljava/lang/String;
    array-length v4, v3

    if-ne v4, v5, :cond_0

    .line 836
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 837
    .local v0, "_list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/MemberRole;>;"
    new-instance v1, Lcom/alibaba/wukong/im/conversation/MemberRole;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/conversation/MemberRole;-><init>()V

    .line 838
    .local v1, "member1":Lcom/alibaba/wukong/im/conversation/MemberRole;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Lieb;->g(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/alibaba/wukong/im/conversation/MemberRole;->mOpenId:J

    .line 839
    sget-object v4, Lcom/alibaba/wukong/im/Member$RoleType;->ORDINARY:Lcom/alibaba/wukong/im/Member$RoleType;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/Member$RoleType;->typeValue()I

    move-result v4

    iput v4, v1, Lcom/alibaba/wukong/im/conversation/MemberRole;->mRole:I

    .line 840
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    new-instance v2, Lcom/alibaba/wukong/im/conversation/MemberRole;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/conversation/MemberRole;-><init>()V

    .line 843
    .local v2, "member2":Lcom/alibaba/wukong/im/conversation/MemberRole;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Lieb;->g(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/wukong/im/conversation/MemberRole;->mOpenId:J

    .line 844
    sget-object v4, Lcom/alibaba/wukong/im/Member$RoleType;->ORDINARY:Lcom/alibaba/wukong/im/Member$RoleType;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/Member$RoleType;->typeValue()I

    move-result v4

    iput v4, v2, Lcom/alibaba/wukong/im/conversation/MemberRole;->mRole:I

    .line 845
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    .end local v0    # "_list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/MemberRole;>;"
    .end local v1    # "member1":Lcom/alibaba/wukong/im/conversation/MemberRole;
    .end local v2    # "member2":Lcom/alibaba/wukong/im/conversation/MemberRole;
    .end local v3    # "uids":[Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1023
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    if-nez p1, :cond_1

    .line 1024
    if-eqz p2, :cond_0

    .line 1025
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "PARAMETER_ERR current conversation is null"

    invoke-interface {p2, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    invoke-static {p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isRootConversation(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1030
    if-eqz p2, :cond_0

    .line 1031
    invoke-interface {p2, p1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 1032
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getParent()Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1033
    iget-object v0, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentId:Ljava/lang/String;

    .line 1034
    .local v0, "parentId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v1

    new-instance v2, Liaw$14;

    invoke-direct {v2, p0, p1, v0, p2}, Liaw$14;-><init>(Liaw;Lcom/alibaba/wukong/im/conversation/ConversationImpl;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v1, v0, v2}, Liav;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/conversation/ConversationImpl;Ljava/util/Map;)V
    .locals 6
    .param p0, "oldCo"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p1, "co"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1295
    .local p2, "gapMsgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 1296
    .local v0, "cid":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1297
    .local v1, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/wukong/im/message/MessageImpl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1298
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->senderId()J

    move-result-wide v2

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1299
    invoke-static {}, Liaf;->c()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->createdAt()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1300
    :cond_0
    const-string/jumbo v2, "[SYNC] ConvServ"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[SYNC] gap exist conv "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " lastMid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50048
    const-string/jumbo v4, "im"

    invoke-static {v2, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const/4 v2, 0x2

    iput v2, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    .line 1303
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    :cond_1
    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Ljava/util/Map;)V
    .locals 6
    .param p0, "co"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1308
    .local p1, "gapMsgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    if-nez p0, :cond_1

    .line 1318
    :cond_0
    :goto_0
    return-void

    .line 1311
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 1312
    .local v0, "cid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1313
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1314
    .local v1, "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    const-string/jumbo v2, "[SYNC] ConvServ"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[SYNC] gap not exist conv "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " lastMid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50050
    const-string/jumbo v4, "im"

    invoke-static {v2, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const/4 v2, 0x2

    iput v2, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    .line 1316
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Liaw;Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p0, "x0"    # Liaw;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p2, "x2"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Liaw;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;)V

    return-void
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 80
    sget-wide v0, Liaw;->a:J

    return-wide v0
.end method

.method private static b(JJZ)Ljava/lang/String;
    .locals 2
    .param p0, "creatorUid"    # J
    .param p2, "uid"    # J
    .param p4, "reverse"    # Z

    .prologue
    .line 800
    if-eqz p4, :cond_1

    .line 801
    cmp-long v0, p2, p0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    :goto_0
    return-object v0

    .line 801
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 803
    :cond_1
    cmp-long v0, p2, p0

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 1321
    sget-object v0, Liaw;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 992
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 993
    if-eqz p2, :cond_0

    .line 994
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "PARAMETER_ERR invalid conversationId"

    invoke-interface {p2, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 997
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    invoke-virtual {v1, p1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 998
    .local v0, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v0, :cond_2

    .line 999
    invoke-direct {p0, v0, p2}, Liaw;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 1001
    :cond_2
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v1

    new-instance v2, Liaw$13;

    invoke-direct {v2, p0, p1, p2}, Liaw$13;-><init>(Liaw;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v1, p1, v2}, Liav;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/GroupNickObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1543
    .local p2, "openIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;>;"
    invoke-static {p3}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1552
    :goto_0
    return-void

    .line 1546
    :cond_0
    new-instance v0, Liaw$25;

    const/4 v3, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Liaw$25;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/List;)V

    .line 1551
    invoke-virtual {v0}, Liaw$25;->start()V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1057
    .local p1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    const/4 v4, 0x0

    .line 1059
    .local v4, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v5, "[TAG] ConvServ"

    .line 50034
    const-string/jumbo v6, "im"

    invoke-static {v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v4

    .line 1060
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1061
    if-eqz p2, :cond_0

    .line 1062
    const-string/jumbo v5, "101002"

    const-string/jumbo v6, "PARAMETER_ERR conversationIds is empty"

    invoke-interface {p2, v5, v6}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50035
    :cond_0
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    .line 1135
    :goto_0
    return-void

    .line 1065
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[API] getConvsParent, sz="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lhzv;->a(Ljava/lang/String;)V

    .line 1066
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1067
    .local v2, "localList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    .local v0, "absentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1069
    .local v1, "cid":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v6

    invoke-virtual {v6, v1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v3

    .line 1070
    .local v3, "tmp":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v3, :cond_3

    .line 1071
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1134
    .end local v0    # "absentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "cid":Ljava/lang/String;
    .end local v2    # "localList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .end local v3    # "tmp":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :catchall_0
    move-exception v5

    .line 50039
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    .line 1134
    throw v5

    .line 1073
    .restart local v0    # "absentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "cid":Ljava/lang/String;
    .restart local v2    # "localList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .restart local v3    # "tmp":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_3
    :try_start_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    invoke-static {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isAbsentOrParent(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1075
    iget-object v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentId:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1079
    .end local v1    # "cid":Ljava/lang/String;
    .end local v3    # "tmp":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[API] get absent conv "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lhzv;->a(Ljava/lang/String;)V

    .line 1080
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v5

    new-instance v6, Liaw$15;

    invoke-direct {v6, p0, v2, p2}, Liaw$15;-><init>(Liaw;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v5, v0, v6}, Liav;->c(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50037
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0
.end method

.method public final addConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/wukong/im/ConversationChangeListener;

    .prologue
    .line 853
    if-nez p1, :cond_0

    .line 856
    :goto_0
    return-void

    .line 855
    :cond_0
    invoke-static {p1}, Liau;->a(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    goto :goto_0
.end method

.method public final addConversationListener(Lcom/alibaba/wukong/im/ConversationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/wukong/im/ConversationListener;

    .prologue
    .line 866
    if-nez p1, :cond_0

    .line 869
    :goto_0
    return-void

    .line 868
    :cond_0
    invoke-static {p1}, Liau;->a(Lcom/alibaba/wukong/im/ConversationListener;)V

    goto :goto_0
.end method

.method public final varargs addMembers(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;[Ljava/lang/Long;)V
    .locals 9
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "openIds"    # [Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Message;",
            "[",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 570
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Ljava/lang/Long;>;>;"
    const/4 v8, 0x0

    .line 572
    .local v8, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] ConvServ"

    .line 34014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v8

    .line 573
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    const-string/jumbo v0, "[API] Param cid null"

    invoke-virtual {v8, v0}, Lhzv;->b(Ljava/lang/String;)V

    .line 575
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid conversationId"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 609
    :goto_0
    return-void

    .line 580
    :cond_0
    :try_start_1
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 35030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 581
    :cond_1
    if-nez p4, :cond_2

    const/4 v7, 0x0

    .line 583
    .local v7, "openIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    :try_start_2
    invoke-static {p1, v7}, Liaf;->a(Lcom/alibaba/wukong/Callback;Ljava/util/List;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 36030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 581
    .end local v7    # "openIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    :try_start_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 608
    :catchall_0
    move-exception v0

    .line 39030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 608
    throw v0

    .line 585
    .restart local v7    # "openIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3
    :try_start_4
    invoke-static {p1, p3}, Liaf;->a(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/Message;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 37030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 586
    :cond_4
    :try_start_5
    new-instance v0, Liaw$38;

    const/4 v3, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Liaw$38;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/util/List;)V

    .line 606
    invoke-virtual {v0}, Liaw$38;->start()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 38030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0
.end method

.method public final varargs addMembersV2(Lcom/alibaba/wukong/Callback;Ljava/lang/String;ILjava/util/List;[Ljava/lang/Long;)V
    .locals 11
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "joinGroupOrigin"    # I
    .param p5, "openIds"    # [Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;[",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 614
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Ljava/lang/Long;>;>;"
    .local p4, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v10, 0x0

    .line 616
    .local v10, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] ConvServ"

    .line 40014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v10

    .line 617
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    const-string/jumbo v0, "[API] Param cid null"

    invoke-virtual {v10, v0}, Lhzv;->b(Ljava/lang/String;)V

    .line 619
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid conversationId"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40030
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    .line 677
    :goto_0
    return-void

    .line 624
    :cond_0
    :try_start_1
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 625
    const-string/jumbo v0, "101001"

    const-string/jumbo v1, "user unlogin"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41030
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 629
    :cond_1
    if-nez p5, :cond_2

    const/4 v8, 0x0

    .line 631
    .local v8, "openIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    :try_start_2
    invoke-static {p1, v8}, Liaf;->a(Lcom/alibaba/wukong/Callback;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 632
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERRuserIds invalid"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42030
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 629
    .end local v8    # "openIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    :try_start_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 676
    :catchall_0
    move-exception v0

    .line 45030
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    .line 676
    throw v0

    .line 637
    .restart local v8    # "openIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3
    if-eqz p4, :cond_5

    :try_start_4
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 638
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/wukong/im/Message;

    .line 639
    .local v9, "message":Lcom/alibaba/wukong/im/Message;
    invoke-static {p1, v9}, Liaf;->a(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 640
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERRmessage invalid"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 43030
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 647
    .end local v9    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_5
    :try_start_5
    new-instance v0, Liaw$2;

    const/4 v3, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Liaw$2;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/List;Ljava/lang/String;ILjava/util/List;)V

    .line 674
    invoke-virtual {v0}, Liaw$2;->start()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 44030
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0
.end method

.method public final applyJoinGroup(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 13
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "joinDescription"    # Ljava/lang/String;
    .param p3, "inviterId"    # J
    .param p5, "origin"    # I
    .param p6, "qrCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1393
    .local p7, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1394
    const-string/jumbo v2, "101002"

    const-string/jumbo v3, "PARAMETER_ERR invalid conversation id"

    move-object/from16 v0, p7

    invoke-static {v0, v2, v3}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    :cond_0
    :goto_0
    return-void

    .line 1398
    :cond_1
    invoke-static/range {p7 .. p7}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1401
    new-instance v2, Liaw$18;

    const/4 v5, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v3

    invoke-virtual {v3}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v6

    move-object v3, p0

    move-object/from16 v4, p7

    move-object v7, p1

    move-wide/from16 v8, p3

    move-object v10, p2

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v2 .. v12}, Liaw$18;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    .line 1419
    invoke-virtual {v2}, Liaw$18;->start()V

    goto :goto_0
.end method

.method public final applyJoinGroup(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "joinDescription"    # Ljava/lang/String;
    .param p3, "inviterId"    # J
    .param p5, "qrCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1387
    .local p6, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x2

    .local v6, "origin":I
    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, p5

    move-object v8, p6

    .line 1388
    invoke-virtual/range {v1 .. v8}, Liaw;->applyJoinGroup(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 1389
    return-void

    .line 1387
    .end local v6    # "origin":I
    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public final auditJoinGroup(Ljava/lang/String;JLcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V
    .locals 10
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "applyId"    # J
    .param p4, "systemMessage"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/wukong/im/Message;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1444
    .local p5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1445
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid conversation id"

    invoke-static {p5, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    :cond_0
    :goto_0
    return-void

    .line 1448
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    .line 1449
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid applyId id"

    invoke-static {p5, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1453
    :cond_2
    invoke-static {p5}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1456
    new-instance v0, Liaw$20;

    const/4 v3, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p5

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Liaw$20;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;JLcom/alibaba/wukong/im/Message;)V

    .line 1473
    invoke-virtual {v0}, Liaw$20;->start()V

    goto :goto_0
.end method

.method public final buildConversation(Lcom/alibaba/wukong/idl/im/models/ConversationModel;)Lcom/alibaba/wukong/im/Conversation;
    .locals 2
    .param p1, "model"    # Lcom/alibaba/wukong/idl/im/models/ConversationModel;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1777
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->fromConversationModel(Lcom/alibaba/wukong/idl/im/models/ConversationModel;J)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    return-object v0
.end method

.method public final cleanJoinGroupValidationByOwner(JLcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "createAt"    # J
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
    .line 1511
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {p3}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1526
    :goto_0
    return-void

    .line 1514
    :cond_0
    new-instance v1, Liaw$22;

    const/4 v4, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v0

    invoke-virtual {v0}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v2, p0

    move-object v3, p3

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Liaw$22;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;J)V

    .line 1525
    invoke-virtual {v1}, Liaw$22;->start()V

    goto :goto_0
.end method

.method public final clearInactiveConversations(Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1604
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    new-instance v0, Liaw$28;

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Liaw$28;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/Callback;)V

    .line 1694
    invoke-virtual {v0}, Liaw$28;->start()V

    .line 1695
    return-void
.end method

.method public final createConversation(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/CreateConversationParams;)V
    .locals 8
    .param p2, "params"    # Lcom/alibaba/wukong/im/CreateConversationParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;",
            "Lcom/alibaba/wukong/im/CreateConversationParams;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 129
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    const/4 v7, 0x0

    .line 131
    .local v7, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] ConvServ"

    .line 2014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v7

    .line 132
    if-nez p2, :cond_0

    .line 133
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR, param is null"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 190
    :goto_0
    return-void

    .line 137
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/wukong/im/CreateConversationParams;->getTypeMask()I

    move-result v5

    .line 138
    .local v5, "typeMask":I
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] createConv, type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 140
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 3030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 141
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Lcom/alibaba/wukong/im/CreateConversationParams;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    invoke-static {p1, v0}, Liaf;->a(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 4030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 143
    :cond_2
    :try_start_3
    new-instance v0, Liaw$1;

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Liaw$1;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;ILcom/alibaba/wukong/im/CreateConversationParams;)V

    .line 187
    invoke-virtual {v0}, Liaw$1;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 189
    .end local v5    # "typeMask":I
    :catchall_0
    move-exception v0

    .line 6030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 189
    throw v0
.end method

.method public final varargs createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;IJLjava/util/Map;II[Ljava/lang/Long;)V
    .locals 2
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/String;
    .param p4, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p5, "typeMask"    # I
    .param p6, "tag"    # J
    .param p9, "memberLimit"    # I
    .param p10, "groupLevel"    # I
    .param p11, "openIds"    # [Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Message;",
            "IJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II[",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    .local p8, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/wukong/im/CreateConversationParams;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/CreateConversationParams;-><init>()V

    .line 116
    .local v0, "params":Lcom/alibaba/wukong/im/CreateConversationParams;
    if-nez p11, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/CreateConversationParams;->setOpenIds(Ljava/util/List;)V

    .line 117
    invoke-virtual {v0, p2}, Lcom/alibaba/wukong/im/CreateConversationParams;->setTitle(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, p3}, Lcom/alibaba/wukong/im/CreateConversationParams;->setIcon(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, p5}, Lcom/alibaba/wukong/im/CreateConversationParams;->setTypeMask(I)V

    .line 120
    invoke-virtual {v0, p6, p7}, Lcom/alibaba/wukong/im/CreateConversationParams;->setTag(J)V

    .line 121
    invoke-virtual {v0, p8}, Lcom/alibaba/wukong/im/CreateConversationParams;->setExtension(Ljava/util/Map;)V

    .line 122
    invoke-virtual {v0, p9}, Lcom/alibaba/wukong/im/CreateConversationParams;->setMemberLimit(I)V

    .line 123
    invoke-virtual {v0, p4}, Lcom/alibaba/wukong/im/CreateConversationParams;->setMessage(Lcom/alibaba/wukong/im/Message;)V

    .line 124
    invoke-virtual {p0, p1, v0}, Liaw;->createConversation(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/CreateConversationParams;)V

    .line 125
    return-void

    .line 116
    :cond_0
    invoke-static {p11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public final varargs createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;IJLjava/util/Map;[Ljava/lang/Long;)V
    .locals 12
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/String;
    .param p4, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p5, "typeMask"    # I
    .param p6, "tag"    # J
    .param p9, "openIds"    # [Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Message;",
            "IJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    .local p8, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v0 .. v11}, Liaw;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;IJLjava/util/Map;II[Ljava/lang/Long;)V

    .line 109
    return-void
.end method

.method public final varargs createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V
    .locals 10
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/String;
    .param p4, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p5, "typeMask"    # I
    .param p6, "openIds"    # [Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Message;",
            "I[",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 101
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Liaw;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;IJLjava/util/Map;[Ljava/lang/Long;)V

    .line 102
    return-void
.end method

.method public final deleteJoinGroup(Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V
    .locals 8
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "applyId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1478
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1479
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid conversation id"

    invoke-static {p4, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    :cond_0
    :goto_0
    return-void

    .line 1482
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    .line 1483
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid applyId id"

    invoke-static {p4, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1487
    :cond_2
    invoke-static {p4}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1490
    new-instance v0, Liaw$21;

    const/4 v3, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p4

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Liaw$21;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;J)V

    .line 1505
    invoke-virtual {v0}, Liaw$21;->start()V

    goto :goto_0
.end method

.method public final generateGroupIcon(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1557
    .local p1, "openIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    invoke-static {p2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1566
    :goto_0
    return-void

    .line 1560
    :cond_0
    new-instance v0, Liaw$26;

    const/4 v3, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Liaw$26;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/List;)V

    .line 1565
    invoke-virtual {v0}, Liaw$26;->start()V

    goto :goto_0
.end method

.method public final getCode(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V
    .locals 0
    .param p2, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/CodeInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 880
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/CodeInfo;>;"
    invoke-virtual {p0, p1, p2}, Liaw;->getQRCode(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 881
    return-void
.end method

.method public final getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V
    .locals 1
    .param p2, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Liaw;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Z)V

    .line 339
    return-void
.end method

.method public final getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "conversationId"    # Ljava/lang/String;
    .param p3, "isCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    sget-object v0, Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;->LOCAL_NOT_EXIST_FROM_SERVER:Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

    invoke-virtual {p0, p1, p2, p3, v0}, Liaw;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;ZLcom/alibaba/wukong/im/Conversation$ConversationSourceType;)V

    .line 344
    return-void
.end method

.method public final getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;ZLcom/alibaba/wukong/im/Conversation$ConversationSourceType;)V
    .locals 10
    .param p2, "conversationId"    # Ljava/lang/String;
    .param p3, "isCache"    # Z
    .param p4, "conversationSourceType"    # Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 349
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    const/4 v9, 0x0

    .line 351
    .local v9, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] ConvServ"

    .line 13014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v9

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] getConv, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 353
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const-string/jumbo v0, "[API] Param cid null"

    invoke-virtual {v9, v0}, Lhzv;->b(Ljava/lang/String;)V

    .line 355
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid conversationId"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13030
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    .line 405
    :goto_0
    return-void

    .line 360
    :cond_0
    if-nez p4, :cond_1

    .line 361
    :try_start_1
    const-string/jumbo v0, "[API] Param conversationSourceType is null"

    invoke-virtual {v9, v0}, Lhzv;->b(Ljava/lang/String;)V

    .line 362
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid conversationSourceType"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14030
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 367
    :cond_1
    :try_start_2
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 15030
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 369
    :cond_2
    :try_start_3
    new-instance v0, Liaw$33;

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move-object v6, p2

    move-object v7, p1

    move v8, p3

    invoke-direct/range {v0 .. v8}, Liaw$33;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;Ljava/lang/String;Lcom/alibaba/wukong/Callback;Z)V

    .line 402
    invoke-virtual {v0}, Liaw$33;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16030
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 404
    :catchall_0
    move-exception v0

    .line 17030
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    .line 404
    throw v0
.end method

.method public final getConversations(Lcom/alibaba/wukong/Callback;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 410
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    .local p2, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 412
    .local v8, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] ConvServ"

    .line 18014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v8

    .line 413
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    :cond_0
    const-string/jumbo v0, "[API] Param cid null"

    invoke-virtual {v8, v0}, Lhzv;->b(Ljava/lang/String;)V

    .line 415
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR cids is empty"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 466
    :goto_0
    return-void

    .line 420
    :cond_1
    :try_start_1
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 19030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 422
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] getConvs, sz="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 423
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v6, "localList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    new-instance v0, Liaw$34;

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Liaw$34;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/List;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    .line 463
    invoke-virtual {v0}, Liaw$34;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 465
    .end local v6    # "localList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    :catchall_0
    move-exception v0

    .line 21030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 465
    throw v0
.end method

.method public final getQRCode(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V
    .locals 6
    .param p2, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/CodeInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 890
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/CodeInfo;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 891
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid conversationId"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    new-instance v0, Liaw$6;

    const/4 v3, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Liaw$6;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 903
    invoke-virtual {v0}, Liaw$6;->start()V

    goto :goto_0
.end method

.method public final getTotalUnreadCount(Lcom/alibaba/wukong/Callback;Z)V
    .locals 2
    .param p2, "containNotificationOff"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 761
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Integer;>;"
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 769
    :goto_0
    return-void

    .line 762
    :cond_0
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v0

    invoke-virtual {v0}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Liaw$5;

    invoke-direct {v1, p0, p2, p1}, Liaw$5;-><init>(Liaw;ZLcom/alibaba/wukong/Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final hasApplyJoinGroupRecently(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "qrCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1360
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Boolean;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1361
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid conversation id"

    invoke-static {p3, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    :cond_0
    :goto_0
    return-void

    .line 1365
    :cond_1
    invoke-static {p3}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1368
    new-instance v0, Liaw$17;

    const/4 v3, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Liaw$17;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    invoke-virtual {v0}, Liaw$17;->start()V

    goto :goto_0
.end method

.method public final varargs hideConversations(Lcom/alibaba/wukong/Callback;[Ljava/lang/String;)V
    .locals 7
    .param p2, "conversationIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 542
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v6, 0x0

    .line 544
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] ConvServ"

    .line 30014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 545
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 546
    :cond_0
    const-string/jumbo v0, "[API] Param cids null"

    invoke-virtual {v6, v0}, Lhzv;->b(Ljava/lang/String;)V

    .line 547
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid conversationIds"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 564
    :goto_0
    return-void

    .line 550
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] hideConversations, size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 552
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 31030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 554
    :cond_2
    :try_start_2
    new-instance v0, Liaw$37;

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Liaw$37;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;[Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0}, Liaw$37;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 563
    :catchall_0
    move-exception v0

    .line 33030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 563
    throw v0
.end method

.method public final listConversations(Lcom/alibaba/wukong/Callback;II)V
    .locals 10
    .param p2, "count"    # I
    .param p3, "typeMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;>;II)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 196
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    const/4 v9, 0x0

    .line 198
    .local v9, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] ConvServ"

    .line 7014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v9

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] listConv, type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 201
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    const-string/jumbo v0, "[API] listConv, listConversations not login..."

    invoke-virtual {v9, v0}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7030
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    .line 298
    :goto_0
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 209
    :try_start_1
    const-string/jumbo v0, "ListGroup"

    invoke-static {v0}, Lhzs;->a(Ljava/lang/String;)Lhzs$a;

    move-result-object v8

    .line 7155
    .local v8, "statistics":Lhzs$a;
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v8, Lhzs$a;->a:J

    .line 214
    if-gtz p2, :cond_2

    const v6, 0x7ffffffe

    .line 215
    .local v6, "newCount":I
    :goto_2
    new-instance v0, Liaw$12;

    new-instance v2, Liaf$a;

    invoke-direct {v2, p1}, Liaf$a;-><init>(Lcom/alibaba/wukong/Callback;)V

    const/4 v3, 0x1

    .line 216
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move v5, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Liaw$12;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;IILcom/alibaba/wukong/Callback;Lhzs$a;)V

    .line 295
    invoke-virtual {v0}, Liaw$12;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8030
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 211
    .end local v6    # "newCount":I
    .end local v8    # "statistics":Lhzs$a;
    :cond_1
    :try_start_2
    const-string/jumbo v0, "ListConv"

    invoke-static {v0}, Lhzs;->a(Ljava/lang/String;)Lhzs$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .restart local v8    # "statistics":Lhzs$a;
    goto :goto_1

    :cond_2
    move v6, p2

    .line 214
    goto :goto_2

    .line 297
    .end local v8    # "statistics":Lhzs$a;
    :catchall_0
    move-exception v0

    .line 9030
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    .line 297
    throw v0
.end method

.method public final listConversationsByCategoryId(Lcom/alibaba/wukong/im/category/CategoryObject;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1700
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    if-nez p2, :cond_0

    .line 1773
    :goto_0
    return-void

    .line 1703
    :cond_0
    if-nez p1, :cond_1

    .line 1704
    const/4 v0, 0x0

    const-string/jumbo v1, "[API] listConversationsByCategoryId param is null"

    .line 50078
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid categoryObject"

    invoke-static {p2, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1710
    :cond_1
    new-instance v0, Liaw$29;

    new-instance v2, Liaf$a;

    invoke-direct {v2, p2}, Liaf$a;-><init>(Lcom/alibaba/wukong/Callback;)V

    const/4 v3, 0x1

    .line 1711
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Liaw$29;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/category/CategoryObject;)V

    .line 1772
    invoke-virtual {v0}, Liaw$29;->start()V

    goto :goto_0
.end method

.method public final listGroupIcons(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1571
    .local p1, "conversationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50056
    :goto_0
    return-void

    .line 1574
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v0

    new-instance v1, Liaw$27;

    invoke-direct {v1, p0, p2}, Liaw$27;-><init>(Liaw;Lcom/alibaba/wukong/Callback;)V

    .line 50052
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50054
    :cond_1
    const-string/jumbo v0, "101002"

    const-string/jumbo v2, "101002 conversationIds is empty"

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50058
    :cond_2
    new-instance v2, Liav$42;

    invoke-direct {v2, v0, v1}, Liav$42;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 50075
    const-string/jumbo v0, "[TAG] ConvRpc"

    const-string/jumbo v1, "[RPC] getGroupIcons"

    invoke-virtual {v2}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50076
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-interface {v0, p1, v2}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->getIcon(Ljava/util/List;Liyv;)V

    goto :goto_0
.end method

.method public final listJoinGroupValidation(JILcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "createAt"    # J
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1425
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;>;>;"
    invoke-static {p4}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1440
    :goto_0
    return-void

    .line 1428
    :cond_0
    new-instance v1, Liaw$19;

    const/4 v4, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v0

    invoke-virtual {v0}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v2, p0

    move-object v3, p4

    move-wide v6, p1

    move v8, p3

    invoke-direct/range {v1 .. v8}, Liaw$19;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;JI)V

    .line 1439
    invoke-virtual {v1}, Liaw$19;->start()V

    goto :goto_0
.end method

.method public final listLocalGroupConversations(Lcom/alibaba/wukong/Callback;I)V
    .locals 8
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;>;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 304
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    const/4 v7, 0x0

    .line 306
    .local v7, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] ConvServ"

    .line 10014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v7

    .line 307
    const-string/jumbo v0, "[API] listLocalGroupConversations"

    invoke-virtual {v7, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 310
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 10030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 333
    :goto_0
    return-void

    .line 312
    :cond_0
    :try_start_1
    new-instance v0, Liaw$23;

    new-instance v2, Liaf$a;

    invoke-direct {v2, p1}, Liaf$a;-><init>(Lcom/alibaba/wukong/Callback;)V

    const/4 v3, 0x1

    .line 313
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Liaw$23;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;ILcom/alibaba/wukong/Callback;)V

    .line 330
    invoke-virtual {v0}, Liaw$23;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v0

    .line 12030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 332
    throw v0
.end method

.method public final listMembers(Lcom/alibaba/wukong/Callback;Ljava/lang/String;II)V
    .locals 9
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Member;",
            ">;>;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 736
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Member;>;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid conversationId"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    new-instance v0, Liaw$4;

    const/4 v3, 0x0

    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getWKExecutor()Lcom/alibaba/wukong/WKExecutor;

    move-result-object v4

    sget-object v5, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Liaw$4;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;Lcom/alibaba/doraemon/Priority;Ljava/lang/String;II)V

    .line 755
    invoke-virtual {v0}, Liaw$4;->start()V

    goto :goto_0
.end method

.method public final listOwnGroup(ILcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1140
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    invoke-virtual {p0, p2, p1}, Liaw;->listOwnGroup(Lcom/alibaba/wukong/Callback;I)V

    .line 1141
    return-void
.end method

.method public final listOwnGroup(Lcom/alibaba/wukong/Callback;I)V
    .locals 7
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;>;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1145
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    const/4 v6, 0x0

    .line 1147
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] ConvServ"

    .line 50041
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 1148
    const-string/jumbo v0, "[API] listOwnGroup start"

    invoke-virtual {v6, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 1151
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 50042
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 1180
    :goto_0
    return-void

    .line 1152
    :cond_0
    if-gtz p2, :cond_1

    const v5, 0x7ffffffe

    .line 1154
    .local v5, "newCount":I
    :goto_1
    :try_start_1
    new-instance v0, Liaw$16;

    new-instance v2, Liaf$a;

    invoke-direct {v2, p1}, Liaf$a;-><init>(Lcom/alibaba/wukong/Callback;)V

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Liaw$16;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;I)V

    .line 1177
    invoke-virtual {v0}, Liaw$16;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50044
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .end local v5    # "newCount":I
    :cond_1
    move v5, p2

    .line 1152
    goto :goto_1

    .line 1179
    :catchall_0
    move-exception v0

    .line 50046
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 1179
    throw v0
.end method

.method public final listSecondaryConversationsByEntranceId(JLcom/alibaba/wukong/Callback;)V
    .locals 11
    .param p1, "entranceId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    const/4 v9, 0x0

    .line 1796
    invoke-static {p1, p2}, Libb;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1797
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid entranceId"

    invoke-static {p3, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    :goto_0
    return-void

    .line 1803
    :cond_0
    :try_start_0
    invoke-static {p3}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 50080
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1806
    :cond_1
    :try_start_1
    new-instance v1, Liaw$31;

    new-instance v3, Liaf$a;

    invoke-direct {v3, p3}, Liaf$a;-><init>(Lcom/alibaba/wukong/Callback;)V

    const/4 v4, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v0

    invoke-virtual {v0}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v2, p0

    move-wide v6, p1

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Liaw$31;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;JLcom/alibaba/wukong/Callback;)V

    .line 1813
    invoke-virtual {v1}, Liaw$31;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50082
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1815
    :catchall_0
    move-exception v0

    .line 50084
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    .line 1815
    throw v0
.end method

.method public final removeConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/wukong/im/ConversationChangeListener;

    .prologue
    .line 859
    if-nez p1, :cond_0

    .line 862
    :goto_0
    return-void

    .line 861
    :cond_0
    invoke-static {p1}, Liau;->b(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    goto :goto_0
.end method

.method public final removeConversationListener(Lcom/alibaba/wukong/im/ConversationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/wukong/im/ConversationListener;

    .prologue
    .line 873
    if-nez p1, :cond_0

    .line 876
    :goto_0
    return-void

    .line 875
    :cond_0
    invoke-static {p1}, Liau;->b(Lcom/alibaba/wukong/im/ConversationListener;)V

    goto :goto_0
.end method

.method public final varargs removeConversations(Lcom/alibaba/wukong/Callback;[Ljava/lang/String;)V
    .locals 7
    .param p2, "conversationIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 506
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v6, 0x0

    .line 508
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] ConvServ"

    .line 26014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 509
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 510
    :cond_0
    const-string/jumbo v0, "[API] Param cid null"

    invoke-virtual {v6, v0}, Lhzv;->b(Ljava/lang/String;)V

    .line 511
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid conversationIds"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 537
    :goto_0
    return-void

    .line 514
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] rmConv, size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 516
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 27030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 517
    :cond_2
    :try_start_2
    new-instance v0, Liaw$36;

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Liaw$36;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;[Ljava/lang/String;)V

    .line 534
    invoke-virtual {v0}, Liaw$36;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 536
    :catchall_0
    move-exception v0

    .line 29030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 536
    throw v0
.end method

.method public final varargs removeMembers(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;[Ljava/lang/Long;)V
    .locals 9
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "openIds"    # [Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Message;",
            "[",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 684
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Ljava/lang/Long;>;>;"
    const/4 v8, 0x0

    .line 686
    .local v8, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] ConvServ"

    .line 46014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v8

    .line 687
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    const-string/jumbo v0, "[API] Param cid null"

    invoke-virtual {v8, v0}, Lhzv;->b(Ljava/lang/String;)V

    .line 689
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid conversationId"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 730
    :goto_0
    return-void

    .line 694
    :cond_0
    :try_start_1
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 47030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 695
    :cond_1
    if-nez p4, :cond_3

    const/4 v7, 0x0

    .line 696
    .local v7, "openIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    if-eqz v7, :cond_2

    .line 697
    :try_start_2
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 700
    :cond_2
    invoke-static {p1, v7}, Liaf;->a(Lcom/alibaba/wukong/Callback;Ljava/util/List;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 48030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 695
    .end local v7    # "openIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3
    :try_start_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 729
    :catchall_0
    move-exception v0

    .line 50032
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 729
    throw v0

    .line 702
    .restart local v7    # "openIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_4
    :try_start_4
    invoke-static {p1, p3}, Liaf;->a(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/Message;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    .line 49030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 703
    :cond_5
    :try_start_5
    new-instance v0, Liaw$3;

    const/4 v3, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Liaw$3;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/util/List;)V

    .line 727
    invoke-virtual {v0}, Liaw$3;->start()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 50030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0
.end method

.method public final resetAllUnreadCount()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 981
    invoke-static {v3}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 989
    :goto_0
    return-void

    .line 982
    :cond_0
    new-instance v0, Liaw$11;

    const/4 v1, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v2

    invoke-virtual {v2}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v0, p0, v3, v1, v2}, Liaw$11;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 988
    invoke-virtual {v0}, Liaw$11;->start()V

    goto :goto_0
.end method

.method public final setCurrentConversationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "conversationId"    # Ljava/lang/String;

    .prologue
    .line 1185
    sput-object p1, Liaw;->b:Ljava/lang/String;

    .line 1186
    return-void
.end method

.method public final syncConversationProperties(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V
    .locals 7
    .param p2, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 471
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    const/4 v6, 0x0

    .line 473
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] ConvServ"

    .line 22014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] getRemoteConv, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 475
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    const-string/jumbo v0, "[API] Param cid null"

    invoke-virtual {v6, v0}, Lhzv;->b(Ljava/lang/String;)V

    .line 477
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid conversationId"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 501
    :goto_0
    return-void

    .line 482
    :cond_0
    :try_start_1
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 23030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 483
    :cond_1
    :try_start_2
    new-instance v0, Liaw$35;

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Liaw$35;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0}, Liaw$35;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 500
    :catchall_0
    move-exception v0

    .line 25030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 500
    throw v0
.end method

.method public final updateConversationLocalEntranceId(Ljava/util/List;JLcom/alibaba/wukong/Callback;)V
    .locals 10
    .param p2, "entranceId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1821
    .local p1, "cidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1822
    :cond_0
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR cidList is empty"

    invoke-static {p4, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    :cond_1
    :goto_0
    return-void

    .line 1826
    :cond_2
    invoke-static {p4}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1829
    new-instance v0, Liaw$32;

    new-instance v2, Liaf$a;

    invoke-direct {v2, p4}, Liaf$a;-><init>(Lcom/alibaba/wukong/Callback;)V

    const/4 v3, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Liaw$32;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/List;JLcom/alibaba/wukong/Callback;)V

    .line 1836
    invoke-virtual {v0}, Liaw$32;->start()V

    goto :goto_0
.end method

.method public final updateTotalMembers(Ljava/lang/String;I)V
    .locals 7
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "totalMember"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1782
    if-gtz p2, :cond_0

    .line 1792
    :goto_0
    return-void

    .line 1785
    :cond_0
    new-instance v0, Liaw$30;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Liaw$30;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 1791
    invoke-virtual {v0}, Liaw$30;->start()V

    goto :goto_0
.end method

.method public final verifyCode(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V
    .locals 0
    .param p2, "codeString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/ConversationCard;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 885
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/ConversationCard;>;"
    invoke-virtual {p0, p1, p2}, Liaw;->verifyQRCode(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 886
    return-void
.end method

.method public final verifyCodeV2(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/idl/im/models/VerifyModel;)V
    .locals 6
    .param p2, "model"    # Lcom/alibaba/wukong/idl/im/models/VerifyModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/ConversationCard;",
            ">;",
            "Lcom/alibaba/wukong/idl/im/models/VerifyModel;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 962
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/ConversationCard;>;"
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/alibaba/wukong/idl/im/models/VerifyModel;->code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 963
    :cond_0
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid verify code"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    :cond_1
    :goto_0
    return-void

    .line 968
    :cond_2
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 969
    new-instance v0, Liaw$10;

    const/4 v3, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Liaw$10;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/idl/im/models/VerifyModel;)V

    .line 975
    invoke-virtual {v0}, Liaw$10;->start()V

    goto :goto_0
.end method

.method public final verifyGroupId(Lcom/alibaba/wukong/Callback;J)V
    .locals 8
    .param p2, "groupId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/ConversationCard;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 926
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/ConversationCard;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 927
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid code string"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    new-instance v1, Liaw$8;

    const/4 v4, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v0

    invoke-virtual {v0}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Liaw$8;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;J)V

    .line 939
    invoke-virtual {v1}, Liaw$8;->start()V

    goto :goto_0
.end method

.method public final verifyPublicCid(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V
    .locals 6
    .param p2, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/ConversationCard;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 944
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/ConversationCard;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid cid string"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    new-instance v0, Liaw$9;

    const/4 v3, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Liaw$9;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 957
    invoke-virtual {v0}, Liaw$9;->start()V

    goto :goto_0
.end method

.method public final verifyQRCode(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V
    .locals 6
    .param p2, "codeString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/ConversationCard;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 908
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/ConversationCard;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 909
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid code string"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    new-instance v0, Liaw$7;

    const/4 v3, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Liaw$7;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 921
    invoke-virtual {v0}, Liaw$7;->start()V

    goto :goto_0
.end method
