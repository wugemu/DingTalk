.class final Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$3;
.super Ljava/lang/Object;
.source "RecognizeCardFragmentV2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;


# direct methods
.method constructor <init>(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$3;->a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 712
    if-nez p2, :cond_1

    .line 713
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$3;->a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    invoke-static {v0}, Ljnf;->b(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)V

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 715
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$3;->a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    invoke-virtual {v1}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "https://tms.dingtalk.com/markets/dingtalk/bussinesscardguide"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
