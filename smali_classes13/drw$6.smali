.class final Ldrw$6;
.super Ljava/lang/Object;
.source "PublicAccountMenuManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrw;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldrw;


# direct methods
.method constructor <init>(Ldrw;)V
    .locals 0
    .param p1, "this$0"    # Ldrw;

    .prologue
    .line 342
    iput-object p1, p0, Ldrw$6;->a:Ldrw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 342
    .line 1345
    iget-object v0, p0, Ldrw$6;->a:Ldrw;

    .line 2049
    iget-object v0, v0, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 1345
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->dismissLoadingDialog()V

    .line 342
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 354
    iget-object v0, p0, Ldrw$6;->a:Ldrw;

    .line 1049
    iget-object v0, v0, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 354
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->dismissLoadingDialog()V

    .line 355
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 350
    return-void
.end method
