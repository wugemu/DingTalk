.class final Lcom/alibaba/android/ding/activity/SubTaskListActivity$3;
.super Ljava/lang/Object;
.source "SubTaskListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/SubTaskListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/SubTaskListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/SubTaskListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/SubTaskListActivity;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity$3;->a:Lcom/alibaba/android/ding/activity/SubTaskListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity$3;->a:Lcom/alibaba/android/ding/activity/SubTaskListActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->c(Lcom/alibaba/android/ding/activity/SubTaskListActivity;)Lbbg$a;

    move-result-object v0

    invoke-interface {v0}, Lbbg$a;->b()V

    .line 140
    return-void
.end method
