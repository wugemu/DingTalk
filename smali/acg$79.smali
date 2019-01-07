.class final Lacg$79;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailDetailModel;Landroid/os/Bundle;Lcma;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

.field final synthetic b:Lcma;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/model/MailDetailModel;Lcma;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 5108
    iput-object p1, p0, Lacg$79;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iput-object p2, p0, Lacg$79;->b:Lcma;

    iput-object p3, p0, Lacg$79;->c:Landroid/content/Context;

    iput-object p4, p0, Lacg$79;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 5108
    .line 6111
    iget-object v0, p0, Lacg$79;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    new-instance v1, Lacg$79$1;

    invoke-direct {v1, p0}, Lacg$79$1;-><init>(Lacg$79;)V

    .line 7047
    if-nez v0, :cond_0

    .line 7048
    const-string/jumbo v0, "-1"

    const-string/jumbo v2, "Invalid Parameters param is invalid"

    invoke-interface {v1, v0, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 7054
    :goto_0
    return-void

    .line 7051
    :cond_0
    invoke-static {v0}, Lafh;->a(Lcom/alibaba/alimei/sdk/model/MailDetailModel;)Ljava/util/List;

    move-result-object v0

    .line 7052
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7053
    const-string/jumbo v0, "-1"

    const-string/jumbo v2, "Invalid Parameters"

    invoke-interface {v1, v0, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7056
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 5174
    const-string/jumbo v0, "navToChooseParticipant:checkLogin"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5175
    iget-object v0, p0, Lacg$79;->b:Lcma;

    if-eqz v0, :cond_0

    .line 5176
    iget-object v0, p0, Lacg$79;->b:Lcma;

    const-string/jumbo v1, "2016"

    const-string/jumbo v2, "need login first"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5178
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 5170
    return-void
.end method
