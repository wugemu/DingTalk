.class final Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$2;
.super Ljava/lang/Object;
.source "SessionFragmentImplV2.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$2;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$2;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->z(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcrb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$2;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->z(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcrb;

    .line 1143
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$2;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->z(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcrb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$2;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->z(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcrb;

    .line 1132
    :cond_0
    return-void
.end method
