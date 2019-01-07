.class final Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1$1;
.super Ljava/lang/Object;
.source "OrgInviteFuc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/model/OrgInviteObject;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1;Lcom/alibaba/android/user/model/OrgInviteObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1$1;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1$1;->a:Lcom/alibaba/android/user/model/OrgInviteObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1$1;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1;->c:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;)Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1$1;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1;->c:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;)Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1$1;->a:Lcom/alibaba/android/user/model/OrgInviteObject;

    sget-object v2, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;->LOCAL:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;->a(Lcom/alibaba/android/user/model/OrgInviteObject;Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;)V

    .line 95
    :cond_0
    return-void
.end method
