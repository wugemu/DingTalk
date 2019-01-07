.class final Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$1;
.super Ljava/lang/Object;
.source "EmotionPreviewActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 184
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;

    .line 1187
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;)Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;

    .line 1188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)V

    .line 184
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 198
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[EmotionPreviewActivity] getDynamicEmotionMediaId: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    .line 199
    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->b(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " error,code:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ",reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 194
    return-void
.end method
