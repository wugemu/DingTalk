.class final Lcvl$1;
.super Ljava/lang/Object;
.source "ForwardCombineViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcvl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcvl;


# direct methods
.method constructor <init>(Lcvl;)V
    .locals 0
    .param p1, "this$0"    # Lcvl;

    .prologue
    .line 32
    iput-object p1, p0, Lcvl$1;->a:Lcvl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    iget-object v4, p0, Lcvl$1;->a:Lcvl;

    iget-object v4, v4, Lcvl;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;

    if-nez v4, :cond_0

    .line 58
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v4, p0, Lcvl$1;->a:Lcvl;

    iget-object v4, v4, Lcvl;->X:Lcom/alibaba/wukong/im/Message;

    .line 39
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;

    .line 40
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;->title()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "title":Ljava/lang/String;
    invoke-static {}, Ldvi;->a()Ldvi;

    move-result-object v4

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;->contents()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ldvi;->a(Ljava/util/List;)J

    move-result-wide v2

    .line 42
    .local v2, "timeStamp":J
    const-string/jumbo v4, "NAVIGATOR"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v5, p0, Lcvl$1;->a:Lcvl;

    iget-object v5, v5, Lcvl;->d:Landroid/app/Activity;

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v4

    const-string/jumbo v5, "https://qr.dingtalk.com/conversation/chat_list_detail.html"

    new-instance v6, Lcvl$1$1;

    invoke-direct {v6, p0, v1, v2, v3}, Lcvl$1$1;-><init>(Lcvl$1;Ljava/lang/String;J)V

    invoke-interface {v4, v5, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
