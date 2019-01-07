.class final Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$2;
.super Ljava/lang/Object;
.source "DingTabFragmentImplV3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$2;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$2;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->h(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$2;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->i(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lbku;

    move-result-object v0

    invoke-virtual {v0}, Lbku;->a()V

    .line 201
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$2;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$2;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g()V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$2;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->j(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)V

    goto :goto_0
.end method
