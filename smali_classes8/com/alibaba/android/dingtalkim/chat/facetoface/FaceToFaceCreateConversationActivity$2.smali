.class final Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$2;
.super Ljava/lang/Object;
.source "FaceToFaceCreateConversationActivity.java"

# interfaces
.implements Lciq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$2;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amap/api/location/AMapLocation;)V
    .locals 0
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 402
    return-void
.end method

.method public final onError(Lcom/amap/api/location/AMapLocation;)V
    .locals 5
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 412
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$2;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->c(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$2;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    const-string/jumbo v1, "100"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$2;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    sget v3, Lctk$i;->dt_im_f2f_location_fail:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v4, v4, v1, v2}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->a(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 417
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$2;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->d(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;)V

    goto :goto_0
.end method

.method public final onSuccess(Lcom/amap/api/location/AMapLocation;)V
    .locals 1
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$2;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->a(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    .line 407
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$2;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->b(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;)V

    .line 408
    return-void
.end method
