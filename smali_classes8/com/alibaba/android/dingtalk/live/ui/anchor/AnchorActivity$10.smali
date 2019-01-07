.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;
.super Lbyi$a;
.source "AnchorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-direct {p0}, Lbyi$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 377
    .line 1380
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1383
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Ljjx;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    .line 1384
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->f(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Z

    move-result v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->g(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lbtq;->a(ZZ)Ljjx;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Ljjx;)Ljjx;

    .line 1385
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->h(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1386
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    new-instance v4, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-direct {v4, v5, v2}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;B)V

    invoke-static {v3, v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;)Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    .line 1387
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Ljjx;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->h(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljjx;->a(Ljjx$b;)V

    .line 1388
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    new-instance v4, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-direct {v4, v5, v2}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;B)V

    invoke-static {v3, v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;)Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;

    .line 1389
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Ljjx;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->i(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljjx;->a(Ljjx$a;)V

    .line 1391
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->j(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V

    .line 1392
    if-eqz v0, :cond_3

    .line 1393
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->k(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 1394
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Ljjx;

    move-result-object v0

    invoke-virtual {v0}, Ljjx;->e()V

    .line 1396
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->l(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1397
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Ljjx;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljjx;->b(Z)V

    .line 1399
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->m(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V

    .line 377
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 1383
    goto/16 :goto_0
.end method
