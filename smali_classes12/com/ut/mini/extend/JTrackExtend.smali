.class public Lcom/ut/mini/extend/JTrackExtend;
.super Ljava/lang/Object;
.source "JTrackExtend.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArgsMap(Landroid/app/Activity;Landroid/net/Uri;)Ljava/util/Map;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/taobao/ju/track/JTrack$Page;->getArgsMap(Landroid/app/Activity;Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getArgsMap(Ljava/lang/String;Landroid/net/Uri;)Ljava/util/Map;
    .locals 1
    .param p0, "pageNameOrActivityName"    # Ljava/lang/String;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/taobao/ju/track/JTrack$Page;->getArgsMap(Ljava/lang/String;Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getPageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "activityName"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p0}, Lcom/taobao/ju/track/JTrack$Page;->getPageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
