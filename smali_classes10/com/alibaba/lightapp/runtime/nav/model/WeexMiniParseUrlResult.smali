.class public Lcom/alibaba/lightapp/runtime/nav/model/WeexMiniParseUrlResult;
.super Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;
.source "WeexMiniParseUrlResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appKey:Ljava/lang/String;

.field public appLogo:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field public applicationType:I

.field public frameTempType:I

.field public previewTimeStamp:J

.field public status:I

.field public version:Ljava/lang/String;

.field public zCacheKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;-><init>()V

    return-void
.end method
