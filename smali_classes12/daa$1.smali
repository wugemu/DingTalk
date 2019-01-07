.class final Ldaa$1;
.super Ljava/lang/Object;
.source "UserTextViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldaa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldaa;


# direct methods
.method constructor <init>(Ldaa;)V
    .locals 0
    .param p1, "this$0"    # Ldaa;

    .prologue
    .line 105
    iput-object p1, p0, Ldaa$1;->a:Ldaa;

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
    .line 108
    iget-object v3, p0, Ldaa$1;->a:Ldaa;

    iget-object v3, v3, Ldaa;->e:Landroid/view/View;

    sget v4, Lctk$f;->item_message_data:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 110
    .local v2, "tag":Ljava/lang/Object;
    instance-of v3, v2, Lcom/alibaba/wukong/im/message/MessageImpl;

    if-nez v3, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v2

    .line 114
    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 116
    .local v1, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 117
    .local v0, "id":I
    sget v3, Lctk$f;->check_answer:I

    if-ne v0, v3, :cond_2

    .line 118
    iget-object v3, p0, Ldaa$1;->a:Ldaa;

    iget-object v3, v3, Ldaa;->d:Landroid/app/Activity;

    invoke-static {v3, v1}, Ldfk;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0

    .line 119
    :cond_2
    sget v3, Lctk$f;->feedback:I

    if-ne v0, v3, :cond_3

    .line 120
    iget-object v3, p0, Ldaa$1;->a:Ldaa;

    iget-object v4, v3, Ldaa;->d:Landroid/app/Activity;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    new-instance v5, Ldaa$1$1;

    invoke-direct {v5, p0}, Ldaa$1$1;-><init>(Ldaa$1;)V

    const-class v6, Lcov;

    iget-object v7, p0, Ldaa$1;->a:Ldaa;

    iget-object v7, v7, Ldaa;->d:Landroid/app/Activity;

    invoke-interface {v3, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcov;

    invoke-static {v4, v1, v3}, Ldfk;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcov;)V

    goto :goto_0

    .line 126
    :cond_3
    sget v3, Lctk$f;->create_ticket:I

    if-ne v0, v3, :cond_0

    .line 127
    iget-object v3, p0, Ldaa$1;->a:Ldaa;

    iget-object v3, v3, Ldaa;->d:Landroid/app/Activity;

    invoke-static {v3, v1}, Ldfk;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0
.end method
