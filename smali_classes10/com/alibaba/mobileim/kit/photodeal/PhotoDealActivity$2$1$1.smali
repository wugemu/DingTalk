.class final Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2$1$1;
.super Ljava/lang/Object;
.source "PhotoDealActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2$1;


# direct methods
.method constructor <init>(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2$1;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2$1$1;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2$1$1;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2$1;

    iget-object v0, v0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2$1;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2;

    iget-object v0, v0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    invoke-static {v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->d(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)V

    .line 172
    return-void
.end method
