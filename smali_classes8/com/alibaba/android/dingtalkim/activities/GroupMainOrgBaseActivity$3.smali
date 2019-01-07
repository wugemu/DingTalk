.class final Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;
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
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;->c:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;->b:J

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
    .line 113
    check-cast p1, Ljava/util/List;

    .line 1116
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;->c:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;->b:J

    invoke-static {v0, v1, v2, v3, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;Ljava/lang/String;JLjava/util/List;)V

    :goto_0
    return-void

    .line 1119
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;->c:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->dismissLoadingDialog()V

    .line 1121
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;->c:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    const-wide/16 v2, 0x2

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;Ljava/util/List;)V

    invoke-static {v0, v2, v3, p1, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;JLjava/util/List;Lech$a;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;->c:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->dismissLoadingDialog()V

    .line 145
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getRemovedMembersInnerGroup fail cid:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", orgId:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;->b:J

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

    .line 146
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 140
    return-void
.end method
