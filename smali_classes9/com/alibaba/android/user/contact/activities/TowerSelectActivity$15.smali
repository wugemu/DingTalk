.class final Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$15;
.super Ljava/lang/Object;
.source "TowerSelectActivity.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$15;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 2
    .param p1, "messageEvent"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 353
    if-eqz p1, :cond_0

    iget v0, p1, Lcjo$b;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$15;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->k(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Lfgw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$15;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->k(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Lfgw;

    move-result-object v0

    invoke-virtual {v0}, Lfgw;->notifyDataSetChanged()V

    .line 358
    :cond_0
    return-void
.end method
