.class public final Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;
.super Ljava/lang/Object;
.source "ConversationWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper$GroupSearchResultType;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/wukong/im/Conversation;

.field public b:Ljava/lang/String;

.field public c:I
    .annotation build Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper$GroupSearchResultType;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "callBackMode"    # Ljava/lang/String;
    .param p3, "resultType"    # Ljava/lang/Integer;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 27
    iput-object p2, p0, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;->b:Ljava/lang/String;

    .line 1033
    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 28
    iput v0, p0, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;->c:I

    .line 29
    return-void
.end method
