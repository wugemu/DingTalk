.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$14;
.super Ljava/lang/Object;
.source "CreateOrgActivityV4.java"

# interfaces
.implements Lcir;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$14;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/amap/api/location/AMapLocation;)V
    .locals 0
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 1194
    return-void
.end method

.method public final onSuccess(Lcom/amap/api/location/AMapLocation;)V
    .locals 6
    .param p1, "location"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1179
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$14;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;)V

    .line 1181
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$14;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Lcir;)Lcir;

    .line 1182
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$14;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$14;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->v(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils;->a(Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Ljava/lang/String;)Ljava/lang/String;

    .line 1183
    invoke-static {}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->g()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reqLoc:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$14;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1184
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$14;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->i(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    .line 1186
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$14;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;D)D

    .line 1187
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$14;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;D)D

    .line 1189
    :cond_0
    return-void
.end method
