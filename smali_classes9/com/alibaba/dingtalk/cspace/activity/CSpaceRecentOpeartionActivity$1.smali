.class final Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$1;
.super Ljava/lang/Object;
.source "CSpaceRecentOpeartionActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;I)V

    .line 120
    :cond_0
    return-void
.end method
