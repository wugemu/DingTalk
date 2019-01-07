.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity$1;
.super Ljava/lang/Object;
.source "SpaceLinkShareActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->onClick(Landroid/view/View;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 136
    check-cast p1, Ljava/util/List;

    .line 1139
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    sget v1, Lfzs$h;->dt_space_link_share_failed:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1141
    :goto_0
    return-void

    .line 1144
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-static {v1, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;)Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    .line 1146
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1147
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v6}, Lgpk;->a(Landroid/view/View;I)V

    .line 1148
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 1149
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 1151
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->e(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getExpireTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcog;->g(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-static {v0, v6}, Lgpk;->a(Landroid/view/View;I)V

    .line 1153
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->e(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 1155
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->g(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-static {v0, v5}, Lgpk;->a(Landroid/view/View;Z)V

    .line 1156
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-static {v0, v5}, Lgpk;->a(Landroid/view/View;Z)V

    .line 1158
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->i(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1159
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->j(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 169
    const-string/jumbo v0, "13900005"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    sget v0, Lfzs$h;->dt_space_link_share_create_error_org_not_auth:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 165
    return-void
.end method
