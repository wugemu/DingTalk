.class final Lacs$6$1;
.super Ljava/lang/Object;
.source "MailNotificationManager.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacs$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lacs$6;


# direct methods
.method constructor <init>(Lacs$6;)V
    .locals 0
    .param p1, "this$1"    # Lacs$6;

    .prologue
    .line 536
    iput-object p1, p0, Lacs$6$1;->a:Lacs$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 0
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 546
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 536
    .line 1540
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    iget-object v1, p0, Lacs$6$1;->a:Lacs$6;

    iget-wide v2, v1, Lacs$6;->a:J

    invoke-interface {v0, v2, v3}, Lcom/alibaba/alimei/sdk/api/MailApi;->sendMailById(J)V

    .line 536
    return-void
.end method
