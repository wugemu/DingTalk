.class public Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;
.super Ljava/lang/Object;
.source "HandleUrlResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final OPEN_FAIL_APP_NO_OPENED:I = 0x191

.field public static final OPEN_FAIL_NEED_H5:I = 0x195

.field public static final OPEN_FAIL_ORG_WRONG:I = 0x192

.field public static final OPEN_FAIL_PARSE_MINI:I = 0x194

.field public static final OPEN_FAIL_UNKOWN:I = 0x1f3

.field public static final OPEN_FAIL_URL_NULL:I = 0x193

.field public static final OPEN_SUCCESS:I = 0xc8


# instance fields
.field public fallbackUrl:Ljava/lang/String;

.field public openStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
