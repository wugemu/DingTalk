.class final Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$3;
.super Ljava/lang/Object;
.source "OrgInviteFuc.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->c(JJ)Lcmg;
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
        "Lcom/alibaba/android/user/model/OrgInviteObject;",
        ">;"
    }
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
    .line 159
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$3;->c:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    iput-wide p2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$3;->a:J

    iput-wide p4, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 159
    check-cast p1, Lcom/alibaba/android/user/model/OrgInviteObject;

    .line 1162
    if-nez p1, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$3;->c:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;)Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$3;->c:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;)Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;

    move-result-object v0

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 1167
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$3;->c:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$3;->a:J

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$3;->b:J

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->d(JJ)Ljava/lang/String;

    move-result-object v1

    .line 1223
    if-eqz p1, :cond_2

    .line 1226
    sget-object v2, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a:Ljava/lang/String;

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$6;

    invoke-direct {v3, v0, v1, p1}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$6;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;Ljava/lang/String;Lcom/alibaba/android/user/model/OrgInviteObject;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1168
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$3;->c:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;)Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$3;->c:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;)Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;->REMOTE:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;->a(Lcom/alibaba/android/user/model/OrgInviteObject;Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$3;->c:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;)Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$3;->c:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;)Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 177
    return-void
.end method
