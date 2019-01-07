.class final Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$1;
.super Ljava/lang/Thread;
.source "PhotoDealActivity.java"


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
    .line 145
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$1;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

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
    .line 148
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$1;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$1;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    invoke-virtual {v1}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$1;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    invoke-static {v2}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->a(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhst;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->a(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$1;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    invoke-static {v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->b(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)V

    .line 150
    return-void
.end method
