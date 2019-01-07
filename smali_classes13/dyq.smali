.class public final Ldyq;
.super Ljava/lang/Object;
.source "CampusRecruitConversationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 27
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    const-wide/32 v2, 0x1ba4a51a

    invoke-static {v0, v1, v2, v3}, Ldjl;->a(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 41
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->getPeerId()J

    move-result-wide v0

    const-wide/32 v2, 0x1ba4a51a

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 31
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    const-wide/32 v2, 0x1ba4a51b

    invoke-static {v0, v1, v2, v3}, Ldjl;->a(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 50
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->getPeerId()J

    move-result-wide v0

    const-wide/32 v2, 0x1ba4a51b

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 95
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x15

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 96
    invoke-static {p0}, Lddq;->g(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v0, 0x0

    .line 118
    if-eqz p0, :cond_0

    .line 1105
    invoke-static {p0}, Libb;->i(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    .line 118
    if-eqz v1, :cond_0

    .line 119
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "im_campus_is_authed"

    invoke-interface {p0, v2}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 121
    :cond_0
    return v0
.end method

.method public static e(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v0, 0x0

    .line 125
    if-nez p0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 1114
    :cond_1
    invoke-static {p0}, Libb;->h(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    .line 128
    if-nez v1, :cond_2

    .line 2105
    invoke-static {p0}, Libb;->i(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    .line 129
    if-eqz v1, :cond_0

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "im_campus_is_authed"

    invoke-interface {p0, v2}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
