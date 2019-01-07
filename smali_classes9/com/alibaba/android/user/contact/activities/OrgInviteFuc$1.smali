.class final Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1;
.super Ljava/lang/Object;
.source "OrgInviteFuc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1;->c:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    iput-wide p2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1;->a:J

    iput-wide p4, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1;->a:J

    .line 82
    .local v0, "finalDeptId":J
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1;->a:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 83
    const-wide/16 v0, -0x1

    .line 85
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1;->b:J

    invoke-static {v6, v7, v0, v1}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->d(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "json":Ljava/lang/String;
    invoke-static {v3}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 88
    invoke-static {v3}, Lcom/alibaba/android/user/model/OrgInviteObject;->fromJson(Ljava/lang/String;)Lcom/alibaba/android/user/model/OrgInviteObject;

    move-result-object v2

    .line 89
    .local v2, "info":Lcom/alibaba/android/user/model/OrgInviteObject;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1$1;

    invoke-direct {v5, p0, v2}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1$1;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1;Lcom/alibaba/android/user/model/OrgInviteObject;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 98
    .end local v2    # "info":Lcom/alibaba/android/user/model/OrgInviteObject;
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1;->c:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1;->b:J

    .line 1145
    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1146
    const-class v4, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1147
    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v8

    const-string/jumbo v9, "depart_invite"

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lfvv;->a(Ljava/lang/String;ZZ)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1148
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v0, v1}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->c(JJ)Lcmg;

    move-result-object v5

    invoke-interface {v4, v8, v9, v5}, Lcom/alibaba/android/user/idl/services/ContactIService;->getDeptInviteInfo(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    :cond_2
    :goto_0
    return-void

    .line 1150
    :cond_3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v0, v1}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->c(JJ)Lcmg;

    move-result-object v5

    invoke-interface {v4, v8, v5}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgInviteInfo(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
