.class final Lcom/taobao/ma/ui/CaptureNewFragmentV2$8;
.super Ljava/lang/Object;
.source "CaptureNewFragmentV2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/ma/ui/CaptureNewFragmentV2;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/ma/ui/CaptureNewFragmentV2;


# direct methods
.method constructor <init>(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$8;->a:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

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
    .line 628
    if-nez p2, :cond_1

    .line 629
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$8;->a:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .line 1591
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1593
    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 1595
    :catch_0
    move-exception v1

    const-string/jumbo v1, "\u83b7\u53d6\u56fe\u7247\u5931\u8d25"

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 1596
    invoke-virtual {v0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->d()V

    goto :goto_0

    .line 630
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 631
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$8;->a:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .line 632
    invoke-virtual {v1}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->b(Landroid/app/Activity;)V

    goto :goto_0
.end method
