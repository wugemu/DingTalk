.class final Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$1;
.super Ljava/lang/Object;
.source "RecognizeErrorDialog.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$1;->a:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    check-cast p1, Ljava/lang/String;

    .line 1072
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$1;->a:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->a(Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;)Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1074
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$1;->a:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, p1, v2, v0}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->a(Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;Ljava/lang/String;II)V

    .line 69
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 84
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 80
    return-void
.end method
