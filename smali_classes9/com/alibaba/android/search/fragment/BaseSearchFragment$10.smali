.class final Lcom/alibaba/android/search/fragment/BaseSearchFragment$10;
.super Ljava/lang/Object;
.source "BaseSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/BaseSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .prologue
    .line 792
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$10;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

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
    .line 795
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$10;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->h(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)V

    .line 796
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$10;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z:Leqp$a;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$10;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z:Leqp$a;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$10;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Leqp$a;->a(Ljava/lang/String;Z)V

    .line 799
    :cond_0
    return-void
.end method
