.class final Lflb$1;
.super Ljava/lang/Object;
.source "CreateOrgV4Adapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflb;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lflb;


# direct methods
.method constructor <init>(Lflb;)V
    .locals 0
    .param p1, "this$0"    # Lflb;

    .prologue
    .line 345
    iput-object p1, p0, Lflb$1;->a:Lflb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 348
    iget-object v0, p0, Lflb$1;->a:Lflb;

    invoke-static {v0}, Lflb;->a(Lflb;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;

    if-nez v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lflb$1;->a:Lflb;

    invoke-static {v0}, Lflb;->b(Lflb;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;

    .line 1731
    iget-wide v2, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->a:J

    .line 1981
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->d:Lcom/alibaba/android/user/model/OrgInviteObject;

    .line 1982
    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1983
    sget v1, Lezg$l;->network_error:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 1732
    :cond_1
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->f:Z

    .line 354
    const-string/jumbo v0, "org_create_step2_invitation_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1987
    :cond_2
    iget-object v1, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->e:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    if-eqz v1, :cond_1

    .line 1988
    iget-object v1, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->e:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a(J)V

    goto :goto_1
.end method
