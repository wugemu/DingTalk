.class final Lcom/alibaba/android/ding/widget/DingAdsView$2;
.super Ljava/lang/Object;
.source "DingAdsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/widget/DingAdsView;->a(ILblf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/ding/widget/DingAdsView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingAdsView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingAdsView;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingAdsView$2;->b:Lcom/alibaba/android/ding/widget/DingAdsView;

    iput p2, p0, Lcom/alibaba/android/ding/widget/DingAdsView$2;->a:I

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
    .line 142
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAdsView$2;->b:Lcom/alibaba/android/ding/widget/DingAdsView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingAdsView;->b(Lcom/alibaba/android/ding/widget/DingAdsView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    invoke-static {}, Lbbl;->a()Lbbl;

    iget v0, p0, Lcom/alibaba/android/ding/widget/DingAdsView$2;->a:I

    invoke-static {v0}, Lbbl;->e(I)V

    .line 144
    iget v0, p0, Lcom/alibaba/android/ding/widget/DingAdsView$2;->a:I

    .line 1717
    packed-switch v0, :pswitch_data_0

    .line 1732
    :goto_0
    return-void

    .line 1719
    :pswitch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1720
    const-string/jumbo v1, "menu"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    const-string/jumbo v1, "ding_advertise_close"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1724
    :pswitch_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1725
    const-string/jumbo v1, "menu"

    const-string/jumbo v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    const-string/jumbo v1, "ding_advertise_close"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1729
    :pswitch_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1730
    const-string/jumbo v1, "menu"

    const-string/jumbo v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    const-string/jumbo v1, "ding_advertise_close"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1734
    :pswitch_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1735
    const-string/jumbo v1, "menu"

    const-string/jumbo v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    const-string/jumbo v1, "ding_advertise_close"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1717
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
