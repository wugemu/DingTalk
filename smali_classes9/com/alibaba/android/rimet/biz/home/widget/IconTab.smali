.class public Lcom/alibaba/android/rimet/biz/home/widget/IconTab;
.super Landroid/widget/RelativeLayout;
.source "IconTab.java"


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1037
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040534

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1038
    const v0, 0x7f11004b

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->a:Landroid/widget/ImageView;

    .line 1039
    const v0, 0x7f1100f2

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->b:Landroid/widget/TextView;

    .line 1040
    const v0, 0x7f1116da

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->c:Landroid/widget/ImageView;

    .line 34
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 105
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 93
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 99
    return-void
.end method

.method public setUnreadBackground(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 76
    return-void
.end method
