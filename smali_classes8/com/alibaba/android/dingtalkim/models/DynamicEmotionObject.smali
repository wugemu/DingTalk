.class public Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;
.super Lcrd;
.source "DynamicEmotionObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public authMediaId:Ljava/lang/String;

.field public dynamicEmotionId:Ljava/lang/String;

.field public height:I

.field public mediaId:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public thumbHeight:I

.field public thumbUrl:Ljava/lang/String;

.field public thumbWidth:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcrd;-><init>()V

    return-void
.end method

.method public static fromIDL(Ldsy;)Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;
    .locals 2
    .param p0, "model"    # Ldsy;

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;-><init>()V

    .line 41
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;
    iget-object v1, p0, Ldsy;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->dynamicEmotionId:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Ldsy;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->mediaId:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Ldsy;->c:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->width:I

    .line 44
    iget-object v1, p0, Ldsy;->d:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->height:I

    .line 45
    iget-object v1, p0, Ldsy;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->thumbUrl:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Ldsy;->f:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->thumbWidth:I

    .line 47
    iget-object v1, p0, Ldsy;->g:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->thumbHeight:I

    .line 48
    iget-object v1, p0, Ldsy;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->authMediaId:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Ldsy;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->source:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getTalkBackDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, ""

    return-object v0
.end method
