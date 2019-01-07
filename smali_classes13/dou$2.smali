.class final Ldou$2;
.super Ljava/lang/Object;
.source "MenuDeleteHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldou;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Ldou;


# direct methods
.method constructor <init>(Ldou;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Ldou;

    .prologue
    .line 48
    iput-object p1, p0, Ldou$2;->b:Ldou;

    iput-object p2, p0, Ldou$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    iget-object v0, p0, Ldou$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->OFFLINE:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ldou$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENDING:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Ldou$2;->a:Lcom/alibaba/wukong/im/Message;

    .line 53
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldou$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0xca

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ldou$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_3

    .line 54
    :cond_1
    invoke-static {}, Lebp;->a()Lebp;

    move-result-object v1

    iget-object v0, p0, Ldou$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    .line 1051
    iget-object v0, v1, Lebp;->a:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1052
    iget-object v0, v1, Lebp;->a:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lebo;

    .line 1053
    if-eqz v0, :cond_2

    .line 1180
    iget-boolean v4, v0, Lebo;->f:Z

    if-nez v4, :cond_2

    iget-wide v4, v0, Lebo;->a:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 1181
    iget-wide v4, v0, Lebo;->a:J

    invoke-static {v4, v5}, Lcom/taobao/media/MediaEncoderMgr;->reEncodeMp4Files_cancel(J)I

    .line 1056
    :cond_2
    iget-object v0, v1, Lebp;->a:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_3
    iget-object v0, p0, Ldou$2;->a:Lcom/alibaba/wukong/im/Message;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Message;->delete(Lcom/alibaba/wukong/Callback;)V

    .line 58
    return-void
.end method
