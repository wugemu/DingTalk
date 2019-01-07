.class final Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$1;
.super Ljava/lang/Object;
.source "OrgInviteQrcodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;

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
    .line 61
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 62
    .local v0, "orgId":J
    new-instance v2, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;

    invoke-direct {v2, v3}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;)V

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a(J)V

    .line 63
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$1$1;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$1;J)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method
