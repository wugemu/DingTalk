.class final Lcom/alibaba/android/search/activity/MsgListActivity$1;
.super Ljava/lang/Object;
.source "MsgListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/activity/MsgListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/activity/MsgListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/activity/MsgListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/activity/MsgListActivity;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alibaba/android/search/activity/MsgListActivity$1;->a:Lcom/alibaba/android/search/activity/MsgListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity$1;->a:Lcom/alibaba/android/search/activity/MsgListActivity;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/MsgListActivity$1;->a:Lcom/alibaba/android/search/activity/MsgListActivity;

    iget-object v1, v1, Lcom/alibaba/android/search/activity/MsgListActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/activity/MsgListActivity;->b(Ljava/lang/String;)V

    .line 102
    return-void
.end method
