.class final Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$5;
.super Ljava/lang/Object;
.source "SpaceEncryptDetailPageView.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    .prologue
    .line 931
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$5;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 931
    check-cast p1, Ljava/lang/String;

    .line 1934
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$5;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCryptStatus(Z)V

    .line 1935
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$5;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCryptLocalUrl(Ljava/lang/String;)V

    .line 1936
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$5;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->g(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1937
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$5;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->i(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Z)V

    .line 1938
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$5;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->i(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b()V

    .line 1940
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$5;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(I)Z

    .line 931
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 957
    const-string/jumbo v0, "6000001"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1678
    :goto_0
    return-void

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$5;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    .line 1661
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1662
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->k:Landroid/view/View;

    invoke-static {v1, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 1664
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {v1, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 1666
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lfzs$e;->cspace_encrypt_img_icon:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1667
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1668
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lfzs$h;->dt_file_decrypt_error_common:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1669
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1671
    const-string/jumbo v1, "-5"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1672
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lfzs$h;->dt_message_decrypt_error_no_key:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1673
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->e:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1674
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->e:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lfzs$h;->dt_cspace_dentry_detail_encrypt_again:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1675
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->e:Landroid/widget/Button;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1676
    :cond_1
    const-string/jumbo v1, "-3"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1677
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lfzs$h;->dt_file_decrypt_error_dismission:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1678
    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 1680
    :cond_2
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 945
    instance-of v0, p1, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    if-eqz v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$5;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->g(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 947
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$5;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->i(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Z)V

    .line 948
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$5;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->h(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$5;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lfzs$h;->dt_decrypt_progressing:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 953
    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 949
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$5;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDownloadedSize(J)V

    .line 951
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$5;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->i(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$5;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$5;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(JJ)V

    goto :goto_0
.end method
