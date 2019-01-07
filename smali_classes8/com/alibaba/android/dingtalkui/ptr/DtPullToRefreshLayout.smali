.class public Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;
.super Lin/srain/cube/views/ptr/PtrFrameLayout;
.source "DtPullToRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;,
        Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;,
        Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

.field public b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v1, 0x1f4

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lin/srain/cube/views/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$1;-><init>(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->b:Ljava/lang/Runnable;

    .line 1051
    const v0, 0x3fd9999a    # 1.7f

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->setResistance(F)V

    .line 1052
    const v0, 0x3f99999a    # 1.2f

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->setRatioOfHeaderHeightToRefresh(F)V

    .line 1053
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->setLoadingMinTime(I)V

    .line 1054
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->setDurationToClose(I)V

    .line 1055
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->setDurationToCloseHeader(I)V

    .line 1056
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->setKeepHeaderWhenRefresh(Z)V

    .line 1057
    new-instance v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    .line 1058
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->setHeaderView(Landroid/view/View;)V

    .line 1059
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->a(Lkey;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->onDetachedFromWindow()V

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->a(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 83
    return-void
.end method

.method public setHeaderTextContent(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;)V
    .locals 1
    .param p1, "textContent"    # Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    .line 1133
    iput-object p1, v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    .line 64
    return-void
.end method
