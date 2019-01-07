.class public Lcom/alibaba/wukong/im/CreateConversationParams;
.super Ljava/lang/Object;
.source "CreateConversationParams.java"


# static fields
.field private static final serialVersionUID:J = -0x2bc02122ba277fb8L


# instance fields
.field private extension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private forceRpcIfLocalNotExist:Z

.field private groupIconObject:Lcom/alibaba/wukong/im/GroupIconObject;

.field private groupLevel:I

.field private icon:Ljava/lang/String;

.field private memberLimit:I

.field private message:Lcom/alibaba/wukong/im/Message;

.field private openIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private showHistoryType:I

.field private tag:J

.field private title:Ljava/lang/String;

.field private typeMask:I

.field private unique:I

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtension()Ljava/util/Map;
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
    .line 84
    iget-object v0, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->extension:Ljava/util/Map;

    return-object v0
.end method

.method public getGroupIconObject()Lcom/alibaba/wukong/im/GroupIconObject;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->groupIconObject:Lcom/alibaba/wukong/im/GroupIconObject;

    return-object v0
.end method

.method public getGroupLevel()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->groupLevel:I

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberLimit()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->memberLimit:I

    return v0
.end method

.method public getMessage()Lcom/alibaba/wukong/im/Message;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->message:Lcom/alibaba/wukong/im/Message;

    return-object v0
.end method

.method public getOpenIds()Ljava/util/List;
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
    .line 108
    iget-object v0, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->openIds:Ljava/util/List;

    return-object v0
.end method

.method public getShowHistoryType()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->showHistoryType:I

    return v0
.end method

.method public getTag()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->tag:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeMask()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->typeMask:I

    return v0
.end method

.method public getUnique()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->unique:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isForceRpcIfLocalNotExist()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->forceRpcIfLocalNotExist:Z

    return v0
.end method

.method public setExtension(Ljava/util/Map;)V
    .locals 0
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
    .line 88
    .local p1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->extension:Ljava/util/Map;

    .line 89
    return-void
.end method

.method public setForceRpcIfLocalNotExist(Z)V
    .locals 0
    .param p1, "forceRpcIfLocalNotExist"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->forceRpcIfLocalNotExist:Z

    .line 145
    return-void
.end method

.method public setGroupIconObject(Lcom/alibaba/wukong/im/GroupIconObject;)V
    .locals 0
    .param p1, "groupIconObject"    # Lcom/alibaba/wukong/im/GroupIconObject;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->groupIconObject:Lcom/alibaba/wukong/im/GroupIconObject;

    .line 137
    return-void
.end method

.method public setGroupLevel(I)V
    .locals 0
    .param p1, "groupLevel"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->groupLevel:I

    .line 105
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->icon:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setMemberLimit(I)V
    .locals 0
    .param p1, "memberLimit"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->memberLimit:I

    .line 97
    return-void
.end method

.method public setMessage(Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->message:Lcom/alibaba/wukong/im/Message;

    .line 65
    return-void
.end method

.method public setOpenIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "openIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->openIds:Ljava/util/List;

    .line 113
    return-void
.end method

.method public setShowHistoryType(I)V
    .locals 0
    .param p1, "showHistoryType"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->showHistoryType:I

    .line 129
    return-void
.end method

.method public setTag(J)V
    .locals 1
    .param p1, "tag"    # J

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->tag:J

    .line 81
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->title:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setTypeMask(I)V
    .locals 0
    .param p1, "typeMask"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->typeMask:I

    .line 73
    return-void
.end method

.method public setUnique(I)V
    .locals 0
    .param p1, "unique"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->unique:I

    .line 121
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alibaba/wukong/im/CreateConversationParams;->uuid:Ljava/lang/String;

    .line 153
    return-void
.end method
