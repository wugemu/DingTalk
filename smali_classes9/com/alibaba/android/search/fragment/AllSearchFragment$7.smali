.class final Lcom/alibaba/android/search/fragment/AllSearchFragment$7;
.super Ljava/lang/Object;
.source "AllSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/AllSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/AllSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/AllSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$7;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 479
    const-string/jumbo v1, "-1"

    .line 480
    .local v1, "uuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$7;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->q(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Leqr$a;

    move-result-object v2

    invoke-interface {v2}, Leqr$a;->j()Leoe;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 481
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$7;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->q(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Leqr$a;

    move-result-object v2

    invoke-interface {v2}, Leqr$a;->j()Leoe;

    move-result-object v2

    .line 1084
    iget-object v1, v2, Leoe;->a:Ljava/lang/String;

    .line 483
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    .line 484
    .local v0, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setEntry(I)V

    .line 485
    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setUUID(Ljava/lang/String;)V

    .line 486
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->ALL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setTab(I)V

    .line 487
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_SERACH_FEEDBACK:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionCode(I)V

    .line 488
    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setValue(Ljava/lang/String;)V

    .line 489
    invoke-static {v0}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V

    .line 490
    return-void
.end method
