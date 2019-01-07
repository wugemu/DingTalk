.class final Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2$1;
.super Ljava/lang/Thread;
.source "PhotoDealActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2$1;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2$1;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2;

    iget-object v0, v0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    invoke-static {v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->c(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2$1;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2;

    iget-object v1, v1, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    invoke-static {v1}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->a(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2$1;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2;

    iget-object v0, v0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    invoke-static {v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->c(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->postInvalidate()V

    .line 168
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2$1;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2;

    iget-object v0, v0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    new-instance v1, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2$1$1;-><init>(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2$1;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method
