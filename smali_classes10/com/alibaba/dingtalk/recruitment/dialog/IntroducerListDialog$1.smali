.class final Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog$1;
.super Ljava/lang/Object;
.source "IntroducerListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog$1;->a:Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog$1;->a:Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->dismiss()V

    .line 63
    return-void
.end method