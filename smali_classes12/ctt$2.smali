.class final Lctt$2;
.super Ljava/lang/Object;
.source "AbsCommentMsgHolder.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lctt;->b(Lcom/alibaba/wukong/im/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Lctt;


# direct methods
.method constructor <init>(Lctt;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Lctt;

    .prologue
    .line 64
    iput-object p1, p0, Lctt$2;->b:Lctt;

    iput-object p2, p0, Lctt$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    iget-object v0, p0, Lctt$2;->b:Lctt;

    iget-object v0, v0, Lctt;->P:Lcts$b;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lctt$2;->b:Lctt;

    iget-object v0, v0, Lctt;->P:Lcts$b;

    iget-object v1, p0, Lctt$2;->a:Lcom/alibaba/wukong/im/Message;

    iget-object v2, p0, Lctt$2;->b:Lctt;

    invoke-static {v2}, Lctt;->a(Lctt;)Lcts$c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcts$b;->a(Lcom/alibaba/wukong/im/Message;Lcts$c;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lctt$2;->b:Lctt;

    invoke-static {v0}, Lctt;->a(Lctt;)Lcts$c;

    move-result-object v0

    iget-object v1, p0, Lctt$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcts$c;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    iget-object v0, p0, Lctt$2;->b:Lctt;

    iget-object v0, v0, Lctt;->P:Lcts$b;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lctt$2;->b:Lctt;

    iget-object v0, v0, Lctt;->P:Lcts$b;

    iget-object v1, p0, Lctt$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0, v1}, Lcts$b;->e(Lcom/alibaba/wukong/im/Message;)V

    .line 87
    iget-object v0, p0, Lctt$2;->a:Lcom/alibaba/wukong/im/Message;

    const-string/jumbo v1, "dingId"

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    const-string/jumbo v0, "ding_card_enter_click"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lctt$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0}, Ldkc;->O(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string/jumbo v0, "cloud_report_chat_comment"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Lctt$2;->b:Lctt;

    iget-object v0, v0, Lctt;->P:Lcts$b;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lctt$2;->b:Lctt;

    iget-object v0, v0, Lctt;->P:Lcts$b;

    iget-object v1, p0, Lctt$2;->a:Lcom/alibaba/wukong/im/Message;

    iget-object v2, p0, Lctt$2;->b:Lctt;

    invoke-static {v2}, Lctt;->a(Lctt;)Lcts$c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcts$b;->b(Lcom/alibaba/wukong/im/Message;Lcts$c;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lctt$2;->b:Lctt;

    invoke-static {v0}, Lctt;->a(Lctt;)Lcts$c;

    move-result-object v0

    iget-object v1, p0, Lctt$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcts$c;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
