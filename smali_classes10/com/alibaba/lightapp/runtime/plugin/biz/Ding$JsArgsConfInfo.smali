.class public Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsConfInfo;
.super Ljava/lang/Object;
.source "Ding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsArgsConfInfo"
.end annotation


# instance fields
.field public bizSubType:I

.field public endTime:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$DateModel;

.field public location:Ljava/lang/String;

.field public locationCode:Ljava/lang/String;

.field public locationCorpId:Ljava/lang/String;

.field public locationOrgId:Ljava/lang/String;

.field public remindMinutes:I

.field public remindType:I

.field public roomBookingId:Ljava/lang/String;

.field public startTime:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$DateModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
