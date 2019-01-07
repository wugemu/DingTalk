.class final Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$3;
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
    .line 416
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$3;->a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 419
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$3;->a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->f(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)Lbaj;

    move-result-object v1

    .line 1186
    new-instance v0, Lbaj$4;

    invoke-direct {v0, v1}, Lbaj$4;-><init>(Lbaj;)V

    const-class v2, Lcma;

    iget-object v3, v1, Lbaj;->a:Lbai$b;

    .line 1202
    invoke-interface {v3}, Lbai$b;->a()Landroid/app/Activity;

    move-result-object v3

    .line 1186
    invoke-static {v0, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1205
    iget-object v2, v1, Lbaj;->a:Lbai$b;

    sget v3, Laxp$i;->loading:I

    invoke-interface {v2, v3}, Lbai$b;->a(I)V

    .line 1206
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v1, Lbaj;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1, v0}, Lbbp;->a(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcma;)V

    .line 420
    return-void
.end method
