.class final Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$14;
.super Ljava/lang/Object;
.source "DingMeetingFocusRecycleListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$14;->a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 333
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    sget v0, Laxp$i;->ding_network_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 339
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$14;->a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->f(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)Lbaj;

    move-result-object v0

    .line 1125
    iget-object v1, v0, Lbaj;->a:Lbai$b;

    sget v2, Laxp$i;->ding_list_cleaning:I

    invoke-interface {v1, v2}, Lbai$b;->a(I)V

    .line 1127
    invoke-static {}, Lbbv;->a()Lbbv;

    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v1

    iget-object v2, v0, Lbaj;->c:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lbbs;->i(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lbbv;->a(Ljava/lang/Iterable;)V

    .line 1128
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    new-instance v2, Lbaj$2;

    invoke-direct {v2, v0}, Lbaj$2;-><init>(Lbaj;)V

    const-class v3, Lcma;

    iget-object v0, v0, Lbaj;->a:Lbai$b;

    .line 1144
    invoke-interface {v0}, Lbai$b;->a()Landroid/app/Activity;

    move-result-object v0

    .line 1128
    invoke-static {v2, v3, v0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v0}, Lbbp;->d(Lcma;)V

    goto :goto_0
.end method
