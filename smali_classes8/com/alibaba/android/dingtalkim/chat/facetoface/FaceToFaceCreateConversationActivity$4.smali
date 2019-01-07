.class final Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FaceToFaceCreateConversationActivity.java"


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
    .line 464
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$4;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 467
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 468
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$4;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$4;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->i(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$4;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->j(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
