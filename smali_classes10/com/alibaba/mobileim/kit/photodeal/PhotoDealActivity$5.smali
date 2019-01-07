.class final Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;
.super Ljava/lang/Object;
.source "PhotoDealActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 454
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    invoke-static {v1}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->c(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->b()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "repath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    new-instance v2, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5$1;

    invoke-direct {v2, p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5$1;-><init>(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 472
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    invoke-static {v1}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->f(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 466
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    invoke-static {v1}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->g(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    invoke-static {}, Lgzo;->a()Lgzo;

    move-result-object v1

    invoke-virtual {v1}, Lgzo;->c()Lgzl;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    invoke-static {v3}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->h(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lgzl;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    invoke-static {v2}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->h(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->a(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    invoke-virtual {v1}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->finish()V

    goto :goto_0
.end method
