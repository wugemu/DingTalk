.class final Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity$6;
.super Ljava/lang/Object;
.source "PostDetailActivity.java"

# interfaces
.implements Lbnv$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity$6;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;

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
    .line 224
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity$6;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->d(Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;)Lboy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lboy;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;I)V

    .line 225
    return-void
.end method
