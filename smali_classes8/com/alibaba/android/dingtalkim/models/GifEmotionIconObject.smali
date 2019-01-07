.class public Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;
.super Ljava/lang/Object;
.source "GifEmotionIconObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x712ce082a3f0a109L


# instance fields
.field public authMediaId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "authMediaId"
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

.method public static fromIdl(Ldtj;)Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;
    .locals 2
    .param p0, "model"    # Ldtj;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    .line 26
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;-><init>()V

    .line 27
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;
    iget-object v1, p0, Ldtj;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;->authMediaId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public copy()Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 32
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;-><init>()V

    .line 33
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;->authMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;->authMediaId:Ljava/lang/String;

    .line 34
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    if-ne p0, p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v1

    .line 40
    :cond_1
    instance-of v3, p1, Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 42
    check-cast v0, Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    .line 44
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;->authMediaId:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;->authMediaId:Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;->authMediaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;->authMediaId:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;->authMediaId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;->authMediaId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
