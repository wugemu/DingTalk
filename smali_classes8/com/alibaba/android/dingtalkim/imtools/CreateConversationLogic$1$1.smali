.class final Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1$1;
.super Ljava/lang/Object;
.source "CreateConversationLogic.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1$1;->a:Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 64
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1071
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1$1;->a:Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;->a:Landroid/app/Activity;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1$1;->a:Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;ZLjava/lang/String;)V

    .line 64
    return-void
.end method
