.class final Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$6;
.super Ljava/lang/Object;
.source "CirclePostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    .prologue
    .line 668
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$6;->a:Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 671
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 672
    return-void
.end method
