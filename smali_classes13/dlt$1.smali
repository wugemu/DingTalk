.class final Ldlt$1;
.super Ljava/lang/Object;
.source "ForwardCombineEncryptFileTask.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldlt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldln;

.field final synthetic b:Ldlt;


# direct methods
.method constructor <init>(Ldlt;Ldln;)V
    .locals 0
    .param p1, "this$0"    # Ldlt;

    .prologue
    .line 60
    iput-object p1, p0, Ldlt$1;->b:Ldlt;

    iput-object p2, p0, Ldlt$1;->a:Ldln;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    check-cast p1, Ljava/lang/String;

    .line 1063
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Ldlt$1;->a:Ldln;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "download filePath is empty"

    invoke-static {v0, v1, v2}, Ldlt;->a(Ldlm;Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "ForwardCombineEncryptFileTask"

    const-string/jumbo v2, "download filePath is empty"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    :goto_0
    return-void

    .line 1068
    :cond_0
    iget-object v1, p0, Ldlt$1;->b:Ldlt;

    iget-object v2, p0, Ldlt$1;->a:Ldln;

    .line 2087
    iget-object v0, v2, Ldln;->c:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 2088
    if-eqz v0, :cond_1

    .line 2089
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v3, 0xcb

    if-ne v0, v3, :cond_1

    .line 2097
    invoke-static {}, Lify;->a()Lify;

    move-result-object v0

    new-instance v3, Ldlt$2;

    invoke-direct {v3, v1, v2}, Ldlt$2;-><init>(Ldlt;Ldln;)V

    invoke-virtual {v0, p1, v3}, Lify;->a(Ljava/lang/String;Lifv;)V

    goto :goto_0

    .line 2132
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v3, v2, Ldln;->a:Landroid/app/Activity;

    iget-object v4, v2, Ldln;->b:Lcom/alibaba/wukong/im/Conversation;

    new-instance v5, Ldlt$3;

    invoke-direct {v5, v1, v2}, Ldlt$3;-><init>(Ldlt;Ldln;)V

    invoke-virtual {v0, v3, v4, p1, v5}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    iget-object v1, p0, Ldlt$1;->a:Ldln;

    invoke-static {v1, p1, p2}, Ldlt;->a(Ldlm;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "ForwardCombineEncryptFileTask"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "download failed, code="

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ", reason="

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "errorMsg":Ljava/lang/String;
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "ForwardCombineEncryptFileTask"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 74
    return-void
.end method
