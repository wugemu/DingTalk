.class final Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$4;
.super Ljava/lang/Object;
.source "SpaceEncryptDetailPageView.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/ImageEventListener;


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
    .line 217
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$4;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadProgressListener(Landroid/view/View;ILjava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "progress"    # I
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 243
    return-void
.end method

.method public final onError(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1, "errCode"    # I
    .param p2, "errDes"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "view"    # Landroid/view/View;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$4;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->f(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$4;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v0, p1, p2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final onImageProcessListener(ILandroid/view/View;Ljava/lang/String;J)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "size"    # J

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$4;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->f(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$4;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->g(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 233
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$4;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->h(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$4;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lfzs$h;->dt_mail_please_wait:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 234
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$4;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->g(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public final onMemoryOverflow(JJ[Ljava/lang/String;)V
    .locals 0
    .param p1, "maxSize"    # J
    .param p3, "currentSize"    # J
    .param p5, "activityStr"    # [Ljava/lang/String;

    .prologue
    .line 248
    return-void
.end method
