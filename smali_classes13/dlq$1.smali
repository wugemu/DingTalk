.class final Ldlq$1;
.super Ljava/lang/Object;
.source "ForwardBatchEncryptFileTask.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldlq;
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

.field final synthetic b:Ldlq;


# direct methods
.method constructor <init>(Ldlq;Ldln;)V
    .locals 0
    .param p1, "this$0"    # Ldlq;

    .prologue
    .line 56
    iput-object p1, p0, Ldlq$1;->b:Ldlq;

    iput-object p2, p0, Ldlq$1;->a:Ldln;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 56
    check-cast p1, Ljava/lang/String;

    .line 1059
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Ldlq$1;->a:Ldln;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "download filePath is empty"

    invoke-static {v0, v1, v2}, Ldlq;->a(Ldlm;Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "ForwardBatchEncryptFileTask"

    const-string/jumbo v2, "filePath is empty."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    :goto_0
    return-void

    .line 1066
    :cond_0
    iget-object v0, p0, Ldlq$1;->b:Ldlq;

    iget-object v1, p0, Ldlq$1;->a:Ldln;

    .line 2089
    new-instance v2, Ldiz;

    iget-object v3, v1, Ldln;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v2, v3}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 2090
    new-instance v3, Ldlq$2;

    invoke-direct {v3, v0, v1}, Ldlq$2;-><init>(Ldlq;Ldln;)V

    .line 2131
    iput-object v3, v2, Ldiz;->b:Ldiz$a;

    .line 2109
    iget-object v0, v1, Ldln;->c:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Ldln;->c:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 2110
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_1

    .line 2111
    invoke-virtual {v2, p1, p1, v4, v4}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    goto :goto_0

    .line 2113
    :cond_1
    invoke-virtual {v2, p1, v4}, Ldiz;->a(Ljava/lang/String;Z)V

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
    .line 76
    iget-object v1, p0, Ldlq$1;->a:Ldln;

    invoke-static {v1, p1, p2}, Ldlq;->a(Ldlm;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "ForwardBatchEncryptFileTask"

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

    .line 79
    .local v0, "errorMsg":Ljava/lang/String;
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "ForwardBatchEncryptFileTask"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 72
    return-void
.end method
