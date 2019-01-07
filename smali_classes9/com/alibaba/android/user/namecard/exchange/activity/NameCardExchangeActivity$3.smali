.class final Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$3;
.super Ljava/lang/Object;
.source "NameCardExchangeActivity.java"

# interfaces
.implements Lciq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$3;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amap/api/location/AMapLocation;)V
    .locals 0
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 1061
    return-void
.end method

.method public final onError(Lcom/amap/api/location/AMapLocation;)V
    .locals 5
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1070
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$3;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->r(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$3;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    const-string/jumbo v1, "100"

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$3;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    sget v3, Lezg$l;->dt_bizcard_location_exception:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v4, v4, v1, v2}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 1075
    :goto_0
    return-void

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$3;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->s(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V

    goto :goto_0
.end method

.method public final onSuccess(Lcom/amap/api/location/AMapLocation;)V
    .locals 1
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$3;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;Lcom/amap/api/location/AMapLocation;)V

    .line 1066
    return-void
.end method
