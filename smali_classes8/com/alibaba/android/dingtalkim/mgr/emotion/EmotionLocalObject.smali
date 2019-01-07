.class public Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;
.super Ljava/lang/Object;
.source "EmotionLocalObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4903c5f155619f9eL


# instance fields
.field public emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "emotionResultObject"
    .end annotation
.end field

.field public language:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "language"
    .end annotation
.end field

.field public lastMainOrgId:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "lastMainOrgId"
    .end annotation
.end field

.field public lastUpdateTime:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "lastUpdateTime"
    .end annotation
.end field

.field public localIconRedPointVer:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "localIconRedPointVer"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
