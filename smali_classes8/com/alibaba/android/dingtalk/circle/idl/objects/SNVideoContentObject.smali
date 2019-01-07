.class public Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;
.super Ljava/lang/Object;
.source "SNVideoContentObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1a966b34a8150a15L


# instance fields
.field public bitrate:J

.field public duration:J

.field public extension:Ljava/util/Map;
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

.field public fileName:Ljava/lang/String;

.field public fileSize:J

.field public fileType:Ljava/lang/String;

.field public height:I

.field public picAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

.field public picMediaId:Ljava/lang/String;

.field public videoAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

.field public videoMediaId:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;
    .locals 7
    .param p0, "model"    # Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 60
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    .line 61
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;-><init>()V

    .line 62
    .local v0, "result":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->picMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->picMediaId:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->videoMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->videoMediaId:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->picAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->fromIdl(Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;)Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->picAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

    .line 65
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->videoAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->fromIdl(Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;)Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->videoAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

    .line 66
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->fileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->fileName:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->fileType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->fileType:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->fileSize:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 68
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->fileSize:J

    .line 69
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->duration:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 69
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->duration:J

    .line 70
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->width:Ljava/lang/Integer;

    .line 3033
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 70
    iput v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->width:I

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->height:Ljava/lang/Integer;

    .line 4033
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 71
    iput v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->height:I

    .line 72
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->bitrate:Ljava/lang/Long;

    .line 4044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 72
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->bitrate:J

    .line 73
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->extension:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->extension:Ljava/util/Map;

    goto :goto_0
.end method

.method static toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;)Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    .prologue
    .line 42
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    .line 43
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;-><init>()V

    .line 44
    .local v0, "result":Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->picMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->picMediaId:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->videoMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->videoMediaId:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->picAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;)Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->picAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    .line 47
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->videoAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;)Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->videoAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    .line 48
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->fileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->fileName:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->fileType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->fileType:Ljava/lang/String;

    .line 50
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->fileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->fileSize:Ljava/lang/Long;

    .line 51
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->duration:Ljava/lang/Long;

    .line 52
    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->width:Ljava/lang/Integer;

    .line 53
    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->height:Ljava/lang/Integer;

    .line 54
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->bitrate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->bitrate:Ljava/lang/Long;

    .line 55
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->extension:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->extension:Ljava/util/Map;

    goto :goto_0
.end method
