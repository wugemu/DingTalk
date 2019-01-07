.class final Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$3$1;
.super Ljava/lang/Object;
.source "OrgInviteQrcodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$3;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$3$1;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$3;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$3$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 191
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$3$1;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$3;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$3$1;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$3;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;

    .line 1241
    iget-object v2, v1, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1242
    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 195
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$3$1;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$3;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$3;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;

    sget v3, Lezg$l;->save_to_phone:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$3$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "toastText":Ljava/lang/String;
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
