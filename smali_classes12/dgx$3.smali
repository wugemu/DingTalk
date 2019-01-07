.class final Ldgx$3;
.super Ljava/lang/Object;
.source "ChatSettingPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldgx;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Ldgx;


# direct methods
.method constructor <init>(Ldgx;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Ldgx;

    .prologue
    .line 103
    iput-object p1, p0, Ldgx$3;->c:Ldgx;

    iput-object p2, p0, Ldgx$3;->a:Ljava/lang/String;

    iput-object p3, p0, Ldgx$3;->b:Lcom/alibaba/wukong/im/Conversation;

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
    .line 118
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[ChatSettingPresenter] rpcGetConversation fail code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Ldgx$3;->b:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Ldgx$3;->c:Ldgx;

    .line 1025
    iget-object v0, v0, Ldgx;->b:Ldgw$b;

    .line 120
    invoke-interface {v0, p1, p2}, Ldgw$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1106
    if-nez p1, :cond_1

    .line 1107
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[ChatSettingPresenter] rpcGetConversation,cid:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ldgx$3;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",is null"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    iget-object v0, p0, Ldgx$3;->b:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_0

    .line 1109
    iget-object v0, p0, Ldgx$3;->c:Ldgx;

    .line 2025
    iget-object v0, v0, Ldgx;->b:Ldgw$b;

    .line 1109
    const-string/jumbo v1, "-1"

    iget-object v2, p0, Ldgx$3;->c:Ldgx;

    .line 3025
    iget-object v2, v2, Ldgx;->a:Landroid/app/Activity;

    .line 1109
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lctk$i;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ldgw$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1113
    :cond_1
    iget-object v0, p0, Ldgx$3;->c:Ldgx;

    .line 4025
    iget-object v0, v0, Ldgx;->b:Ldgw$b;

    .line 1113
    invoke-interface {v0, p1}, Ldgw$b;->a(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method
