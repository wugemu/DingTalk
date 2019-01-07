.class final Lcom/taobao/ma/ui/ScanCombineActivity$1;
.super Ljava/lang/Object;
.source "ScanCombineActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/ma/ui/ScanCombineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/ma/ui/ScanCombineActivity;


# direct methods
.method constructor <init>(Lcom/taobao/ma/ui/ScanCombineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/ma/ui/ScanCombineActivity;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    sget v1, Lelh$e;->radio_btn_qr_scan:I

    if-ne p2, v1, :cond_4

    .line 118
    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-static {v1}, Lcom/taobao/ma/ui/ScanCombineActivity;->a(Lcom/taobao/ma/ui/ScanCombineActivity;)Lecw;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-static {v1}, Lcom/taobao/ma/ui/ScanCombineActivity;->a(Lcom/taobao/ma/ui/ScanCombineActivity;)Lecw;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-virtual {v2}, Lcom/taobao/ma/ui/ScanCombineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lelh$b;->pure_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lecw;->a(I)V

    .line 120
    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-static {v1}, Lcom/taobao/ma/ui/ScanCombineActivity;->a(Lcom/taobao/ma/ui/ScanCombineActivity;)Lecw;

    move-result-object v1

    invoke-virtual {v1}, Lecw;->invalidateSelf()V

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-static {v1}, Lcom/taobao/ma/ui/ScanCombineActivity;->b(Lcom/taobao/ma/ui/ScanCombineActivity;)Lcom/taobao/ma/ui/ScanBaseFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-static {v1}, Lcom/taobao/ma/ui/ScanCombineActivity;->b(Lcom/taobao/ma/ui/ScanCombineActivity;)Lcom/taobao/ma/ui/ScanBaseFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-static {v2}, Lcom/taobao/ma/ui/ScanCombineActivity;->c(Lcom/taobao/ma/ui/ScanCombineActivity;)Lcom/taobao/ma/ui/ScanBaseFragment;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    new-instance v2, Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-direct {v2}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;-><init>()V

    invoke-static {v1, v2}, Lcom/taobao/ma/ui/ScanCombineActivity;->a(Lcom/taobao/ma/ui/ScanCombineActivity;Lcom/taobao/ma/ui/ScanBaseFragment;)Lcom/taobao/ma/ui/ScanBaseFragment;

    .line 126
    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-virtual {v1}, Lcom/taobao/ma/ui/ScanCombineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 127
    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-static {v1}, Lcom/taobao/ma/ui/ScanCombineActivity;->b(Lcom/taobao/ma/ui/ScanCombineActivity;)Lcom/taobao/ma/ui/ScanBaseFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-virtual {v2}, Lcom/taobao/ma/ui/ScanCombineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/ma/ui/ScanBaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 130
    :cond_3
    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-virtual {v1}, Lcom/taobao/ma/ui/ScanCombineActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lelh$e;->ll_fragment_container:I

    iget-object v3, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    .line 132
    invoke-static {v3}, Lcom/taobao/ma/ui/ScanCombineActivity;->b(Lcom/taobao/ma/ui/ScanCombineActivity;)Lcom/taobao/ma/ui/ScanBaseFragment;

    move-result-object v3

    .line 130
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 133
    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    iget-object v2, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-static {v2}, Lcom/taobao/ma/ui/ScanCombineActivity;->b(Lcom/taobao/ma/ui/ScanCombineActivity;)Lcom/taobao/ma/ui/ScanBaseFragment;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/ma/ui/ScanCombineActivity;->b(Lcom/taobao/ma/ui/ScanCombineActivity;Lcom/taobao/ma/ui/ScanBaseFragment;)Lcom/taobao/ma/ui/ScanBaseFragment;

    goto :goto_0

    .line 134
    :cond_4
    sget v1, Lelh$e;->radio_btn_card_scan:I

    if-ne p2, v1, :cond_7

    .line 137
    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-static {v1}, Lcom/taobao/ma/ui/ScanCombineActivity;->a(Lcom/taobao/ma/ui/ScanCombineActivity;)Lecw;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 138
    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-static {v1}, Lcom/taobao/ma/ui/ScanCombineActivity;->a(Lcom/taobao/ma/ui/ScanCombineActivity;)Lecw;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-virtual {v2}, Lcom/taobao/ma/ui/ScanCombineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lelh$b;->pure_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lecw;->a(I)V

    .line 139
    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-static {v1}, Lcom/taobao/ma/ui/ScanCombineActivity;->a(Lcom/taobao/ma/ui/ScanCombineActivity;)Lecw;

    move-result-object v1

    invoke-virtual {v1}, Lecw;->invalidateSelf()V

    .line 141
    :cond_5
    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-static {v1}, Lcom/taobao/ma/ui/ScanCombineActivity;->d(Lcom/taobao/ma/ui/ScanCombineActivity;)Lcom/taobao/ma/ui/ScanBaseFragment;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-static {v1}, Lcom/taobao/ma/ui/ScanCombineActivity;->d(Lcom/taobao/ma/ui/ScanCombineActivity;)Lcom/taobao/ma/ui/ScanBaseFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-static {v2}, Lcom/taobao/ma/ui/ScanCombineActivity;->c(Lcom/taobao/ma/ui/ScanCombineActivity;)Lcom/taobao/ma/ui/ScanBaseFragment;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 144
    :cond_6
    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    new-instance v2, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    invoke-direct {v2}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;-><init>()V

    invoke-static {v1, v2}, Lcom/taobao/ma/ui/ScanCombineActivity;->c(Lcom/taobao/ma/ui/ScanCombineActivity;Lcom/taobao/ma/ui/ScanBaseFragment;)Lcom/taobao/ma/ui/ScanBaseFragment;

    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v0, "bundle":Landroid/os/Bundle;
    const-class v1, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    .line 148
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;->NameCard:Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 149
    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-static {v1}, Lcom/taobao/ma/ui/ScanCombineActivity;->d(Lcom/taobao/ma/ui/ScanCombineActivity;)Lcom/taobao/ma/ui/ScanBaseFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/ma/ui/ScanBaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 151
    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-virtual {v1}, Lcom/taobao/ma/ui/ScanCombineActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lelh$e;->ll_fragment_container:I

    iget-object v3, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    .line 153
    invoke-static {v3}, Lcom/taobao/ma/ui/ScanCombineActivity;->d(Lcom/taobao/ma/ui/ScanCombineActivity;)Lcom/taobao/ma/ui/ScanBaseFragment;

    move-result-object v3

    .line 151
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 154
    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    iget-object v2, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-static {v2}, Lcom/taobao/ma/ui/ScanCombineActivity;->d(Lcom/taobao/ma/ui/ScanCombineActivity;)Lcom/taobao/ma/ui/ScanBaseFragment;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/ma/ui/ScanCombineActivity;->b(Lcom/taobao/ma/ui/ScanCombineActivity;Lcom/taobao/ma/ui/ScanBaseFragment;)Lcom/taobao/ma/ui/ScanBaseFragment;

    goto/16 :goto_0

    .line 155
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_7
    sget v1, Lelh$e;->radio_btn_scan_doc:I

    if-ne p2, v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-static {v1}, Lcom/taobao/ma/ui/ScanCombineActivity;->a(Lcom/taobao/ma/ui/ScanCombineActivity;)Lecw;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 157
    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-static {v1}, Lcom/taobao/ma/ui/ScanCombineActivity;->a(Lcom/taobao/ma/ui/ScanCombineActivity;)Lecw;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-virtual {v2}, Lcom/taobao/ma/ui/ScanCombineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lelh$b;->pure_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lecw;->a(I)V

    .line 158
    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-static {v1}, Lcom/taobao/ma/ui/ScanCombineActivity;->a(Lcom/taobao/ma/ui/ScanCombineActivity;)Lecw;

    move-result-object v1

    invoke-virtual {v1}, Lecw;->invalidateSelf()V

    .line 160
    :cond_8
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v2, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/doc_lens.html"

    new-instance v3, Lcom/taobao/ma/ui/ScanCombineActivity$1$1;

    invoke-direct {v3, p0}, Lcom/taobao/ma/ui/ScanCombineActivity$1$1;-><init>(Lcom/taobao/ma/ui/ScanCombineActivity$1;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0
.end method
