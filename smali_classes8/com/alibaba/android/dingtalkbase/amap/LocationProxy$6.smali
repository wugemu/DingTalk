.class final Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$6;
.super Ljava/lang/Object;
.source "LocationProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Lcir;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcir;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;Lcir;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$6;->b:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$6;->a:Lcir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 520
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$6;->a:Lcir;

    check-cast v0, Lciq;

    .line 521
    .local v0, "slienceLocationCallback":Lciq;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$6;->b:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->c(Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;)Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    invoke-interface {v0, v1}, Lciq;->a(Lcom/amap/api/location/AMapLocation;)V

    .line 522
    return-void
.end method
