.class final Ldgx$1;
.super Ljava/lang/Object;
.source "ChatSettingPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldgx;->a(Ljava/lang/String;)V
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

.field final synthetic b:Ldgx;


# direct methods
.method constructor <init>(Ldgx;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldgx;

    .prologue
    .line 51
    iput-object p1, p0, Ldgx$1;->b:Ldgx;

    iput-object p2, p0, Ldgx$1;->a:Ljava/lang/String;

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
    const/4 v4, 0x0

    .line 62
    const-string/jumbo v0, "im"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[ChatSettingPresenter] getLocalConversation error,cid:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ldgx$1;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ",code:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ",reason:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Ldgx$1;->b:Ldgx;

    iget-object v1, p0, Ldgx$1;->a:Ljava/lang/String;

    invoke-static {v0, v4, v1}, Ldgx;->a(Ldgx;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1054
    if-eqz p1, :cond_0

    .line 1055
    iget-object v0, p0, Ldgx$1;->b:Ldgx;

    .line 2025
    iget-object v0, v0, Ldgx;->b:Ldgw$b;

    .line 1055
    invoke-interface {v0, p1}, Ldgw$b;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 1057
    :cond_0
    iget-object v0, p0, Ldgx$1;->b:Ldgx;

    iget-object v1, p0, Ldgx$1;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Ldgx;->a(Ldgx;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 51
    return-void
.end method
