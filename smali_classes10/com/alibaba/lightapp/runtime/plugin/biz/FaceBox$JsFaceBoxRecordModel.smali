.class public Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;
.super Ljava/lang/Object;
.source "FaceBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsFaceBoxRecordModel"
.end annotation


# instance fields
.field public cameraType:Ljava/lang/String;

.field public corpId:Ljava/lang/String;

.field public deviceUid:Ljava/lang/String;

.field public faceMagic:I

.field public from:Ljava/lang/String;

.field public groupId:Ljava/lang/String;

.field public microAppAgentId:I

.field public recordTips:Ljava/lang/String;

.field public settingMode:I

.field public source:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->faceMagic:I

    return-void
.end method
