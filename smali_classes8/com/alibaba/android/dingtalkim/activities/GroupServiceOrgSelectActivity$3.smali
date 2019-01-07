.class final Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$3;
.super Ljava/lang/Object;
.source "GroupServiceOrgSelectActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$3;->c:Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$3;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 51
    .line 1054
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$3;->c:Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;->dismissLoadingDialog()V

    .line 1055
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$3;->c:Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;

    const-wide/16 v2, 0x2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;->a(JLjava/lang/String;)V

    .line 1056
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$3;->c:Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;

    sget v1, Lctk$i;->dt_group_upgrade_success:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1057
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$3;->c:Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;->finish()V

    .line 51
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$3;->c:Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;->dismissLoadingDialog()V

    .line 63
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "upgrade2ServiceGroup fail cid:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$3;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", orgId:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$3;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", code:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p1, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, ",reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 70
    return-void
.end method
