.class final Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;
.super Ljava/lang/Object;
.source "DDUpgradeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/alibaba/doraemon/image/ImageMagician;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "magician"    # Lcom/alibaba/doraemon/image/ImageMagician;

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 370
    sget v0, Lcig$f;->fragment_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;->a:Landroid/widget/ImageView;

    .line 371
    sget v0, Lcig$f;->fragment_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;->b:Landroid/widget/TextView;

    .line 372
    sget v0, Lcig$f;->fragment_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;->c:Landroid/widget/TextView;

    .line 373
    return-void
.end method
