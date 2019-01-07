.class final Ldvf$2;
.super Ljava/lang/Object;
.source "ForwardCombineSelectHandler.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldvf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Ldvf;


# direct methods
.method constructor <init>(Ldvf;Lcom/alibaba/wukong/im/Conversation;IJ)V
    .locals 0
    .param p1, "this$0"    # Ldvf;

    .prologue
    .line 185
    iput-object p1, p0, Ldvf$2;->d:Ldvf;

    iput-object p2, p0, Ldvf$2;->a:Lcom/alibaba/wukong/im/Conversation;

    iput p3, p0, Ldvf$2;->b:I

    iput-wide p4, p0, Ldvf$2;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 188
    const-string/jumbo v0, "intent_key_im_forward_mode"

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    const-string/jumbo v2, "title"

    iget-object v0, p0, Ldvf$2;->d:Ldvf;

    iget-object v0, v0, Ldvf;->g:Landroid/app/Activity;

    iget-object v3, p0, Ldvf$2;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 1017
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1019
    instance-of v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v4, :cond_1

    .line 1020
    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->S()Ljava/lang/String;

    move-result-object v0

    .line 1022
    :goto_0
    invoke-static {v3, v0}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_1
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string/jumbo v0, "im_navigator_from"

    const-string/jumbo v1, "msg"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string/jumbo v0, "intent_key_forward_count"

    iget v1, p0, Ldvf$2;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    const-string/jumbo v0, "count_limit"

    iget v1, p0, Ldvf$2;->b:I

    invoke-static {v1}, Ldvf;->a(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    const-string/jumbo v0, "intent_key_time_stamp"

    iget-wide v2, p0, Ldvf$2;->c:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 194
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 195
    return-object p1

    .line 1025
    :cond_0
    invoke-static {v3, v1}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
