.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$35$1;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment$35;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingDetailFragment$35;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment$35;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment$35;

    .prologue
    .line 2296
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$35$1;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment$35;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$35$1;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment$35;

    iget-object v0, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$35;->b:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$35$1;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment$35;

    iget-object v1, v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$35;->a:Ljava/lang/String;

    .line 2301
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$i;->ding_copy_is_success:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2299
    invoke-static {v0, v1, v2}, Lcnz;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 2302
    return-void
.end method
