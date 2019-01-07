.class final Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$19;
.super Ljava/lang/Object;
.source "CreateNewOrgActivity.java"

# interfaces
.implements Lcir;


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
    .line 1662
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$19;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/amap/api/location/AMapLocation;)V
    .locals 0
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 1677
    return-void
.end method

.method public final onSuccess(Lcom/amap/api/location/AMapLocation;)V
    .locals 5
    .param p1, "location"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1665
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$19;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;)V

    .line 1667
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$19;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Lcir;)Lcir;

    .line 1668
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$19;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$19;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->r(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils;->a(Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->b(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1669
    invoke-static {}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reqLoc:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$19;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1670
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$19;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->o(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    .line 1672
    :cond_0
    return-void
.end method
