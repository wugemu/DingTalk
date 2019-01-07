.class public Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;
.super Ljava/lang/Object;
.source "GuideChatEmotionObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x93f717b4a97f7ffL


# instance fields
.field public guideDoc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "guideDoc"
    .end annotation
.end field

.field public mediaIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mediaIds"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public moreEmotionTopicId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "moreEmotionTopicId"
    .end annotation
.end field

.field public previewMediaIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "previewMediaIds"
    .end annotation

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
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
