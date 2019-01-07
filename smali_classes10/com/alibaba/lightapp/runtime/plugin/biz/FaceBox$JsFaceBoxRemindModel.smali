.class public Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;
.super Ljava/lang/Object;
.source "FaceBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsFaceBoxRemindModel"
.end annotation


# instance fields
.field public attachment:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;

.field public content:Ljava/lang/String;

.field public corpId:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
