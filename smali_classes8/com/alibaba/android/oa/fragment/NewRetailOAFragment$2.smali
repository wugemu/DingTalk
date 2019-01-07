.class final Lcom/alibaba/android/oa/fragment/NewRetailOAFragment$2;
.super Ljava/lang/Object;
.source "NewRetailOAFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


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
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment$2;->a:Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 85
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 75
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 80
    return-void
.end method
