.class public final Ldkq;
.super Ljava/lang/Object;
.source "WkConversationComparator.java"

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
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Conversation;)I
    .locals 1
    .param p0, "lhs"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "rhs"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v0, 0x0

    .line 22
    if-ne p0, p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 25
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_4

    .line 26
    :cond_2
    if-eqz p1, :cond_3

    .line 27
    const/4 v0, -0x1

    goto :goto_0

    .line 28
    :cond_3
    if-eqz p0, :cond_0

    .line 29
    const/4 v0, 0x1

    goto :goto_0

    .line 34
    :cond_4
    invoke-static {p0, p1}, Ldza;->b(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Conversation;)I

    move-result v0

    .line 35
    .local v0, "levelCompare":I
    if-nez v0, :cond_0

    .line 36
    invoke-static {p0, p1}, Ldza;->c(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Conversation;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    check-cast p2, Lcom/alibaba/wukong/im/Conversation;

    invoke-static {p1, p2}, Ldkq;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Conversation;)I

    move-result v0

    return v0
.end method
