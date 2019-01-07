.class public final Ldvo;
.super Ljava/lang/Object;
.source "GroupComponentComparator.java"

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
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 28
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    check-cast p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 1032
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    move v0, v2

    .line 1067
    :goto_0
    return v0

    .line 1035
    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    move v0, v3

    .line 1036
    goto :goto_0

    .line 1038
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    move v0, v4

    .line 1039
    goto :goto_0

    .line 1041
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 1042
    iget-object v5, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 1043
    if-nez v0, :cond_3

    if-nez v5, :cond_3

    move v0, v2

    .line 1044
    goto :goto_0

    .line 1046
    :cond_3
    if-nez v0, :cond_4

    if-eqz v5, :cond_4

    move v0, v3

    .line 1047
    goto :goto_0

    .line 1049
    :cond_4
    if-eqz v0, :cond_5

    if-nez v5, :cond_5

    move v0, v4

    .line 1050
    goto :goto_0

    .line 1054
    :cond_5
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 1055
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v0

    .line 1073
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1057
    :goto_1
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 1058
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v1

    .line 2073
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1060
    :cond_6
    if-nez v0, :cond_7

    if-nez v1, :cond_7

    move v0, v2

    .line 1061
    goto :goto_0

    .line 1063
    :cond_7
    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    move v0, v3

    .line 1064
    goto :goto_0

    .line 1066
    :cond_8
    if-eqz v0, :cond_9

    if-nez v1, :cond_9

    move v0, v4

    .line 1067
    goto :goto_0

    .line 1069
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_a
    move-object v0, v1

    goto :goto_1
.end method
