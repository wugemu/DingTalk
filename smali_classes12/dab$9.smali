.class final Ldab$9;
.super Ljava/lang/Object;
.source "UserThirdPartyViewHolder.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldab;
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
.field final synthetic a:Landroid/text/SpannableString;

.field final synthetic b:Ldab;


# direct methods
.method constructor <init>(Ldab;Landroid/text/SpannableString;)V
    .locals 0
    .param p1, "this$0"    # Ldab;

    .prologue
    .line 837
    iput-object p1, p0, Ldab$9;->b:Ldab;

    iput-object p2, p0, Ldab$9;->a:Landroid/text/SpannableString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 863
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "UserThirdPartyViewHolder"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "sendThanksMsg rpc getConversation-->onException:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",error:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 837
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 837
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1840
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "UserThirdPartyViewHolder"

    const-string/jumbo v2, "sendThanksMsg rpc getConversation-->onSuccess"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    iget-object v1, p0, Ldab$9;->a:Landroid/text/SpannableString;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 1842
    new-instance v2, Ldkn;

    invoke-direct {v2}, Ldkn;-><init>()V

    new-instance v0, Ldab$9$1;

    invoke-direct {v0, p0}, Ldab$9$1;-><init>(Ldab$9;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Ldab$9;->b:Ldab;

    iget-object v4, v4, Ldab;->d:Landroid/app/Activity;

    invoke-static {v0, v3, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, p1, v2, v0}, Lcom/alibaba/wukong/im/Message;->sendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    .line 837
    return-void
.end method
