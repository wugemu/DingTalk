.class final Lcyd$2;
.super Ljava/lang/Object;
.source "UserCommonVideoViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyd;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

.field final synthetic c:Lcyd;


# direct methods
.method constructor <init>(Lcyd;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;)V
    .locals 0
    .param p1, "this$0"    # Lcyd;

    .prologue
    .line 253
    iput-object p1, p0, Lcyd$2;->c:Lcyd;

    iput-object p2, p0, Lcyd$2;->a:Lcom/alibaba/wukong/im/Message;

    iput-object p3, p0, Lcyd$2;->b:Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 256
    iget-object v0, p0, Lcyd$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->OFFLINE:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcyd$2;->a:Lcom/alibaba/wukong/im/Message;

    .line 257
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENDING:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v0, v1, :cond_4

    .line 258
    :cond_0
    iget-object v0, p0, Lcyd$2;->c:Lcyd;

    iget-object v0, v0, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    if-nez v0, :cond_1

    .line 275
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcyd$2;->b:Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    iget-object v1, p0, Lcyd$2;->c:Lcyd;

    iget-object v1, v1, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    .line 262
    invoke-static {v0, v1}, Ldiq;->b(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lebj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Lcyd$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->getUploadController()Lifu;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcyd$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->getUploadController()Lifu;

    move-result-object v0

    invoke-virtual {v0}, Lifu;->b()V

    goto :goto_0

    .line 266
    :cond_2
    const-string/jumbo v0, "im"

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "[ChatMsgActivity] commonVideo canceled where uploadController is null, msgId:"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcyd$2;->c:Lcyd;

    iget-object v2, v2, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_3
    const-string/jumbo v0, "im"

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "[ChatMsgActivity] commonVideo canceled where content is not localUrl, msgId:"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcyd$2;->c:Lcyd;

    iget-object v2, v2, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_4
    invoke-static {}, Lebn;->a()Lebn;

    move-result-object v0

    iget-object v1, p0, Lcyd$2;->b:Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    iget-object v2, p0, Lcyd$2;->c:Lcyd;

    iget-object v2, v2, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    invoke-static {v1, v2}, Ldiq;->b(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lebn;->b(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcyd$2;->c:Lcyd;

    iget-object v0, v0, Lcyd;->ac:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method
