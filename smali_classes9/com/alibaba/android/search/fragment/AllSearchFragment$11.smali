.class final Lcom/alibaba/android/search/fragment/AllSearchFragment$11;
.super Ljava/lang/Object;
.source "AllSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/consts/SubPager;

.field final synthetic b:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/android/search/fragment/AllSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/AllSearchFragment;Lcom/alibaba/android/search/consts/SubPager;Lcom/alibaba/android/search/fragment/BaseSearchFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 915
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$11;->d:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iput-object p2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$11;->a:Lcom/alibaba/android/search/consts/SubPager;

    iput-object p3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$11;->b:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iput-boolean p4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$11;->c:Z

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
    .line 918
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$11;->d:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->t(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Lcom/alibaba/android/search/fragment/AllSearchFragment$b;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$11;->a:Lcom/alibaba/android/search/consts/SubPager;

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$11;->b:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$11;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1241
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->b(Lcom/alibaba/android/search/consts/SubPager;Z)V

    .line 919
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$11;->d:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c()V

    .line 920
    return-void

    .line 918
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
