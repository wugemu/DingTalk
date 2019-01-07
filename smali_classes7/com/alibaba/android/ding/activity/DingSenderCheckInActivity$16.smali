.class final Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$16;
.super Ljava/lang/Object;
.source "DingSenderCheckInActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$16;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 279
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$16;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->h(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Lbdk;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$16;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$16;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->h(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Lbdk;

    move-result-object v2

    iget-object v2, v2, Lbdk;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->b(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;Ljava/lang/String;)V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$16;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->i(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$16;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->i(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$16;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->i(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 283
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$16;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->i(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdu;

    .line 284
    .local v0, "model":Lbdu;
    if-eqz v0, :cond_0

    .line 285
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$16;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    iget-object v2, v0, Lbdu;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->b(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    .end local v0    # "model":Lbdu;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$16;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->j(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V

    goto :goto_0
.end method
