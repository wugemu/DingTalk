.class public final Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;
.super Ljava/lang/Object;
.source "EmotionObjectWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;-><init>(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$1;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    .line 120
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;
    .locals 1
    .param p1, "emotionType"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->access$302(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;I)I

    .line 134
    return-object p0
.end method

.method public final a(J)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;
    .locals 1
    .param p1, "emotionId"    # J

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->access$202(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;J)J

    .line 129
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;
    .locals 1
    .param p1, "emotionPackageId"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->access$102(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public final b(I)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;
    .locals 1
    .param p1, "praiseType"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->access$1302(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;I)I

    .line 184
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;
    .locals 1
    .param p1, "emotionMediaId"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->access$402(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;
    .locals 1
    .param p1, "emotionAuthMediaId"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->access$502(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;
    .locals 1
    .param p1, "emotionName"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->access$802(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;
    .locals 1
    .param p1, "praiseUuid"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->access$1202(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;
    .locals 1
    .param p1, "praiseUrlPrefix"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->access$1402(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    return-object p0
.end method
