.class final Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$5;
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$5;->b:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    iput-object p2, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 443
    const-string/jumbo v0, "pref_key_has_shown_delete_ding_confirm_dialog"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$5;->b:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->f(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)Lbaj;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$5;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lbaj;->a(Ljava/util/List;)V

    .line 445
    return-void
.end method
