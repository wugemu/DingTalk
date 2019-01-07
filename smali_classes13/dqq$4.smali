.class final Ldqq$4;
.super Ldqq$b;
.source "ChatMsgListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldqq;->a(Lcom/alibaba/wukong/im/Message;Ldqq$d;ZLjava/lang/Object;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldqq$b",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Ldqq$d;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/alibaba/wukong/im/Message;

.field final synthetic e:Ldqq;


# direct methods
.method constructor <init>(Ldqq;Lcom/alibaba/wukong/im/Message;Ldqq$d;Ljava/lang/Object;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Ldqq;

    .prologue
    .line 992
    iput-object p1, p0, Ldqq$4;->e:Ldqq;

    iput-object p2, p0, Ldqq$4;->a:Lcom/alibaba/wukong/im/Message;

    iput-object p3, p0, Ldqq$4;->b:Ldqq$d;

    iput-object p4, p0, Ldqq$4;->c:Ljava/lang/Object;

    iput-object p5, p0, Ldqq$4;->d:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0, p1}, Ldqq$b;-><init>(Ldqq;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 995
    iget-object v0, p0, Ldqq$4;->e:Ldqq;

    .line 2040
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldqq;->a(Z)V

    .line 996
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 992
    check-cast p1, Ljava/lang/Integer;

    .line 4000
    if-nez p1, :cond_0

    .line 4001
    iget-object v0, p0, Ldqq$4;->e:Ldqq;

    .line 5040
    invoke-virtual {v0, v7}, Ldqq;->a(Z)V

    .line 4009
    :goto_0
    return-void

    .line 4004
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    .line 4006
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x14

    if-gt v0, v1, :cond_2

    .line 4007
    iget-object v0, p0, Ldqq$4;->e:Ldqq;

    iget-object v1, p0, Ldqq$4;->a:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Ldqq$4;->b:Ldqq$d;

    iget-object v4, p0, Ldqq$4;->c:Ljava/lang/Object;

    .line 6278
    iget-object v5, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    .line 6279
    new-instance v5, Ldqq$f;

    invoke-direct {v5, v0, v3}, Ldqq$f;-><init>(Ldqq;Ldqq$d;)V

    invoke-virtual {v0, v5}, Ldqq;->a(Ldqq$d;)V

    .line 6280
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v4}, Ldqq;->a(ILjava/lang/Object;)V

    .line 6282
    invoke-virtual {v0}, Ldqq;->c()Lcom/alibaba/wukong/im/Message;

    move-result-object v3

    .line 6284
    iget-object v5, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    new-instance v6, Ldqq$6;

    invoke-direct {v6, v0, v4, v1}, Ldqq$6;-><init>(Ldqq;Ljava/lang/Object;Lcom/alibaba/wukong/im/Message;)V

    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v0, v0, Ldqq;->g:Landroid/app/Activity;

    invoke-static {v6, v1, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v5, v3, v7, v2, v0}, Lcom/alibaba/wukong/im/Conversation;->listPreviousMessagesAroundAnchor(Lcom/alibaba/wukong/im/Message;ZILcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 6328
    :cond_1
    invoke-virtual {v0, v7}, Ldqq;->a(Z)V

    goto :goto_0

    .line 4009
    :cond_2
    iget-object v0, p0, Ldqq$4;->e:Ldqq;

    iget-object v1, p0, Ldqq$4;->a:Lcom/alibaba/wukong/im/Message;

    iget-object v2, p0, Ldqq$4;->b:Ldqq$d;

    iget-object v3, p0, Ldqq$4;->c:Ljava/lang/Object;

    .line 7040
    invoke-virtual {v0, v1, v2, v3}, Ldqq;->a(Lcom/alibaba/wukong/im/Message;Ldqq$d;Ljava/lang/Object;)V

    goto :goto_0

    .line 4012
    :cond_3
    iget-object v1, p0, Ldqq$4;->a:Lcom/alibaba/wukong/im/Message;

    iget-object v2, p0, Ldqq$4;->d:Lcom/alibaba/wukong/im/Message;

    const/4 v3, 0x0

    new-instance v0, Ldqq$4$1;

    invoke-direct {v0, p0}, Ldqq$4$1;-><init>(Ldqq$4;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Ldqq$4;->e:Ldqq;

    .line 8040
    iget-object v5, v5, Ldqq;->g:Landroid/app/Activity;

    .line 4012
    invoke-static {v0, v4, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/wukong/im/Message;->compareOffset(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1051
    iget-object v0, p0, Ldqq$4;->e:Ldqq;

    .line 3040
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldqq;->a(Z)V

    .line 1052
    return-void
.end method
