.class public Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment;
.super Landroid/app/Fragment;
.source "H5BugMeExtFragment.java"


# static fields
.field private static final UPLOADAPPLOG_COMPLETE:I = 0xa


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private uploadApplog:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 25
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment;->uploadApplog:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    sget v1, Lcom/alipay/mobile/nebula/R$layout;->h5_bugme_ext:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_bugme_ext_uploadapplog:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment;->uploadApplog:Landroid/widget/Button;

    .line 39
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment;->uploadApplog:Landroid/widget/Button;

    new-instance v2, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment$2;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-object v0
.end method
