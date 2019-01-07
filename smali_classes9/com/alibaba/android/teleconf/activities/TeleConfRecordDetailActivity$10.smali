.class final Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$10;
.super Ljava/lang/Object;
.source "TeleConfRecordDetailActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->c()V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Lcom/alibaba/android/teleconf/data/ConfRecordItem;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 986
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$10;->c:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$10;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iput-wide p3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$10;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 986
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;

    .line 1989
    if-eqz p1, :cond_0

    .line 1990
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$10;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;->isOrgExternalContact:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isExternal:Ljava/lang/Boolean;

    .line 1991
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$10;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;->isSelfCanVisitExternalContact:Z

    iput-boolean v1, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSelfCanVisitExternal:Z

    .line 1993
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$10;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isCanShowAddExternal:Z

    .line 1995
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$10;->c:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$10;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V

    .line 986
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1006
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "checkContactRelation orgId = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$10;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-wide v4, v4, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->orgId:J

    .line 1008
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", uid = "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$10;->b:J

    .line 1010
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", Exception: "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p1, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object p2, v2, v3

    .line 1007
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1006
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$10;->c:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V

    .line 1013
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1002
    return-void
.end method
