.class final Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$2;
.super Ljava/lang/Object;
.source "DDUpgradeDialog.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 241
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 227
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;I)V

    goto :goto_0
.end method
