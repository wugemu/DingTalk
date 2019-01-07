.class final Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;
.super Ljava/lang/Object;
.source "IMInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/doraemon/navigator/IntentRewriter;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Landroid/content/Context;Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    .prologue
    .line 766
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;->d:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;->b:Lcom/alibaba/doraemon/navigator/IntentRewriter;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    .line 802
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 766
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 766
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1769
    if-eqz p1, :cond_0

    .line 1770
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;->d:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;->b:Lcom/alibaba/doraemon/navigator/IntentRewriter;

    invoke-static {v0, v1, p1, v2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1777
    :goto_0
    return-void

    .line 1772
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;->c:Ljava/lang/String;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1774
    sget v0, Lctk$i;->and_ding_conversation_not_exist:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1775
    const-string/jumbo v0, "im"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "nav to a group chat which is not exist"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1780
    :cond_1
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4$1;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;)V

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    new-array v6, v5, [Ljava/lang/Long;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;->c:Ljava/lang/String;

    .line 1796
    invoke-static {v8}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1780
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    goto :goto_0
.end method
