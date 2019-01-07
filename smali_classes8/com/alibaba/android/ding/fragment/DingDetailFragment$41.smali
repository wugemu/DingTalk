.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$41;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/CommentObject;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic c:Lcom/alibaba/android/ding/fragment/DingDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lcom/alibaba/android/ding/base/objects/CommentObject;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 2934
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$41;->c:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    iput-object p2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$41;->a:Lcom/alibaba/android/ding/base/objects/CommentObject;

    iput-object p3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$41;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2937
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$41;->c:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->E(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lazv$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2938
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$41;->c:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->E(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lazv$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$41;->a:Lcom/alibaba/android/ding/base/objects/CommentObject;

    invoke-interface {v0, v1}, Lazv$a;->a(Lcom/alibaba/android/ding/base/objects/CommentObject;)V

    .line 2940
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$41;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 2941
    return-void
.end method
