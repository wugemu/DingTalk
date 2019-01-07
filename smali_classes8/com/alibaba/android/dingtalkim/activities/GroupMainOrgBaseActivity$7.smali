.class final Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;
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

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;->c:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;->b:Ljava/util/List;

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
    .line 214
    check-cast p1, Ljava/util/List;

    .line 1217
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;->c:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;->b:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    :goto_0
    return-void

    .line 1220
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;->c:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->dismissLoadingDialog()V

    .line 1222
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;->c:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    const-wide/16 v2, 0xd

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;Ljava/util/List;)V

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
    const/4 v0, 0x0

    .line 245
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;->c:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->dismissLoadingDialog()V

    .line 246
    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "getRemovedMembersCooperativeGroup fail cid:"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", orgIds size:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;->b:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x4

    const-string/jumbo v4, ", code:"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    aput-object p1, v3, v0

    const/4 v0, 0x6

    const-string/jumbo v4, ",reason:"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    aput-object p2, v3, v0

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 241
    return-void
.end method
