.class final Lcrn$1;
.super Ljava/lang/Object;
.source "GeneralRemindV3AsyncPopupWindow.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrn;
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
        "Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcrn;


# direct methods
.method constructor <init>(Lcrn;)V
    .locals 0
    .param p1, "this$0"    # Lcrn;

    .prologue
    .line 182
    iput-object p1, p0, Lcrn$1;->a:Lcrn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 182
    check-cast p1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;

    .line 1185
    iget-object v0, p0, Lcrn$1;->a:Lcrn;

    invoke-static {v0}, Lcrn;->a(Lcrn;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcrn$1;->a:Lcrn;

    invoke-static {v0, p1}, Lcrn;->a(Lcrn;Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;)V

    .line 182
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 197
    iget-object v0, p0, Lcrn$1;->a:Lcrn;

    invoke-static {v0}, Lcrn;->a(Lcrn;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcrn$1;->a:Lcrn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcrn;->a(Lcrn;Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;)V

    .line 200
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 193
    return-void
.end method
