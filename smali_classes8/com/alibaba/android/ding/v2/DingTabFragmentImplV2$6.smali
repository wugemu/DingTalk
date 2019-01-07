.class final Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$6;
.super Ljava/lang/Object;
.source "DingTabFragmentImplV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$6;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$6;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->g(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$6;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->h(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lbkt;

    move-result-object v0

    invoke-virtual {v0}, Lbkt;->a()V

    .line 229
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$6;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->f(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$6;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->f(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->d()V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$6;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->i(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V

    goto :goto_0
.end method
