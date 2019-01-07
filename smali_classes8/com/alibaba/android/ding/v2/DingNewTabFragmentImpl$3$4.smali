.class final Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$4;
.super Ljava/lang/Object;
.source "DingNewTabFragmentImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$4;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 300
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;-><init>()V

    .line 301
    .local v0, "builder":Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 302
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$4;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;

    iget-object v1, v1, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1922
    iget-object v2, v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 2786
    invoke-static {v1, v2, v3}, Lbjv;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;I)V

    .line 3110
    const-string/jumbo v1, "ding_dinglist_create_task_click"

    invoke-static {v1}, Lbjz;->a(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$4;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;

    iget-object v1, v1, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->j(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Z)V

    .line 305
    return-void
.end method
