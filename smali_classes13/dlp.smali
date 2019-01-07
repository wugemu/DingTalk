.class public final Ldlp;
.super Ldln;
.source "MultiToTaskSingleParams.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ldln;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0}, Ldlp;->b()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 47
    :goto_0
    return v1

    .line 46
    :cond_0
    iget-object v1, p0, Ldlp;->c:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    iget-object v3, p0, Ldlp;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1, v3}, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->transformation(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    move-result-object v0

    .line 47
    .local v0, "type":Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ENCRYPT_FILE:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 22
    iget-object v1, p0, Ldlp;->a:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 28
    :cond_0
    :goto_0
    return v0

    .line 25
    :cond_1
    iget-object v1, p0, Ldlp;->c:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 28
    const/4 v0, 0x1

    goto :goto_0
.end method
