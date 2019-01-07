.class public interface abstract Ljqa;
.super Ljava/lang/Object;
.source "IWMLUserTrackAdapter.java"


# virtual methods
.method public abstract onAppLaunched(Ljava/lang/String;)V
.end method

.method public abstract onFragmentVisible(Landroid/support/v4/app/Fragment;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pageDisAppearForActivity(Landroid/app/Activity;)V
.end method

.method public abstract skipActivityTracker(Landroid/app/Activity;)V
.end method

.method public abstract trackAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract trackStat(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)V
.end method

.method public abstract updatePageProperties(Landroid/app/Activity;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
