.class final Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog$2;
.super Ljava/lang/Object;
.source "ResumeFeedShakeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog$2;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog$2;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog$2;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->dismiss()V

    goto :goto_0
.end method
