.class final Lcxd$1;
.super Ljava/lang/Object;
.source "RobotMarkdownViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcxd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcxd;


# direct methods
.method constructor <init>(Lcxd;)V
    .locals 0
    .param p1, "this$0"    # Lcxd;

    .prologue
    .line 111
    iput-object p1, p0, Lcxd$1;->a:Lcxd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    iget-object v3, p0, Lcxd$1;->a:Lcxd;

    iget-object v3, v3, Lcxd;->e:Landroid/view/View;

    sget v4, Lctk$f;->item_message_data:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 116
    .local v2, "tag":Ljava/lang/Object;
    instance-of v3, v2, Lcom/alibaba/wukong/im/message/MessageImpl;

    if-nez v3, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v2

    .line 120
    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 122
    .local v1, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 123
    .local v0, "id":I
    sget v3, Lctk$f;->check_answer:I

    if-ne v0, v3, :cond_2

    .line 124
    iget-object v3, p0, Lcxd$1;->a:Lcxd;

    iget-object v3, v3, Lcxd;->d:Landroid/app/Activity;

    invoke-static {v3, v1}, Ldfk;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0

    .line 125
    :cond_2
    sget v3, Lctk$f;->feedback:I

    if-ne v0, v3, :cond_3

    .line 126
    iget-object v3, p0, Lcxd$1;->a:Lcxd;

    iget-object v4, v3, Lcxd;->d:Landroid/app/Activity;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    new-instance v5, Lcxd$1$1;

    invoke-direct {v5, p0}, Lcxd$1$1;-><init>(Lcxd$1;)V

    const-class v6, Lcov;

    iget-object v7, p0, Lcxd$1;->a:Lcxd;

    iget-object v7, v7, Lcxd;->d:Landroid/app/Activity;

    invoke-interface {v3, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcov;

    invoke-static {v4, v1, v3}, Ldfk;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcov;)V

    goto :goto_0

    .line 132
    :cond_3
    sget v3, Lctk$f;->create_ticket:I

    if-ne v0, v3, :cond_0

    .line 133
    iget-object v3, p0, Lcxd$1;->a:Lcxd;

    iget-object v3, v3, Lcxd;->d:Landroid/app/Activity;

    iget-object v4, p0, Lcxd$1;->a:Lcxd;

    iget-object v4, v4, Lcxd;->X:Lcom/alibaba/wukong/im/Message;

    invoke-static {v3, v4}, Ldfk;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0
.end method
