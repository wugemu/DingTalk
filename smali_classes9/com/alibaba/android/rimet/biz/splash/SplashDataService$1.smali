.class final Lcom/alibaba/android/rimet/biz/splash/SplashDataService$1;
.super Ljava/lang/Object;
.source "SplashDataService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/splash/SplashDataService;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 120
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    .line 121
    .local v0, "currentTime":J
    const-string/jumbo v6, "PreferenceForAppStart"

    const-string/jumbo v7, "pref_key_main_org_id"

    invoke-static {v6, v7}, Lcpl;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 122
    .local v4, "mainOrgId":J
    invoke-static {v4, v5, v0, v1}, Lcom/alibaba/android/rimet/biz/splash/SplashDataService;->a(JJ)Lekr;

    move-result-object v3

    .line 1034
    .local v3, "splashDataObject":Lekr;
    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/splash/SplashDataService;->a(Lekr;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "jsonObjectStr":Ljava/lang/String;
    const-string/jumbo v6, "PreferenceForAppStart"

    const-string/jumbo v7, "pref_key_splash_data"

    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    .end local v2    # "jsonObjectStr":Ljava/lang/String;
    :cond_0
    invoke-static {v6, v7, v2}, Lcpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method
