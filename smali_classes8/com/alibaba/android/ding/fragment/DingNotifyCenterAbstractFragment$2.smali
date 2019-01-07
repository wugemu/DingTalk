.class final Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment$2;
.super Ljava/lang/Object;
.source "DingNotifyCenterAbstractFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment$2;->a:Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 99
    add-int v0, p2, p3

    mul-int/lit8 v1, p3, 0x7

    add-int/2addr v0, v1

    if-le v0, p4, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment$2;->a:Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->h()V

    .line 102
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 95
    return-void
.end method
