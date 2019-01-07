.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$91;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ldiz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 2642
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$91;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 2645
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$91;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->D(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2646
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$91;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->D(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldey;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldey;->a(Lcom/alibaba/wukong/im/Message;)V

    .line 2649
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$91;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldev;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2650
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$91;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldev;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldev;->a(Lcom/alibaba/wukong/im/Message;)V

    .line 2653
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$91;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/wukong/im/Message;)V

    .line 2654
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$91;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->F(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 2655
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$91;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {p1, v0}, Lddq;->a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    .line 2656
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;I)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "progress"    # I

    .prologue
    .line 2674
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 2661
    const-string/jumbo v0, "101021"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2662
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$91;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0, p1}, Lebr;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 2668
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$91;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->F(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 2669
    return-void

    .line 2663
    :cond_1
    const-string/jumbo v0, "130003"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2664
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$91;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    sget v1, Lctk$i;->conversation_kickoff:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;IZ)V

    goto :goto_0

    .line 2665
    :cond_2
    const-string/jumbo v0, "130012"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2666
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$91;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    sget v1, Lctk$i;->conversation_disband_warning:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;IZ)V

    goto :goto_0
.end method
