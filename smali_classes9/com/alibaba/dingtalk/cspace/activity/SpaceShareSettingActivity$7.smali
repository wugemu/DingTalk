.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$7;
.super Ljava/lang/Object;
.source "SpaceShareSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 228
    check-cast p1, Ljava/util/List;

    .line 1231
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;Ljava/util/List;)V

    .line 228
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 241
    const-string/jumbo v0, "STATISTICS"

    .line 242
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v1, 0x332d

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 243
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 237
    return-void
.end method
