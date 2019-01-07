.class final Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity$3;
.super Ljava/lang/Object;
.source "GroupOrgSelectActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;
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
        "Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;

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
    .line 160
    check-cast p1, Ljava/util/List;

    .line 1164
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->dismissLoadingDialog()V

    .line 1165
    if-eqz p1, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;Ljava/util/List;)Ljava/util/List;

    .line 1170
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->b(Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;)V

    .line 160
    return-void

    .line 1168
    :cond_0
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const-string/jumbo v2, "GroupOrgSelect getUpgradeGroupOrgId result null"

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
    .line 175
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->dismissLoadingDialog()V

    .line 176
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "GroupOrgSelect getUpgradeGroupOrgId fail code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 177
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->finish()V

    .line 182
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 187
    return-void
.end method
