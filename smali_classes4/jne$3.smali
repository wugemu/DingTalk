.class final Ljne$3;
.super Ljava/lang/Object;
.source "DingMaHandlerV2.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljne;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Ljne$3;->a:Landroid/app/Activity;

    iput-object p2, p0, Ljne$3;->b:Ljava/lang/String;

    iput-object p3, p0, Ljne$3;->c:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 551
    check-cast p1, Ljava/lang/String;

    .line 1554
    iget-object v0, p0, Ljne$3;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1555
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Ljne$3;->a:Landroid/app/Activity;

    new-instance v2, Ljne$3$1;

    invoke-direct {v2, p0}, Ljne$3$1;-><init>(Ljne$3;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1563
    :cond_0
    iget-object v0, p0, Ljne$3;->c:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;

    invoke-static {v0}, Ljne;->a(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    .line 551
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 573
    invoke-static {}, Ljne;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "createOTOByDingTalkId failed, code="

    aput-object v2, v1, v5

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ", reason="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    iget-object v0, p0, Ljne$3;->c:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;

    invoke-static {v0}, Ljne;->a(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    .line 576
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 569
    return-void
.end method
