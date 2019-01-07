.class public final Lgri;
.super Ljava/lang/Object;
.source "SpaceStatisticsConsts.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v0, 0x0

    .line 148
    if-nez p0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-object v0

    .line 152
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 153
    const-string/jumbo v0, "chatsingle"

    goto :goto_0

    .line 154
    :cond_2
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 155
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 156
    const-string/jumbo v0, "chatorg"

    goto :goto_0

    .line 158
    :cond_3
    const-string/jumbo v0, "chatgroup"

    goto :goto_0
.end method
