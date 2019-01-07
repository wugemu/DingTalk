.class final Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6$1;
.super Ljava/lang/Object;
.source "PhotoDealActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6;


# direct methods
.method constructor <init>(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6$1;->b:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6;

    iput-object p2, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6$1;->a:Ljava/lang/String;

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
    .line 519
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6$1;->b:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6;

    iget-object v0, v0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6$1;->b:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6;

    iget-object v2, v2, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    sget v3, Liff$f;->dt_photo_save_to:I

    invoke-virtual {v2, v3}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 520
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6$1;->b:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6;

    iget-object v0, v0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    invoke-static {v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->f(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6$1;->b:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6;

    iget-object v0, v0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->finish()V

    .line 522
    return-void
.end method
