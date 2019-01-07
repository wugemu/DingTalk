.class final Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$25;
.super Ljava/lang/Object;
.source "CreateNewOrgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$25;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 477
    const-string/jumbo v1, "key_create_org_info"

    invoke-static {v1}, Lcmu;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/OrgDetailObject;

    .line 478
    .local v0, "orgDetailObject":Lcom/alibaba/android/user/model/OrgDetailObject;
    if-nez v0, :cond_0

    .line 479
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$25;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->j(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    .line 489
    :goto_0
    return-void

    .line 482
    :cond_0
    const-string/jumbo v1, "key_create_org_info"

    invoke-static {v1}, Lcmu;->b(Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$25$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$25$1;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$25;Lcom/alibaba/android/user/model/OrgDetailObject;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
