.class public Lcom/alibaba/wukong/WKConstants;
.super Ljava/lang/Object;
.source "WKConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/WKConstants$Environment;,
        Lcom/alibaba/wukong/WKConstants$ErrorCode;
    }
.end annotation


# static fields
.field public static final DEFAULT_SYNC_VERSION:I = 0x6

.field public static final DOMAIN:Ljava/lang/String; = "dingding"

.field public static final KICKOUT_MSG:Ljava/lang/String; = "kickMsg"

.field public static final SUPPORT_MULTI_CHANNEL_KEY:Ljava/lang/String; = "wk_multi_sync_v2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUPPORT_MULTI_CHANNEL_VERSION:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYNC_MODULE_KEY:Ljava/lang/String; = "sy"

.field public static final TAG:Ljava/lang/String; = "WKLog"

.field public static final TMP_TOKEN:Ljava/lang/String; = "tempToken"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    return-void
.end method
