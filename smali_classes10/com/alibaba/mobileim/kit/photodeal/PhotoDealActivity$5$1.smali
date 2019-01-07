.class final Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5$1;
.super Ljava/lang/Object;
.source "PhotoDealActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;


# direct methods
.method constructor <init>(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5$1;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 459
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5$1;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;

    iget-object v0, v0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5$1;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;

    iget-object v1, v1, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    sget v2, Liff$f;->dt_photo_edit_fail:I

    invoke-virtual {v1, v2}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 460
    return-void
.end method
