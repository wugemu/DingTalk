.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27$1;
.super Ljava/lang/Object;
.source "CreateOrgActivityV3.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;
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
        "Lcom/alibaba/android/user/model/JobPositionEntryObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;

    .prologue
    .line 1922
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1922
    check-cast p1, Lcom/alibaba/android/user/model/JobPositionEntryObject;

    .line 2925
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/alibaba/android/user/model/JobPositionEntryObject;->code:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2926
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->t(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/PositionData;

    .line 2927
    if-eqz v0, :cond_0

    iget-object v2, p1, Lcom/alibaba/android/user/model/JobPositionEntryObject;->code:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2928
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    new-instance v2, Lcom/alibaba/android/user/model/PositionData;

    iget-object v3, v0, Lcom/alibaba/android/user/model/PositionData;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/alibaba/android/user/model/PositionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lcom/alibaba/android/user/model/PositionData;)Lcom/alibaba/android/user/model/PositionData;

    .line 2929
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/user/model/PositionData;

    move-result-object v1

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/PositionData;->custom:Z

    iput-boolean v0, v1, Lcom/alibaba/android/user/model/PositionData;->custom:Z

    .line 2934
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/user/model/PositionData;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2935
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    new-instance v1, Lcom/alibaba/android/user/model/PositionData;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    sget v3, Lezg$l;->dt_contact_job_position_others:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/android/user/model/JobPositionEntryObject;->code:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/user/model/PositionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lcom/alibaba/android/user/model/PositionData;)Lcom/alibaba/android/user/model/PositionData;

    .line 2937
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/user/model/PositionData;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/user/model/PositionData;->custom:Z

    .line 2940
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->B(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    .line 1922
    :cond_3
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1951
    const-string/jumbo v0, "user"

    invoke-static {}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getJobPositionByCode exception "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1947
    return-void
.end method
