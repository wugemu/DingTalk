.class final Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8$1;
.super Ljava/lang/Object;
.source "GroupTypeSelectActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 229
    .line 1232
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;->b:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->dismissLoadingDialog()V

    .line 1233
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;->b:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    sget v1, Lctk$i;->dt_group_upgrade_success:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;->b:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->finish()V

    .line 229
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
    .line 239
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;->b:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->dismissLoadingDialog()V

    .line 240
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "upgrade2InnerServiceGroup fail cid:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;->b:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->d(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", orgId:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;->a:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

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

    .line 241
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 247
    return-void
.end method
