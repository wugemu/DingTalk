.class final Lcom/alibaba/android/search/fragment/AllSearchFragment$8;
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
    .line 494
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->s(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Lcom/alibaba/android/search/fragment/AllSearchFragment$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->s(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Lcom/alibaba/android/search/fragment/AllSearchFragment$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment$a;->d()V

    .line 500
    :cond_0
    return-void
.end method
