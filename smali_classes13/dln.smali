.class public Ldln;
.super Ldlm;
.source "ForwardSingleParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldlm",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "messages"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Ldlm;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p0}, Ldln;->b()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 37
    :goto_0
    return v1

    .line 36
    :cond_0
    iget-object v1, p0, Ldln;->c:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    iget-object v3, p0, Ldln;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1, v3}, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->transformation(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    move-result-object v0

    .line 37
    .local v0, "type":Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ENCRYPT_FILE:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method
