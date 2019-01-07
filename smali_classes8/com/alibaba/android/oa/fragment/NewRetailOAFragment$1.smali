.class final Lcom/alibaba/android/oa/fragment/NewRetailOAFragment$1;
.super Ljava/lang/Object;
.source "NewRetailOAFragment.java"

# interfaces
.implements Lcom/alibaba/android/oa/view/NewRetailPageIndicator$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment$1;->a:Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment$1;->a:Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->a(Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;)Lcom/alibaba/android/oa/view/OATabViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/oa/view/OATabViewPager;->setCurrentItem(I)V

    .line 64
    const-string/jumbo v0, "KEY_NEW_RETAIL_LASTED_TYPE"

    invoke-static {v0, p1}, Lcpk;->b(Ljava/lang/String;I)V

    .line 65
    return-void
.end method
