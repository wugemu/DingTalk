.class final Lcom/alibaba/android/user/connection/activity/PostCommentActivity$4;
.super Ljava/lang/Object;
.source "PostCommentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$4;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$4;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->finish()V

    .line 303
    return-void
.end method
