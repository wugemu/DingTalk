.class final Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$6;
.super Ljava/lang/Object;
.source "DingNewTabFragmentImpl.java"

# interfaces
.implements Lbkw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$6;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 614
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$6;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->f(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lbku;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$6;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->f(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lbku;

    move-result-object v0

    invoke-virtual {v0}, Lbku;->a()V

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$6;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->b(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;Z)V

    .line 619
    return-void
.end method

.method public final a(I)V
    .locals 5
    .param p1, "mCurrentSubFilter"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 596
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$6;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->o(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    move-result-object v1

    .line 597
    .local v1, "tabIndex":Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$6;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->getValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->a(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;I)Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "pKey":Ljava/lang/String;
    invoke-static {v0, v4}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 599
    invoke-static {v0, p1}, Lcpk;->b(Ljava/lang/String;I)V

    .line 600
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$6;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->d(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)V

    .line 603
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$6;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->f(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lbku;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 604
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$6;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->f(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lbku;

    move-result-object v2

    invoke-virtual {v2}, Lbku;->a()V

    .line 607
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$6;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v2, v4}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->b(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;Z)V

    .line 609
    invoke-static {v1, p1}, Lbjz;->a(Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;I)V

    .line 610
    return-void
.end method
