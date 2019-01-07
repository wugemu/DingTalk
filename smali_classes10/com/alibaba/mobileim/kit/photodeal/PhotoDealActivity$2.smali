.class final Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2;
.super Ljava/lang/Object;
.source "PhotoDealActivity.java"

# interfaces
.implements Lhsr$b;


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
    .line 155
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2;->a:Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2$1;

    invoke-direct {v0, p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2$1;-><init>(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2;)V

    .line 175
    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2$1;->start()V

    .line 176
    return-void
.end method
