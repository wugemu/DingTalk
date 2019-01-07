.class final Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$5;
.super Ljava/lang/Object;
.source "Add2OrgActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
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
        "Lcom/alibaba/android/user/model/SWHrmObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 873
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$5;->a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 873
    check-cast p1, Lcom/alibaba/android/user/model/SWHrmObject;

    .line 1876
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$5;->a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->a(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;Lcom/alibaba/android/user/model/SWHrmObject;)Lcom/alibaba/android/user/model/SWHrmObject;

    .line 1878
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$5;->a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->x(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$5;->a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->s(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/android/user/model/SWHrmObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$5;->a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->s(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/android/user/model/SWHrmObject;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/SWHrmObject;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$5;->a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->s(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/android/user/model/SWHrmObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/user/model/SWHrmObject;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$5;->a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->a(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;Z)Z

    .line 1882
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$5;->a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->y(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)V

    .line 1883
    const-string/jumbo v0, "Add2OrgActivity"

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onDataReceived: hrmOrgId=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$5;->a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .line 1884
    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->s(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/android/user/model/SWHrmObject;

    move-result-object v3

    iget-wide v4, v3, Lcom/alibaba/android/user/model/SWHrmObject;->mOrgId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], hrmEnable=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$5;->a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .line 1885
    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->s(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/android/user/model/SWHrmObject;

    move-result-object v3

    iget-boolean v3, v3, Lcom/alibaba/android/user/model/SWHrmObject;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1884
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    .line 1883
    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 895
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$5;->a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->y(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)V

    .line 896
    const-string/jumbo v0, "Add2OrgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getHireInfo err "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 897
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 890
    return-void
.end method
