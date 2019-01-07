.class final Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$17;
.super Ljava/lang/Object;
.source "SessionFragmentImplV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 803
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$17;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

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
    .line 806
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$17;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$17;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->v(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)F

    move-result v1

    .line 1058
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ldde;->a(Landroid/app/Activity;FZ)V

    .line 807
    return-void
.end method
