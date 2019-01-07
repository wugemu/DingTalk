.class final Lcom/alibaba/android/user/connection/activity/PostDetailActivity$6;
.super Ljava/lang/Object;
.source "PostDetailActivity.java"

# interfaces
.implements Lfcm$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/PostDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PostDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/PostDetailActivity;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity$6;->a:Lcom/alibaba/android/user/connection/activity/PostDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;I)V
    .locals 1
    .param p1, "post"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .param p2, "comment"    # Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    .param p3, "position"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity$6;->a:Lcom/alibaba/android/user/connection/activity/PostDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->d(Lcom/alibaba/android/user/connection/activity/PostDetailActivity;)Lfdp;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lfdp;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;I)V

    .line 227
    return-void
.end method
