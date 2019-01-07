.class public Lcom/ali/user/enterprise/base/rpc/ApiConstants$ApiField;
.super Ljava/lang/Object;
.source "ApiConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/user/enterprise/base/rpc/ApiConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApiField"
.end annotation


# static fields
.field public static final DEVICE_NAME:Ljava/lang/String; = "deviceName"

.field public static final EXT:Ljava/lang/String; = "ext"

.field public static final RISK_CONTROL_INFO:Ljava/lang/String; = "riskControlInfo"

.field public static final TOKEN_INFO:Ljava/lang/String; = "tokenInfo"

.field public static final UMID_TOKEN:Ljava/lang/String; = "umidToken"

.field public static final USER_ID:Ljava/lang/String; = "userId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
