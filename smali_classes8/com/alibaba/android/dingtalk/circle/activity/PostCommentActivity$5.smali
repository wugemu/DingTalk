.class final Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$5;
.super Ljava/lang/Object;
.source "PostCommentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$5;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 308
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 309
    return-void
.end method
