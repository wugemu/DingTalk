.class final Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$4;
.super Ljava/lang/Object;
.source "ChannelApplyDetailActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->b()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$4;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 268
    .line 1271
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$4;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$4;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$4;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    .line 1272
    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$4;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->PASSED:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    iget v1, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->status:I

    iput v1, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->status:I

    .line 1274
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$4;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->e(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1275
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$4;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->f(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1276
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$4;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->g(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1277
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$4;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->g(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lezg$l;->dt_user_org_apply_agreed:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1279
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$4;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    sget-object v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->PASSED:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    iget v1, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->status:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a(I)V

    .line 268
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 285
    return-void
.end method
