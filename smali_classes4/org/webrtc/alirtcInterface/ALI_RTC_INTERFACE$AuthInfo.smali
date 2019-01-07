.class public Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;
.super Ljava/lang/Object;
.source "ALI_RTC_INTERFACE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthInfo"
.end annotation


# instance fields
.field public appid:Ljava/lang/String;

.field public channel:Ljava/lang/String;

.field public gslb:[Ljava/lang/String;

.field public nonce:Ljava/lang/String;

.field public session:Ljava/lang/String;

.field public timestamp:J

.field public token:Ljava/lang/String;

.field public user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
