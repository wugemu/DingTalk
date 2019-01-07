.class public final Ldyw;
.super Ljava/lang/Object;
.source "EfficientModeDingtalkComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
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


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 11
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    check-cast p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 1015
    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    .line 1016
    :cond_0
    if-eqz p2, :cond_2

    move v0, v1

    .line 1030
    :cond_1
    :goto_0
    return v0

    .line 1018
    :cond_2
    if-nez p1, :cond_1

    move v0, v2

    .line 1021
    goto :goto_0

    .line 1024
    :cond_3
    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_4

    iget-object v3, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v3, :cond_6

    .line 1025
    :cond_4
    iget-object v3, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_5

    move v0, v1

    .line 1026
    goto :goto_0

    .line 1027
    :cond_5
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_1

    move v0, v2

    .line 1030
    goto :goto_0

    .line 1034
    :cond_6
    iget v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryIndex:I

    iget v3, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryIndex:I

    sub-int/2addr v2, v3

    if-gtz v2, :cond_1

    .line 1036
    iget v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryIndex:I

    iget v3, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryIndex:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_7

    move v0, v1

    .line 1037
    goto :goto_0

    .line 1039
    :cond_7
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldza;->b(Ljava/lang/String;)Z

    move-result v2

    .line 1040
    iget-object v3, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldza;->b(Ljava/lang/String;)Z

    move-result v3

    .line 1041
    if-eqz v2, :cond_8

    if-nez v3, :cond_8

    move v0, v1

    .line 1042
    goto :goto_0

    .line 1043
    :cond_8
    if-nez v2, :cond_9

    if-nez v3, :cond_1

    .line 1046
    :cond_9
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    iget-object v1, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Ldza;->c(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Conversation;)I

    move-result v0

    goto :goto_0
.end method
