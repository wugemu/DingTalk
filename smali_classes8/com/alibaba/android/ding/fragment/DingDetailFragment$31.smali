.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$31;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/core/PoiItem;

.field final synthetic b:Lcom/alibaba/android/ding/fragment/DingDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lcom/amap/api/services/core/PoiItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 1740
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$31;->b:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    iput-object p2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$31;->a:Lcom/amap/api/services/core/PoiItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$31;->b:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$31;->b:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$31;->a:Lcom/amap/api/services/core/PoiItem;

    invoke-static {v0, v1, v2}, Lbhy;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Landroid/app/Activity;Lcom/amap/api/services/core/PoiItem;)V

    .line 1745
    return-void
.end method
