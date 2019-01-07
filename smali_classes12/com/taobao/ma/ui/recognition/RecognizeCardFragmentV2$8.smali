.class final Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$8;
.super Ljava/lang/Object;
.source "RecognizeCardFragmentV2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

.field final synthetic b:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;


# direct methods
.method constructor <init>(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$8;->b:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    iput-object p2, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "d"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 306
    const-string/jumbo v0, "contact_exter_list_add_namecard_cancel"

    invoke-static {v0}, Ljmp;->a(Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    const-string/jumbo v1, "dt_org"

    const-string/jumbo v2, "share_biz_card"

    const-string/jumbo v3, "0"

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 311
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->dismiss()V

    .line 312
    return-void
.end method
