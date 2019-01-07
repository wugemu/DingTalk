.class final Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$8;
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

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$8;->d:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$8;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$8;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$8;->c:Ljava/util/List;

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
    .line 256
    .line 1259
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$8;->d:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->dismissLoadingDialog()V

    .line 1260
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$8;->d:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    const-wide/16 v2, 0xd

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$8;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->a(JLjava/lang/String;)V

    .line 1261
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$8;->d:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    sget v1, Lctk$i;->dt_group_upgrade_success:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1262
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$8;->d:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->finish()V

    .line 256
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
    const/4 v1, 0x0

    .line 272
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$8;->d:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->dismissLoadingDialog()V

    .line 273
    const-string/jumbo v2, "im"

    const/4 v3, 0x0

    const/16 v0, 0xa

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "upgrade2CooperativeGroup fail cid:"

    aput-object v0, v4, v1

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$8;->a:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    const-string/jumbo v5, ", orgIds size:"

    aput-object v5, v4, v0

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$8;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$8;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x4

    const-string/jumbo v5, ", code:"

    aput-object v5, v4, v0

    const/4 v0, 0x5

    aput-object p1, v4, v0

    const/4 v0, 0x6

    const-string/jumbo v5, ",reason:"

    aput-object v5, v4, v0

    const/4 v0, 0x7

    aput-object p2, v4, v0

    const/16 v0, 0x8

    const-string/jumbo v5, " removeSize:"

    aput-object v5, v4, v0

    const/16 v0, 0x9

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$8;->c:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$8;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void

    :cond_1
    move v0, v1

    .line 273
    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 268
    return-void
.end method
