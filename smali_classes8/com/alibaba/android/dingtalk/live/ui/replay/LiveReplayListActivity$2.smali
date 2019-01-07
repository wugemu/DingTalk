.class final Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$2;
.super Ljava/lang/Object;
.source "LiveReplayListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lecl;

.field final synthetic b:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

.field final synthetic c:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;Lecl;Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$2;->c:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$2;->a:Lecl;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$2;->b:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$2;->a:Lecl;

    invoke-virtual {v0, p2}, Lecl;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 179
    .local v7, "item":Ljava/lang/Object;
    instance-of v0, v7, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v6, v7

    .line 182
    check-cast v6, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    .line 1039
    .local v6, "builder":Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;
    iget-wide v8, v6, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->a:J

    .line 184
    .local v8, "id":J
    const-wide/16 v2, 0x0

    cmp-long v0, v8, v2

    if-nez v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$2;->c:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$2;->c:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    .line 187
    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$2;->b:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    .line 1234
    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v4

    const-string/jumbo v5, "https://live.dingtalk.com/live_replay_link_share.html"

    new-instance v10, Lbwp$4;

    invoke-direct {v10, v1, v2, v3, v0}, Lbwp$4;-><init>(Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v4, v5, v10}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 188
    :cond_2
    const-wide/16 v2, 0x1

    cmp-long v0, v8, v2

    if-nez v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$2;->c:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$2;->c:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    .line 191
    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$2;->b:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$2;->b:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->title:Ljava/lang/String;

    .line 190
    invoke-static {v0, v2, v3, v4, v1}, Lbwp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 192
    :cond_3
    const-wide/16 v2, 0x2

    cmp-long v0, v8, v2

    if-nez v0, :cond_0

    .line 194
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$2;->c:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$2;->c:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    .line 195
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$2;->b:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$2;->b:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->title:Ljava/lang/String;

    .line 1253
    invoke-static {v5}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v10

    const-string/jumbo v11, "https://live.dingtalk.com/live_rename.html"

    new-instance v0, Lbwp$5;

    invoke-direct/range {v0 .. v5}, Lbwp$5;-><init>(Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v10, v11, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
