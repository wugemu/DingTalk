.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$2;
.super Ljava/lang/Object;
.source "ConversationSearchActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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
    .line 619
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "newText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 628
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;Ljava/lang/String;)V

    .line 630
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 632
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 633
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->a()V

    .line 640
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->n(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->n(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;

    move-result-object v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {v2, v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;->a(I)V

    .line 644
    :cond_1
    return v1

    .line 635
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->b()V

    goto :goto_0

    .line 641
    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 623
    const/4 v0, 0x0

    return v0
.end method
