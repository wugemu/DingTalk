.class public Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;
.super Ljava/lang/Object;
.source "CreateBotObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public mCid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mExtension:Ljava/util/Map;
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

.field public mIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mTemplateId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Ldci;)Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;
    .locals 4
    .param p0, "model"    # Ldci;

    .prologue
    .line 44
    if-eqz p0, :cond_0

    .line 45
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;-><init>()V

    .line 46
    .local v0, "createBotObject":Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;
    iget-object v1, p0, Ldci;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 46
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;->mTemplateId:J

    .line 47
    iget-object v1, p0, Ldci;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;->mName:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Ldci;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;->mIcon:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Ldci;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;->mCid:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Ldci;->e:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;->mExtension:Ljava/util/Map;

    .line 53
    .end local v0    # "createBotObject":Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
