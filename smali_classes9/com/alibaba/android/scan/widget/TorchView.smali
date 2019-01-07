.class public Lcom/alibaba/android/scan/widget/TorchView;
.super Landroid/widget/LinearLayout;
.source "TorchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/scan/widget/TorchView$a;
    }
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Z

.field private d:Lcom/alibaba/android/scan/widget/TorchView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/scan/widget/TorchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p0, v2}, Lcom/alibaba/android/scan/widget/TorchView;->setOrientation(I)V

    .line 29
    invoke-virtual {p0, p0}, Lcom/alibaba/android/scan/widget/TorchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-virtual {p0, v2}, Lcom/alibaba/android/scan/widget/TorchView;->setGravity(I)V

    .line 1035
    invoke-virtual {p0}, Lcom/alibaba/android/scan/widget/TorchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.camera.flash"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/scan/widget/TorchView;->c:Z

    .line 1037
    invoke-virtual {p0}, Lcom/alibaba/android/scan/widget/TorchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lelh$f;->torch_layout:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1038
    sget v0, Lelh$e;->torch_image_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/scan/widget/TorchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/scan/widget/TorchView;->a:Landroid/widget/ImageView;

    .line 1039
    sget v0, Lelh$e;->torch_tips_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/scan/widget/TorchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/scan/widget/TorchView;->b:Landroid/widget/TextView;

    .line 32
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    .line 1064
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/TorchView;->d:Lcom/alibaba/android/scan/widget/TorchView$a;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/TorchView;->d:Lcom/alibaba/android/scan/widget/TorchView$a;

    invoke-interface {v0}, Lcom/alibaba/android/scan/widget/TorchView$a;->b()V

    .line 61
    :cond_0
    return-void
.end method

.method public setOnTorchClickListener(Lcom/alibaba/android/scan/widget/TorchView$a;)V
    .locals 0
    .param p1, "onTorchClickListener"    # Lcom/alibaba/android/scan/widget/TorchView$a;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alibaba/android/scan/widget/TorchView;->d:Lcom/alibaba/android/scan/widget/TorchView$a;

    .line 71
    return-void
.end method
