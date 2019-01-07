.class final Lbnv$4;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbnv;


# direct methods
.method constructor <init>(Lbnv;)V
    .locals 0
    .param p1, "this$0"    # Lbnv;

    .prologue
    .line 510
    iput-object p1, p0, Lbnv$4;->a:Lbnv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 514
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    iget-object v1, p0, Lbnv$4;->a:Lbnv;

    invoke-static {v1}, Lbnv;->b(Lbnv;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "detail_delete_posts"

    :goto_0
    invoke-interface {v2, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 516
    iget-object v1, p0, Lbnv$4;->a:Lbnv;

    invoke-static {v1}, Lbnv;->c(Lbnv;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 517
    iget-object v1, p0, Lbnv$4;->a:Lbnv;

    iget-object v1, v1, Lbnv;->a:Landroid/app/Activity;

    iget-object v2, p0, Lbnv$4;->a:Lbnv;

    invoke-static {v2}, Lbnv;->c(Lbnv;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-static {v1, v2, v3}, Lbpw;->a(Landroid/app/Activity;J)V

    .line 519
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "circle_on_before_delete_post"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "circle_on_before_delete_post"

    iget-object v2, p0, Lbnv$4;->a:Lbnv;

    invoke-static {v2}, Lbnv;->c(Lbnv;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 521
    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 527
    :goto_1
    return-void

    .line 514
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v1, "feed_delete_posts"

    goto :goto_0

    .line 523
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "circle_on_delete_post"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "circle_on_delete_post"

    iget-object v2, p0, Lbnv$4;->a:Lbnv;

    invoke-static {v2}, Lbnv;->c(Lbnv;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 525
    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_1
.end method
