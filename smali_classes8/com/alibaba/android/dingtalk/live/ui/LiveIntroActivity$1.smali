.class final Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$1;
.super Ljava/lang/Object;
.source "LiveIntroActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 78
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 67
    .line 1070
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;->finish()V

    .line 67
    :cond_0
    return-void
.end method
