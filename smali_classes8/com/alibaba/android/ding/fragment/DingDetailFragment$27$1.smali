.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$27$1;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment$27;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Layz;

.field final synthetic b:Lcom/alibaba/android/ding/fragment/DingDetailFragment$27;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment$27;Layz;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment$27;

    .prologue
    .line 1248
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$27$1;->b:Lcom/alibaba/android/ding/fragment/DingDetailFragment$27;

    iput-object p2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$27$1;->a:Layz;

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
    .line 1251
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$27$1;->b:Lcom/alibaba/android/ding/fragment/DingDetailFragment$27;

    iget-object v0, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$27;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$27$1;->a:Layz;

    iget-object v1, v1, Layz;->a:Ljava/lang/String;

    .line 1253
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$i;->ding_copy_is_success:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1251
    invoke-static {v0, v1, v2}, Lcnz;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 1254
    return-void
.end method
