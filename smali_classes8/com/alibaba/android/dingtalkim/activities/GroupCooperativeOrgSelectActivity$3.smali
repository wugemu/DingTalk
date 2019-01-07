.class final Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity$3;
.super Ljava/lang/Object;
.source "GroupCooperativeOrgSelectActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;
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
        "Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 172
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;

    .line 1176
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;->dismissLoadingDialog()V

    .line 1177
    if-eqz p1, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->ownerOrgIds:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;Ljava/util/List;)Ljava/util/List;

    .line 1179
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->memberOrgIds:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;->b(Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;Ljava/util/List;)Ljava/util/List;

    .line 1183
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;->e(Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;)V

    .line 172
    return-void

    .line 1181
    :cond_0
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const-string/jumbo v2, "CooperativeOrgSelect getUpgradeGroupOrgId result null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;->dismissLoadingDialog()V

    .line 189
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "CooperativeOrgSelect getUpgradeGroupOrgId fail code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 190
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;->finish()V

    .line 195
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 200
    return-void
.end method
