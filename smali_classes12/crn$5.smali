.class final Lcrn$5;
.super Ljava/lang/Object;
.source "GeneralRemindV3AsyncPopupWindow.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;)V
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
        "Landroid/text/SpannableString;",
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
    .line 308
    iput-object p1, p0, Lcrn$5;->a:Lcrn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 308
    check-cast p1, Landroid/text/SpannableString;

    .line 1311
    iget-object v0, p0, Lcrn$5;->a:Lcrn;

    invoke-static {v0}, Lcrn;->a(Lcrn;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcrn$5;->a:Lcrn;

    iget-object v1, p0, Lcrn$5;->a:Lcrn;

    invoke-static {v1}, Lcrn;->b(Lcrn;)Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcrn;->a(Lcrn;Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;Landroid/text/SpannableString;)V

    .line 308
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 323
    iget-object v0, p0, Lcrn$5;->a:Lcrn;

    invoke-static {v0}, Lcrn;->a(Lcrn;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcrn$5;->a:Lcrn;

    iget-object v1, p0, Lcrn$5;->a:Lcrn;

    invoke-static {v1}, Lcrn;->b(Lcrn;)Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcrn;->a(Lcrn;Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;Landroid/text/SpannableString;)V

    .line 326
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 319
    return-void
.end method
