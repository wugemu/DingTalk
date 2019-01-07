.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$15;
.super Lbzd;
.source "CreateOrgActivityV4.java"


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
    .line 1198
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$15;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$15;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$15;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->w(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcir;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Lcir;Z)Lcom/amap/api/location/AMapLocationClient;

    .line 1202
    return-void
.end method

.method public final onDenied()V
    .locals 0

    .prologue
    .line 1206
    return-void
.end method

.method public final onNeverAsk()V
    .locals 0

    .prologue
    .line 1210
    return-void
.end method
