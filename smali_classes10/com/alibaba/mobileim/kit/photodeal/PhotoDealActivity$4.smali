.class final Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$4;
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
    .line 377
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$4;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$4;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    invoke-static {v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)V

    .line 381
    return-void
.end method
