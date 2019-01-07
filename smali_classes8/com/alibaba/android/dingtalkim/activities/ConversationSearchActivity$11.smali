.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;
.super Ljava/lang/Object;
.source "ConversationSearchActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 448
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 459
    :goto_0
    return-void

    .line 452
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;-><init>()V

    .line 453
    .local v0, "model":Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->getFilterUsers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->setUids(Ljava/util/List;)V

    .line 454
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->getFilterConversations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->setCids(Ljava/util/List;)V

    .line 455
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->getFilterTimeSpan()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->setFromTime(J)V

    .line 456
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;)Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .line 458
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Landroid/widget/SearchView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 463
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 478
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->getFilterUsers()Ljava/util/List;

    move-result-object v1

    .line 468
    .local v1, "filterUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->getFilterConversations()Ljava/util/List;

    move-result-object v0

    .line 469
    .local v0, "filterConversations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    .line 470
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    .line 471
    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->getFilterTimeSpan()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Landroid/widget/SearchView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 472
    sget v2, Lctk$i;->dt_search_message_narrow_lack_conditions:I

    invoke-static {v2}, Lcms;->a(I)V

    goto :goto_0

    .line 474
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->a()V

    .line 475
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Landroid/widget/SearchView;

    move-result-object v3

    invoke-static {v2, v3}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 476
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Landroid/widget/SearchView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 486
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 487
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 488
    return-void
.end method
