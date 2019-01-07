.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$5;
.super Ljava/lang/Object;
.source "TeleConfHomeManageFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;
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
        "Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 524
    check-cast p1, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 1527
    if-eqz p1, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    iget-wide v2, p1, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mOrgId:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->c(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;J)J

    .line 1530
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->f(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;JZ)V

    .line 524
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
    const/4 v5, 0x1

    .line 540
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Get biz inf in manage area fail "

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 541
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 540
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->f(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)J

    move-result-wide v2

    invoke-static {v0, v2, v3, v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;JZ)V

    .line 543
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 536
    return-void
.end method
