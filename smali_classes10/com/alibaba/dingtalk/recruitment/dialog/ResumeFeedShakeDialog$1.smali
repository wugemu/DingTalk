.class final Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog$1;
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
    .line 55
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog$1;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog$1;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog$1;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->a(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;)V

    goto :goto_0
.end method
