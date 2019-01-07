.class final Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$4;
.super Ljava/lang/Object;
.source "GroupMainOrgBaseActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;
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

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;Ljava/lang/String;JLjava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$4;->d:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$4;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$4;->b:J

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$4;->c:Ljava/util/List;

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
    .line 155
    .line 1158
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$4;->d:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->dismissLoadingDialog()V

    .line 1159
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$4;->d:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    const-wide/16 v2, 0x2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->a(JLjava/lang/String;)V

    .line 1160
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$4;->d:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    sget v1, Lctk$i;->dt_group_upgrade_success:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1161
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$4;->d:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->finish()V

    .line 155
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 171
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$4;->d:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->dismissLoadingDialog()V

    .line 172
    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "upgrade2InnerGroup fail cid:"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$4;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", orgId:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v6, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$4;->b:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, ", code:"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p1, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, ",reason:"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    aput-object p2, v3, v4

    const/16 v4, 0x8

    const-string/jumbo v5, " removeSize:"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$4;->c:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$4;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 167
    return-void
.end method
