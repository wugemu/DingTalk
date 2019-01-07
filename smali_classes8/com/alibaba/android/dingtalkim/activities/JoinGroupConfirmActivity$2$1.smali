.class final Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2$1;
.super Ljava/lang/Object;
.source "JoinGroupConfirmActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 409
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->s(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    const-string/jumbo v0, "im"

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "hasApplyJoinGroupRecently onException code:"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, " qrcode:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->d(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, " groupId:"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->e(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, " cid:"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->f(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 392
    check-cast p1, Ljava/lang/Boolean;

    .line 1395
    invoke-static {p1}, Ligb;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->r(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1397
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->r(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_join_group_apply_applied:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1398
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->s(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1404
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->r(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 392
    return-void

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->r(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1401
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->r(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_join_group_apply_apply:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1402
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->s(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
