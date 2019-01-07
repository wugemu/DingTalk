.class final Ldin$1$1;
.super Ljava/lang/Object;
.source "ConversationNavigator.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldin$1;
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
.field final synthetic a:Ldin$1;


# direct methods
.method constructor <init>(Ldin$1;)V
    .locals 0
    .param p1, "this$0"    # Ldin$1;

    .prologue
    .line 81
    iput-object p1, p0, Ldin$1$1;->a:Ldin$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[ConversationNavigator]"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "navToConversationPage createConversation exception, cid:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Ldin$1$1;->a:Ldin$1;

    iget-object v4, v4, Ldin$1;->a:Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;

    .line 93
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->getCid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ",errorCode:"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p1, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, ",errorMsg:"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object p2, v2, v3

    .line 91
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1084
    iget-object v0, p0, Ldin$1$1;->a:Ldin$1;

    iget-object v0, v0, Ldin$1;->b:Landroid/content/Context;

    iget-object v1, p0, Ldin$1$1;->a:Ldin$1;

    iget-object v1, v1, Ldin$1;->c:Landroid/os/Bundle;

    iget-object v2, p0, Ldin$1$1;->a:Ldin$1;

    iget-boolean v2, v2, Ldin$1;->d:Z

    invoke-static {v0, p1, v1, v2}, Ldin;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Landroid/os/Bundle;Z)V

    .line 81
    return-void
.end method
