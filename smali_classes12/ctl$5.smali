.class final Lctl$5;
.super Ljava/lang/Object;
.source "RobotConfigPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lctl;->a(Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

.field final synthetic b:Lctl;


# direct methods
.method constructor <init>(Lctl;Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;)V
    .locals 0
    .param p1, "this$0"    # Lctl;

    .prologue
    .line 352
    iput-object p1, p0, Lctl$5;->b:Lctl;

    iput-object p2, p0, Lctl$5;->a:Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

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
    .line 352
    .line 1356
    iget-object v0, p0, Lctl$5;->b:Lctl;

    invoke-static {v0}, Lctl;->b(Lctl;)Lctl$a;

    move-result-object v0

    invoke-interface {v0}, Lctl$a;->b()V

    .line 1357
    iget-object v0, p0, Lctl$5;->b:Lctl;

    invoke-static {v0}, Lctl;->b(Lctl;)Lctl$a;

    move-result-object v0

    iget-object v1, p0, Lctl$5;->a:Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    invoke-interface {v0, v1}, Lctl$a;->a(Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;)V

    .line 352
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 367
    const-string/jumbo v0, "imrobot"

    invoke-static {}, Lctl;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "updateBotObject onException: code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", botId="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lctl$5;->a:Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mRobotId:J

    .line 369
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 368
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lctl$5;->b:Lctl;

    invoke-static {v0}, Lctl;->b(Lctl;)Lctl$a;

    move-result-object v0

    invoke-interface {v0}, Lctl$a;->b()V

    .line 371
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 363
    return-void
.end method
