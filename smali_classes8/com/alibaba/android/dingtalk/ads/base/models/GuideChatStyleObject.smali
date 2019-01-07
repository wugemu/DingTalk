.class public Lcom/alibaba/android/dingtalk/ads/base/models/GuideChatStyleObject;
.super Ljava/lang/Object;
.source "GuideChatStyleObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public guideDoc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "guideDoc"
    .end annotation
.end field

.field public guideType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "guideType"
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

.field public version:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lblo;)Lcom/alibaba/android/dingtalk/ads/base/models/GuideChatStyleObject;
    .locals 3
    .param p0, "model"    # Lblo;

    .prologue
    const/4 v2, 0x0

    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    .line 46
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/ads/base/models/GuideChatStyleObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/ads/base/models/GuideChatStyleObject;-><init>()V

    .line 47
    .local v0, "object":Lcom/alibaba/android/dingtalk/ads/base/models/GuideChatStyleObject;
    iget-object v1, p0, Lblo;->a:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/GuideChatStyleObject;->previewMediaIds:Ljava/util/List;

    .line 48
    iget-object v1, p0, Lblo;->b:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/GuideChatStyleObject;->mediaIds:Ljava/util/List;

    .line 49
    iget-object v1, p0, Lblo;->c:Ljava/lang/Integer;

    .line 1033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 49
    iput v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/GuideChatStyleObject;->guideType:I

    .line 50
    iget-object v1, p0, Lblo;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/GuideChatStyleObject;->guideDoc:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lblo;->e:Ljava/lang/Integer;

    .line 2033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 51
    iput v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/GuideChatStyleObject;->version:I

    goto :goto_0
.end method
