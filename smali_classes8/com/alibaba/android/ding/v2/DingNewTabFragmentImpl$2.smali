.class final Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$2;
.super Ljava/lang/Object;
.source "DingNewTabFragmentImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 186
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->e(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->f(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lbku;

    move-result-object v0

    invoke-virtual {v0}, Lbku;->a()V

    .line 198
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->a(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->a(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g()V

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->g(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)V

    goto :goto_0
.end method
