.class final Lcom/alibaba/android/search/fragment/GlobalSearchFragment$3$2;
.super Ljava/lang/Object;
.source "GlobalSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/GlobalSearchFragment$3;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/SearchGroupType;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment$3;Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment$3;

    .prologue
    .line 1598
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$3$2;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$3;

    iput-object p2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$3$2;->a:Lcom/alibaba/android/search/SearchGroupType;

    iput-object p3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$3$2;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$3$2;->a:Lcom/alibaba/android/search/SearchGroupType;

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->RECOMMEND:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v0, v1, :cond_1

    .line 1602
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$3$2;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$3;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->N(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqn$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$3$2;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Leqn$a;->c(Ljava/util/List;)V

    .line 1606
    :cond_0
    :goto_0
    return-void

    .line 1603
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$3$2;->a:Lcom/alibaba/android/search/SearchGroupType;

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->MY_GROUP:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v0, v1, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$3$2;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$3;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->N(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqn$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$3$2;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Leqn$a;->e(Ljava/util/List;)V

    goto :goto_0
.end method
