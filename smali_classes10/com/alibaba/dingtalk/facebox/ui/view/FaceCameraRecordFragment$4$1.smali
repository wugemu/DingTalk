.class final Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4$1;
.super Ljava/lang/Object;
.source "FaceCameraRecordFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;

    .prologue
    .line 901
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4$1;->a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 904
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4$1;->a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;

    iget-object v1, v1, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;->a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 905
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 908
    :cond_0
    return-void
.end method
