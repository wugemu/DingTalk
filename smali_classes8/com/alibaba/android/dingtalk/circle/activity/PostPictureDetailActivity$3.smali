.class final Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$3;
.super Ljava/lang/Object;
.source "PostPictureDetailActivity.java"

# interfaces
.implements Lbnv$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$3;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;I)V
    .locals 1
    .param p1, "post"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .param p2, "comment"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    .param p3, "position"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$3;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->c(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;)Lboy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lboy;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;I)V

    .line 119
    return-void
.end method
