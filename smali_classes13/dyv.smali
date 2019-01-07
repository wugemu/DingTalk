.class public final Ldyv;
.super Ljava/lang/Object;
.source "EfficientModeComparator.java"

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

.method private static a(Lcom/alibaba/wukong/im/Conversation;)I
    .locals 1
    .param p0, "conversationObj"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 53
    invoke-static {p0}, Ldza;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/16 v0, 0x9

    .line 61
    :goto_0
    return v0

    .line 55
    :cond_0
    invoke-static {p0}, Ldza;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    const/16 v0, 0x8

    goto :goto_0

    .line 57
    :cond_1
    invoke-static {p0}, Ldza;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    const/4 v0, 0x7

    goto :goto_0

    .line 61
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 11
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    check-cast p2, Lcom/alibaba/wukong/im/Conversation;

    .line 1015
    if-ne p1, p2, :cond_1

    .line 1034
    :cond_0
    :goto_0
    return v0

    .line 1018
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_4

    .line 1019
    :cond_2
    if-eqz p2, :cond_3

    move v0, v2

    .line 1020
    goto :goto_0

    .line 1021
    :cond_3
    if-eqz p1, :cond_0

    move v0, v3

    .line 1022
    goto :goto_0

    .line 1027
    :cond_4
    invoke-static {p1, p2}, Ldza;->b(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Conversation;)I

    move-result v1

    .line 1028
    if-nez v1, :cond_7

    .line 1042
    invoke-static {p2}, Ldyv;->a(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v1

    invoke-static {p1}, Ldyv;->a(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v4

    sub-int/2addr v1, v4

    .line 1043
    if-nez v1, :cond_5

    .line 1031
    :goto_1
    if-nez v0, :cond_0

    .line 1032
    invoke-static {p1, p2}, Ldza;->c(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Conversation;)I

    move-result v0

    goto :goto_0

    .line 1045
    :cond_5
    if-gez v1, :cond_6

    move v0, v3

    .line 1046
    goto :goto_1

    :cond_6
    move v0, v2

    .line 1048
    goto :goto_1

    :cond_7
    move v0, v1

    .line 11
    goto :goto_0
.end method
