.class final Lcom/alibaba/android/search/activity/MsgListActivity$3;
.super Ljava/lang/Object;
.source "MsgListActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;


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
    .line 207
    iput-object p1, p0, Lcom/alibaba/android/search/activity/MsgListActivity$3;->a:Lcom/alibaba/android/search/activity/MsgListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 211
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;-><init>()V

    .line 212
    .local v0, "model":Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;
    iget-object v1, p0, Lcom/alibaba/android/search/activity/MsgListActivity$3;->a:Lcom/alibaba/android/search/activity/MsgListActivity;

    invoke-static {v1}, Lcom/alibaba/android/search/activity/MsgListActivity;->a(Lcom/alibaba/android/search/activity/MsgListActivity;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->getFilterUsers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->setUids(Ljava/util/List;)V

    .line 213
    iget-object v1, p0, Lcom/alibaba/android/search/activity/MsgListActivity$3;->a:Lcom/alibaba/android/search/activity/MsgListActivity;

    invoke-static {v1}, Lcom/alibaba/android/search/activity/MsgListActivity;->a(Lcom/alibaba/android/search/activity/MsgListActivity;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->getFilterConversations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->setCids(Ljava/util/List;)V

    .line 214
    iget-object v1, p0, Lcom/alibaba/android/search/activity/MsgListActivity$3;->a:Lcom/alibaba/android/search/activity/MsgListActivity;

    invoke-static {v1}, Lcom/alibaba/android/search/activity/MsgListActivity;->a(Lcom/alibaba/android/search/activity/MsgListActivity;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->getFilterTimeSpan()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->setFromTime(J)V

    .line 215
    iget-object v1, p0, Lcom/alibaba/android/search/activity/MsgListActivity$3;->a:Lcom/alibaba/android/search/activity/MsgListActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/search/activity/MsgListActivity;->a(Lcom/alibaba/android/search/activity/MsgListActivity;Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;)Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .line 217
    iget-object v1, p0, Lcom/alibaba/android/search/activity/MsgListActivity$3;->a:Lcom/alibaba/android/search/activity/MsgListActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/activity/MsgListActivity$3;->a:Lcom/alibaba/android/search/activity/MsgListActivity;

    iget-object v2, v2, Lcom/alibaba/android/search/activity/MsgListActivity;->b:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/search/activity/MsgListActivity;->a(Lcom/alibaba/android/search/activity/MsgListActivity;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 222
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity$3;->a:Lcom/alibaba/android/search/activity/MsgListActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/MsgListActivity;->a(Lcom/alibaba/android/search/activity/MsgListActivity;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity$3;->a:Lcom/alibaba/android/search/activity/MsgListActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/MsgListActivity;->a(Lcom/alibaba/android/search/activity/MsgListActivity;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->a()V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity$3;->a:Lcom/alibaba/android/search/activity/MsgListActivity;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/MsgListActivity$3;->a:Lcom/alibaba/android/search/activity/MsgListActivity;

    iget-object v1, v1, Lcom/alibaba/android/search/activity/MsgListActivity;->b:Landroid/widget/SearchView;

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 227
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity$3;->a:Lcom/alibaba/android/search/activity/MsgListActivity;

    iget-object v0, v0, Lcom/alibaba/android/search/activity/MsgListActivity;->b:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 228
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity$3;->a:Lcom/alibaba/android/search/activity/MsgListActivity;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/MsgListActivity$3;->a:Lcom/alibaba/android/search/activity/MsgListActivity;

    iget-object v1, v1, Lcom/alibaba/android/search/activity/MsgListActivity;->b:Landroid/widget/SearchView;

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 237
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity$3;->a:Lcom/alibaba/android/search/activity/MsgListActivity;

    iget-object v0, v0, Lcom/alibaba/android/search/activity/MsgListActivity;->b:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 238
    return-void
.end method
