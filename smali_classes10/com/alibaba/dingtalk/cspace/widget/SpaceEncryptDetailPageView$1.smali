.class final Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$1;
.super Ljava/lang/Object;
.source "SpaceEncryptDetailPageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    .line 182
    .local v0, "voicePlayer":Lctj;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->b(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Ljava/lang/Object;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lctj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    :goto_1
    return-void

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCryptLocalUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {v0}, Lctj;->b()V

    goto :goto_1
.end method
