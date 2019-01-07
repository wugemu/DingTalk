.class final Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6;
.super Ljava/lang/Thread;
.source "PhotoDealActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->a(Z)V
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
    .line 512
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 515
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    invoke-static {v1}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->c(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->b()Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "respath":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    new-instance v2, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6$1;-><init>(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 524
    return-void
.end method
