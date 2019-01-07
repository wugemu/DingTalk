.class final Ldac$6;
.super Ljava/lang/Object;
.source "UserToBasicDataDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Z

.field final synthetic d:Ldac;


# direct methods
.method constructor <init>(Ldac;Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V
    .locals 0
    .param p1, "this$0"    # Ldac;

    .prologue
    .line 383
    iput-object p1, p0, Ldac$6;->d:Ldac;

    iput-object p2, p0, Ldac$6;->a:Landroid/app/Activity;

    iput-object p3, p0, Ldac$6;->b:Lcom/alibaba/wukong/im/Message;

    iput-boolean p4, p0, Ldac$6;->c:Z

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
    .line 386
    iget-object v0, p0, Ldac$6;->a:Landroid/app/Activity;

    iget-object v1, p0, Ldac$6;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    iget-object v2, p0, Ldac$6;->b:Lcom/alibaba/wukong/im/Message;

    .line 1431
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_2

    .line 388
    :cond_0
    :goto_0
    iget-object v0, p0, Ldac$6;->d:Ldac;

    iget-object v0, v0, Ldac;->j:Lcts$b;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Ldac$6;->d:Ldac;

    iget-object v0, v0, Ldac;->j:Lcts$b;

    iget-object v1, p0, Ldac$6;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0, v1}, Lcts$b;->c(Lcom/alibaba/wukong/im/Message;)V

    .line 391
    :cond_1
    return-void

    .line 1435
    :cond_2
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Long;

    const/4 v4, 0x0

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->getPeerId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Ldjm;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;Ljava/util/List;)V

    goto :goto_0
.end method
