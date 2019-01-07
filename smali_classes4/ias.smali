.class public final Lias;
.super Ljava/lang/Object;
.source "ConversationComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 54
    if-eqz p1, :cond_0

    .line 55
    const/4 v0, -0x1

    .line 59
    :goto_0
    return v0

    .line 56
    :cond_0
    if-eqz p0, :cond_1

    .line 57
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    const-wide/16 v6, 0x0

    .line 11
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    check-cast p2, Lcom/alibaba/wukong/im/Conversation;

    .line 1015
    if-eq p1, p2, :cond_7

    .line 1018
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1019
    :cond_0
    invoke-static {p1, p2}, Lias;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 1048
    :cond_1
    :goto_0
    return v0

    .line 1023
    :cond_2
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 1024
    cmp-long v4, v2, v6

    if-gtz v4, :cond_1

    .line 1026
    cmp-long v2, v2, v6

    if-gez v2, :cond_3

    move v0, v1

    .line 1027
    goto :goto_0

    .line 1031
    :cond_3
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->getLastModify()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->getLastModify()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 1032
    cmp-long v4, v2, v6

    if-gtz v4, :cond_1

    .line 1034
    cmp-long v2, v2, v6

    if-gez v2, :cond_4

    move v0, v1

    .line 1035
    goto :goto_0

    .line 1039
    :cond_4
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    .line 1040
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v3

    .line 1041
    if-eqz v2, :cond_5

    if-nez v3, :cond_6

    .line 1042
    :cond_5
    invoke-static {v2, v3}, Lias;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 1044
    :cond_6
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v4

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    sub-long v2, v4, v2

    .line 1045
    cmp-long v4, v2, v6

    if-gtz v4, :cond_1

    .line 1047
    cmp-long v0, v2, v6

    if-gez v0, :cond_7

    move v0, v1

    .line 1048
    goto :goto_0

    .line 1050
    :cond_7
    const/4 v0, 0x0

    .line 11
    goto :goto_0
.end method
