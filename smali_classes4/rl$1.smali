.class public final Lrl$1;
.super Ljava/lang/Object;
.source "MailCalendarUtil.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lcom/alibaba/alimei/sdk/model/EventDetailModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;


# direct methods
.method public constructor <init>(Lcma;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lrl$1;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 4
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 80
    const-string/jumbo v0, "[loadEventDetail]failed, reason:"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 81
    iget-object v0, p0, Lrl$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 82
    if-nez p1, :cond_1

    .line 83
    iget-object v2, p0, Lrl$1;->a:Lcma;

    const-string/jumbo v1, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v3, Laxo$i;->unknown_error:I

    invoke-virtual {v0, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_0
    invoke-interface {v2, v1, v0}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void

    .line 85
    :cond_1
    iget-object v2, p0, Lrl$1;->a:Lcma;

    const-string/jumbo v1, "-1"

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 69
    check-cast p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    .line 1072
    const-string/jumbo v0, "[loadEventDetail]success"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lrl$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lrl$1;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 69
    :cond_0
    return-void
.end method
