.class final Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$3;
.super Ljava/lang/Object;
.source "SearchMobileContactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$3;->a:Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 140
    iget-object v2, p0, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$3;->a:Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;

    invoke-static {v2}, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;->a(Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;)Landroid/widget/SearchView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    .line 141
    .local v1, "query":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 143
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "mobile":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$3;->a:Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;->a(Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;Ljava/lang/String;)V

    .line 147
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "search_profile_by_keyword_click"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 149
    .end local v0    # "mobile":Ljava/lang/String;
    :cond_1
    return-void
.end method
