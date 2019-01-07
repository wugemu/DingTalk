.class public Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsDidoMessageModel;
.super Ljava/lang/Object;
.source "FaceBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsDidoMessageModel"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public corpId:Ljava/lang/String;

.field public messageTemplate:Ljava/lang/String;

.field public microAppAgentId:I

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
