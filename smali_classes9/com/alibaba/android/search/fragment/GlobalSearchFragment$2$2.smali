.class final Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2$2;
.super Ljava/lang/Object;
.source "GlobalSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2;

    .prologue
    .line 1503
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2;

    iput-object p2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2$2;->a:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v2, v0}, Lerw$a;->a(Lcom/alibaba/android/search/SearchGroupType;I)V

    .line 1509
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;

    move-result-object v0

    invoke-interface {v0}, Lerw$a;->a()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2$2;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->b(Ljava/util/List;)V

    .line 1512
    :cond_0
    return-void

    .line 1507
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
