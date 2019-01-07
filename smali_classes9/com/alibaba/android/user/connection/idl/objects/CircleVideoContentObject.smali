.class public Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;
.super Ljava/lang/Object;
.source "CircleVideoContentObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1a966b34a8150a15L


# instance fields
.field public bitrate:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public duration:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public extension:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

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
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public fileSize:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public fileType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public height:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public picAuthMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public picMediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public videoAuthMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public videoMediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public width:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lfes;)Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;
    .locals 7
    .param p0, "model"    # Lfes;

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 75
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    .line 76
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;-><init>()V

    .line 77
    .local v0, "result":Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;
    iget-object v1, p0, Lfes;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->picMediaId:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lfes;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->videoMediaId:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lfes;->c:Lfeb;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->fromIdl(Lfeb;)Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->picAuthMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    .line 80
    iget-object v1, p0, Lfes;->d:Lfeb;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->fromIdl(Lfeb;)Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->videoAuthMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    .line 81
    iget-object v1, p0, Lfes;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->fileName:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lfes;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->fileType:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lfes;->g:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 83
    iput-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->fileSize:J

    .line 84
    iget-object v1, p0, Lfes;->h:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 84
    iput-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->duration:J

    .line 85
    iget-object v1, p0, Lfes;->i:Ljava/lang/Integer;

    .line 3033
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 85
    iput v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->width:I

    .line 86
    iget-object v1, p0, Lfes;->j:Ljava/lang/Integer;

    .line 4033
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 86
    iput v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->height:I

    .line 87
    iget-object v1, p0, Lfes;->k:Ljava/lang/Long;

    .line 4044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 87
    iput-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->bitrate:J

    .line 88
    iget-object v1, p0, Lfes;->l:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->extension:Ljava/util/Map;

    goto :goto_0
.end method

.method static toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;)Lfes;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    .prologue
    .line 57
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    .line 58
    :cond_0
    new-instance v0, Lfes;

    invoke-direct {v0}, Lfes;-><init>()V

    .line 59
    .local v0, "result":Lfes;
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->picMediaId:Ljava/lang/String;

    iput-object v1, v0, Lfes;->a:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->videoMediaId:Ljava/lang/String;

    iput-object v1, v0, Lfes;->b:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->picAuthMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;)Lfeb;

    move-result-object v1

    iput-object v1, v0, Lfes;->c:Lfeb;

    .line 62
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->videoAuthMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;)Lfeb;

    move-result-object v1

    iput-object v1, v0, Lfes;->d:Lfeb;

    .line 63
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->fileName:Ljava/lang/String;

    iput-object v1, v0, Lfes;->e:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->fileType:Ljava/lang/String;

    iput-object v1, v0, Lfes;->f:Ljava/lang/String;

    .line 65
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->fileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lfes;->g:Ljava/lang/Long;

    .line 66
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lfes;->h:Ljava/lang/Long;

    .line 67
    iget v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lfes;->i:Ljava/lang/Integer;

    .line 68
    iget v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lfes;->j:Ljava/lang/Integer;

    .line 69
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->bitrate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lfes;->k:Ljava/lang/Long;

    .line 70
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->extension:Ljava/util/Map;

    iput-object v1, v0, Lfes;->l:Ljava/util/Map;

    goto :goto_0
.end method
