.class final Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$6;
.super Ljava/lang/Object;
.source "FaceToFaceCreateConversationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 498
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$6;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$6;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$6;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0}, Ldeh;->a(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;)V

    .line 504
    :cond_0
    return-void
.end method
