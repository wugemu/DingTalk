.class public Lcom/ali/user/open/core/Site;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/open/core/Site$SiteName;
    }
.end annotation


# static fields
.field public static final ALIPAY:Ljava/lang/String; = "alipay"

.field public static final AMAP:Ljava/lang/String; = "amap"

.field public static final DAMAI:Ljava/lang/String; = "damai"

.field public static final DING:Ljava/lang/String; = "dingding"

.field public static final ELEME:Ljava/lang/String; = "eleme"

.field public static final ICBU:Ljava/lang/String; = "icbu"

.field public static final STARBUCKS:Ljava/lang/String; = "starbucks"

.field public static final TAOBAO:Ljava/lang/String; = "taobao"

.field public static final UC:Ljava/lang/String; = "uc"

.field public static final XIAMI:Ljava/lang/String; = "xiami"

.field public static final YABO:Ljava/lang/String; = "yabo"

.field public static final YOUKU:Ljava/lang/String; = "youku"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHavanaSite(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "taobao"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "icbu"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "damai"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "yabo"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
