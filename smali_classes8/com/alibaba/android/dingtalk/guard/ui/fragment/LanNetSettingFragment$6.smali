.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$6;
.super Ljava/lang/Object;
.source "LanNetSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsw$b;

.field final synthetic b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;Lbsw$b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$6;->a:Lbsw$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 248
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 266
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$6;->a:Lbsw$b;

    invoke-interface {v2}, Lbsw$b;->F()I

    move-result v1

    .line 252
    .local v1, "scrollY":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$6;->a:Lbsw$b;

    invoke-interface {v2}, Lbsw$b;->E()I

    move-result v0

    .line 253
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 265
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->j(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)Landroid/widget/ScrollView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 255
    :pswitch_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->h(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    add-int/lit16 v1, v1, 0x258

    goto :goto_1

    .line 260
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->i(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    add-int/lit16 v1, v1, 0x4b0

    goto :goto_1

    .line 253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
