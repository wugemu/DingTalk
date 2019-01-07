.class final Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$3;
.super Ljava/lang/Object;
.source "GlobalSearchHomepageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$3;->a:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 170
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$3;->a:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1171
    if-eqz v1, :cond_0

    .line 1175
    invoke-static {}, Lesz;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1176
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1177
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1178
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$3;->a:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;->a(Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;)V

    .line 172
    const-string/jumbo v1, "search_delete_history_click"

    invoke-static {v1}, Letd;->a(Ljava/lang/String;)V

    .line 175
    new-instance v0, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    .line 176
    .local v0, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setEntry(I)V

    .line 177
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$3;->a:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;->b(Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;)Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setTab(I)V

    .line 178
    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_SERACH_HISTORY_CLEAR:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionCode(I)V

    .line 179
    invoke-static {v0}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V

    .line 180
    return-void

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$3;->a:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;->b(Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;)Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/search/SearchGroupType;->getValue()I

    move-result v1

    goto :goto_0
.end method
