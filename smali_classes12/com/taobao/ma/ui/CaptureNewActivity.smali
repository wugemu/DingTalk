.class public Lcom/taobao/ma/ui/CaptureNewActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "CaptureNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/taobao/ma/ui/ScanBaseFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lelh$e;->img_back:I

    if-ne v0, v1, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/taobao/ma/ui/CaptureNewActivity;->finish()V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lelh$e;->img_more:I

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewActivity;->a:Lcom/taobao/ma/ui/ScanBaseFragment;

    invoke-virtual {v0}, Lcom/taobao/ma/ui/ScanBaseFragment;->f()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v1, Lelh$f;->activity_fragment_container:I

    invoke-virtual {p0, v1}, Lcom/taobao/ma/ui/CaptureNewActivity;->setContentView(I)V

    .line 39
    sget v1, Lelh$e;->tv_scan_title:I

    invoke-virtual {p0, v1}, Lcom/taobao/ma/ui/CaptureNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lelh$h;->dt_scan_type_title_qrcode:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 40
    sget v1, Lelh$e;->img_back:I

    invoke-virtual {p0, v1}, Lcom/taobao/ma/ui/CaptureNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget v1, Lelh$e;->img_more:I

    invoke-virtual {p0, v1}, Lcom/taobao/ma/ui/CaptureNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    new-instance v1, Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-direct {v1}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;-><init>()V

    iput-object v1, p0, Lcom/taobao/ma/ui/CaptureNewActivity;->a:Lcom/taobao/ma/ui/ScanBaseFragment;

    .line 44
    iget-object v1, p0, Lcom/taobao/ma/ui/CaptureNewActivity;->a:Lcom/taobao/ma/ui/ScanBaseFragment;

    invoke-virtual {p0}, Lcom/taobao/ma/ui/CaptureNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/ma/ui/ScanBaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/taobao/ma/ui/CaptureNewActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 46
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    sget v1, Lelh$e;->ll_fragment_container:I

    iget-object v2, p0, Lcom/taobao/ma/ui/CaptureNewActivity;->a:Lcom/taobao/ma/ui/ScanBaseFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 47
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 48
    return-void
.end method
