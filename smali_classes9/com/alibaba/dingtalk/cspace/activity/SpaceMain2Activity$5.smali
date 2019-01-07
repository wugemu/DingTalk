.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$5;
.super Ljava/lang/Object;
.source "SpaceMain2Activity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->b(Z)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;ZLcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$5;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    iput-boolean p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$5;->a:Z

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$5;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

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
    .line 567
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1570
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$5;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1573
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 1574
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1575
    :cond_0
    const-string/jumbo v0, ""

    const-string/jumbo v1, "userProfileExtensionObject or orgEmployees is null"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$5;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    :cond_1
    :goto_0
    return-void

    .line 1578
    :cond_2
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v0, p1, v2, v3}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)V

    .line 1579
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 1580
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$5;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$5;->a:Z

    invoke-static {v0, v1, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;ZLcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 589
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$5;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    :goto_0
    return-void

    .line 592
    :cond_0
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceBaseActivity"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getUserProfileExtensionByMobile errorCode:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " errorMsg:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 593
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 592
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$5;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$5;->a:Z

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$5;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-static {v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;ZLcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 585
    return-void
.end method
