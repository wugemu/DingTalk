.class public final Ldjh;
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
        "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldkq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ldkq;

    invoke-direct {v0}, Ldkq;-><init>()V

    iput-object v0, p0, Ldjh;->a:Ldkq;

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 11
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    check-cast p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 1017
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    iget-object v1, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Ldkq;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Conversation;)I

    move-result v0

    .line 11
    return v0
.end method
