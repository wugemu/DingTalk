.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a$1;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->run()V
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
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;J)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;

    .prologue
    .line 2938
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;

    iput-wide p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a$1;->a:J

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
    .line 2938
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;

    .line 3941
    if-eqz p1, :cond_0

    .line 3942
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;)Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    move-result-object v0

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;->isOrgExternalContact:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isExternal:Ljava/lang/Boolean;

    .line 3943
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;)Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    move-result-object v0

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;->isSelfCanVisitExternalContact:Z

    iput-boolean v1, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSelfCanVisitExternal:Z

    .line 3945
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;)Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isCanShowAddExternal:Z

    .line 3947
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;)V

    .line 2938
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
    .line 2957
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "checkContactRelation orgId = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;

    .line 2959
    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;)Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    move-result-object v4

    iget-wide v4, v4, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", uid = "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a$1;->a:J

    .line 2961
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

    .line 2958
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2957
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2963
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;)V

    .line 2964
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2953
    return-void
.end method
