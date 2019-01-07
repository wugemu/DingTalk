.class public Lcom/alibaba/wukong/im/GroupNickObject;
.super Ljava/lang/Object;
.source "GroupNickObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4cc1829009c8550fL


# instance fields
.field private conversationId:Ljava/lang/String;

.field private groupNick:Ljava/lang/String;

.field private groupNickPinyin:Ljava/lang/String;

.field private openId:J

.field private tag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLcom/alibaba/wukong/idl/im/models/GroupNickModel;)V
    .locals 2
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "openId"    # J
    .param p4, "groupNickModel"    # Lcom/alibaba/wukong/idl/im/models/GroupNickModel;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/alibaba/wukong/im/GroupNickObject;->conversationId:Ljava/lang/String;

    .line 43
    iput-wide p2, p0, Lcom/alibaba/wukong/im/GroupNickObject;->openId:J

    .line 44
    if-eqz p4, :cond_0

    .line 45
    iget-object v0, p4, Lcom/alibaba/wukong/idl/im/models/GroupNickModel;->groupNick:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wukong/im/GroupNickObject;->groupNick:Ljava/lang/String;

    .line 46
    invoke-static {}, Libd;->a()Libd;

    iget-object v0, p4, Lcom/alibaba/wukong/idl/im/models/GroupNickModel;->groupNick:Ljava/lang/String;

    invoke-static {v0}, Libd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/wukong/im/GroupNickObject;->groupNickPinyin:Ljava/lang/String;

    .line 47
    iget-object v0, p4, Lcom/alibaba/wukong/idl/im/models/GroupNickModel;->tag:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/wukong/im/GroupNickObject;->tag:I

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public completeIfNecessary()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/wukong/im/GroupNickObject;->groupNick:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 118
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/wukong/im/GroupNickObject;->groupNick:Ljava/lang/String;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/GroupNickObject;->groupNickPinyin:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-static {}, Libd;->a()Libd;

    iget-object v0, p0, Lcom/alibaba/wukong/im/GroupNickObject;->groupNick:Ljava/lang/String;

    invoke-static {v0}, Libd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/wukong/im/GroupNickObject;->groupNickPinyin:Ljava/lang/String;

    .line 123
    :cond_1
    return-void
.end method

.method public copy()Lcom/alibaba/wukong/im/GroupNickObject;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    new-instance v0, Lcom/alibaba/wukong/im/GroupNickObject;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/GroupNickObject;-><init>()V

    .line 108
    .local v0, "result":Lcom/alibaba/wukong/im/GroupNickObject;
    iget-object v1, p0, Lcom/alibaba/wukong/im/GroupNickObject;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/GroupNickObject;->setConversationId(Ljava/lang/String;)V

    .line 109
    iget-wide v2, p0, Lcom/alibaba/wukong/im/GroupNickObject;->openId:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/wukong/im/GroupNickObject;->setOpenId(J)V

    .line 110
    iget-object v1, p0, Lcom/alibaba/wukong/im/GroupNickObject;->groupNick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/GroupNickObject;->setGroupNick(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/alibaba/wukong/im/GroupNickObject;->groupNickPinyin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/GroupNickObject;->setGroupNickPinyin(Ljava/lang/String;)V

    .line 112
    iget v1, p0, Lcom/alibaba/wukong/im/GroupNickObject;->tag:I

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/GroupNickObject;->setTag(I)V

    .line 113
    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/wukong/im/GroupNickObject;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/wukong/im/GroupNickObject;->groupNick:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupNickPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/wukong/im/GroupNickObject;->groupNickPinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/alibaba/wukong/im/GroupNickObject;->openId:J

    return-wide v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/alibaba/wukong/im/GroupNickObject;->tag:I

    return v0
.end method

.method public merge(Lcom/alibaba/wukong/im/GroupNickObject;)V
    .locals 4
    .param p1, "groupNickObject"    # Lcom/alibaba/wukong/im/GroupNickObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    if-nez p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/alibaba/wukong/im/GroupNickObject;->conversationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/GroupNickObject;->conversationId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-wide v0, p0, Lcom/alibaba/wukong/im/GroupNickObject;->openId:J

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getOpenId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNick()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/wukong/im/GroupNickObject;->groupNick:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNickPinyin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/wukong/im/GroupNickObject;->groupNickPinyin:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getTag()I

    move-result v0

    iput v0, p0, Lcom/alibaba/wukong/im/GroupNickObject;->tag:I

    goto :goto_0
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "conversationId"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/wukong/im/GroupNickObject;->conversationId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setGroupNick(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupNick"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/wukong/im/GroupNickObject;->groupNick:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setGroupNickPinyin(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupNickPinyin"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/wukong/im/GroupNickObject;->groupNickPinyin:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setOpenId(J)V
    .locals 1
    .param p1, "openId"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/alibaba/wukong/im/GroupNickObject;->openId:J

    .line 65
    return-void
.end method

.method public setTag(I)V
    .locals 0
    .param p1, "tag"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/alibaba/wukong/im/GroupNickObject;->tag:I

    .line 89
    return-void
.end method
