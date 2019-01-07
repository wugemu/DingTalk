.class final Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a$1;
.super Ljava/lang/Object;
.source "GlobalSearchHomepageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$b;

.field final synthetic b:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a;Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a$1;->b:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a;

    iput-object p2, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a$1;->a:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$b;

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
    .line 341
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a$1;->b:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a;->c:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;->e(Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;)Lerw$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a$1;->b:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a;->c:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;->e(Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;)Lerw$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a$1;->a:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$b;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$b;->c:Lcom/alibaba/android/search/SearchGroupType;

    invoke-interface {v0, v1}, Lerw$a;->c(Lcom/alibaba/android/search/SearchGroupType;)V

    goto :goto_0
.end method
