.class public Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;
.super Ljava/lang/Object;
.source "MeetingExtensionChangedObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mDingId:J

.field private mExtension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mModelTypeInTopic:I

.field private mSceneType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lbdr;)Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;
    .locals 5
    .param p0, "model"    # Lbdr;

    .prologue
    const/4 v4, 0x0

    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    .line 43
    :cond_0
    new-instance v0, Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;

    invoke-direct {v0}, Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;-><init>()V

    .line 44
    .local v0, "meetingExtensionChangedObject":Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;
    iget-object v1, p0, Lbdr;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 44
    iput-wide v2, v0, Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;->mDingId:J

    .line 45
    iget-object v1, p0, Lbdr;->b:Ljava/lang/Integer;

    .line 2033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 45
    iput v1, v0, Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;->mSceneType:I

    .line 46
    iget-object v1, p0, Lbdr;->c:Ljava/lang/Integer;

    .line 3033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 46
    iput v1, v0, Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;->mModelTypeInTopic:I

    .line 47
    iget-object v1, p0, Lbdr;->d:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;->mExtension:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public getDingId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;->mDingId:J

    return-wide v0
.end method

.method public getExtension()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;->mExtension:Ljava/util/Map;

    return-object v0
.end method

.method public getModelTypeInTopic()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;->mModelTypeInTopic:I

    return v0
.end method

.method public getSceneType()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;->mSceneType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MeetingExtensionChangedObject{mDingId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;->mDingId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSceneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;->mSceneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mModelTypeInTopic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;->mModelTypeInTopic:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mExtension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;->mExtension:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
