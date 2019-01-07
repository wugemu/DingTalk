.class final Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$5$1;
.super Ljava/lang/Object;
.source "SessionFragmentImplV2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$5;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$5;

    .prologue
    .line 1592
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$5$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1595
    if-nez p2, :cond_0

    .line 1596
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$5$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$5;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$5;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$5$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$5;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$5;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->v(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)F

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ldde;->a(Landroid/app/Activity;FZ)V

    .line 1598
    :cond_0
    return-void
.end method
