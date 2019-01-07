.class final Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$13;
.super Ljava/lang/Object;
.source "TowerSelectActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$c;


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
    .line 313
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$13;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 317
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$13;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->e(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Lfhx;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lfhx;->a(Ljava/lang/Object;Z)Z

    .line 318
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$13;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->e(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Lfhx;

    move-result-object v0

    invoke-interface {v0}, Lfhx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$13;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->j(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$13;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->k(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Lfgw;

    move-result-object v0

    invoke-virtual {v0}, Lfgw;->notifyDataSetChanged()V

    .line 322
    return-void
.end method
