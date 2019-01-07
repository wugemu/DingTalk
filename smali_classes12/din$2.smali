.class final Ldin$2;
.super Ljava/lang/Object;
.source "ConversationNavigator.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Z

.field final synthetic e:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Landroid/os/Bundle;ZI)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Ldin$2;->a:Landroid/content/Context;

    iput-object p2, p0, Ldin$2;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Ldin$2;->c:Landroid/os/Bundle;

    iput-boolean p4, p0, Ldin$2;->d:Z

    iput p5, p0, Ldin$2;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[ConversationNavigator]"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "navToConversationPage updateConversationTag from targetTag:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Ldin$2;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 135
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, " toTag:"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Ldin$2;->e:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, " cid:"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Ldin$2;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 136
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, " errorCode:"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    aput-object p1, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, ",errMsg:"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    aput-object p2, v2, v3

    .line 133
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    .line 1127
    iget-object v0, p0, Ldin$2;->a:Landroid/content/Context;

    iget-object v1, p0, Ldin$2;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Ldin$2;->c:Landroid/os/Bundle;

    iget-boolean v3, p0, Ldin$2;->d:Z

    invoke-static {v0, v1, v2, v3}, Ldin;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Landroid/os/Bundle;Z)V

    .line 124
    return-void
.end method
