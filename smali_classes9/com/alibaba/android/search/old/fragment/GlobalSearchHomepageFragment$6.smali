.class final Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$6;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$6;->c:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;

    iput-object p2, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$6;->a:Ljava/lang/String;

    iput p3, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$6;->b:I

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
    .line 261
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$6;->c:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;->d(Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;)Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$6;->c:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;->d(Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;)Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$d;

    .line 266
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    .line 267
    .local v0, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setEntry(I)V

    .line 268
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$6;->c:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;->b(Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;)Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setTab(I)V

    .line 269
    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_SERACH_HISTORY:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionCode(I)V

    .line 270
    iget v1, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$6;->b:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionValue(I)V

    .line 271
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setValue(Ljava/lang/String;)V

    .line 272
    invoke-static {v0}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V

    .line 273
    return-void

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$6;->c:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;->b(Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;)Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/search/SearchGroupType;->getValue()I

    move-result v1

    goto :goto_0
.end method
