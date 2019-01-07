.class final Ldjm$5;
.super Ljava/lang/Object;
.source "DingUtil.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjm;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;IZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Member;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Lcom/alibaba/wukong/im/Message;

.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;IJZ)V
    .locals 1

    .prologue
    .line 169
    iput-object p1, p0, Ldjm$5;->a:Landroid/app/Activity;

    iput-object p2, p0, Ldjm$5;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Ldjm$5;->c:Lcom/alibaba/wukong/im/Message;

    iput p4, p0, Ldjm$5;->d:I

    iput-wide p5, p0, Ldjm$5;->e:J

    iput-boolean p7, p0, Ldjm$5;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 191
    iget-object v1, p0, Ldjm$5;->a:Landroid/app/Activity;

    iget-object v2, p0, Ldjm$5;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Ldjm$5;->c:Lcom/alibaba/wukong/im/Message;

    iget v4, p0, Ldjm$5;->d:I

    const/4 v5, 0x0

    iget-wide v6, p0, Ldjm$5;->e:J

    invoke-static/range {v1 .. v7}, Ldjm;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;ILjava/util/List;J)V

    .line 192
    iget-boolean v0, p0, Ldjm$5;->f:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Ldjm$5;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 195
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    check-cast p1, Ljava/util/List;

    .line 1174
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1175
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1176
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Member;

    .line 1177
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/User;->openId()J

    move-result-wide v2

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 1178
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/User;->openId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1182
    :cond_1
    iget-object v1, p0, Ldjm$5;->a:Landroid/app/Activity;

    iget-object v2, p0, Ldjm$5;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Ldjm$5;->c:Lcom/alibaba/wukong/im/Message;

    iget v4, p0, Ldjm$5;->d:I

    iget-wide v6, p0, Ldjm$5;->e:J

    invoke-static/range {v1 .. v7}, Ldjm;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;ILjava/util/List;J)V

    .line 1183
    iget-boolean v0, p0, Ldjm$5;->f:Z

    if-eqz v0, :cond_2

    .line 1184
    iget-object v0, p0, Ldjm$5;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 169
    :cond_2
    return-void
.end method
