.class final Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$1;
.super Ljava/lang/Object;
.source "LiveReplayListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

.field final synthetic b:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$1;->b:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$1;->a:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 164
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 165
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$1;->b:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$1;->a:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;)V

    .line 166
    return-void
.end method
