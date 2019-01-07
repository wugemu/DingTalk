.class Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$ExtendedC1T4TextCell;
.super Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;
.source "BusinessUserInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExtendedC1T4TextCell"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1089
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;-><init>(Landroid/content/Context;)V

    .line 1090
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1093
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1094
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 1097
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T4TextCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1098
    return-void
.end method


# virtual methods
.method public final a(ZI)V
    .locals 3
    .param p1, "singleLine"    # Z
    .param p2, "maxLines"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1101
    sget v2, Lcig$f;->cell_subTitle:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$ExtendedC1T4TextCell;->a(I)Landroid/view/View;

    move-result-object v1

    .line 1102
    .local v1, "subTitleView":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1103
    check-cast v0, Landroid/widget/TextView;

    .line 1104
    .local v0, "subTitleTextView":Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1105
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1107
    .end local v0    # "subTitleTextView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method
