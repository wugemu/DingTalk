.class public final Ldrl;
.super Ldrd;
.source "InstalledEmotionObject.java"


# instance fields
.field protected e:Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)V
    .locals 2
    .param p1, "emotionDetailObject"    # Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .prologue
    .line 16
    invoke-direct {p0}, Ldrd;-><init>()V

    .line 17
    iput-object p1, p0, Ldrl;->e:Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 18
    iget-object v0, p0, Ldrl;->e:Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    if-eqz v0, :cond_0

    .line 19
    iput-object p1, p0, Ldrl;->e:Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 20
    iget-object v0, p0, Ldrl;->e:Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionId:J

    iput-wide v0, p0, Ldrl;->a:J

    .line 21
    iget-object v0, p0, Ldrl;->e:Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionMediaId:Ljava/lang/String;

    iput-object v0, p0, Ldrl;->b:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Ldrl;->e:Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    iget v0, v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->type:I

    iput v0, p0, Ldrl;->d:I

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldrl;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)Ljava/lang/String;
    .locals 1
    .param p1, "enableDisplayingGif"    # Z

    .prologue
    .line 33
    iget-object v0, p0, Ldrl;->e:Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldrl;->e:Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->thumnailPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Ldrl;->e:Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->thumnailPath:Ljava/lang/String;

    .line 36
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Ldrd;->a(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
