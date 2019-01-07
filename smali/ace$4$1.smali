.class final Lace$4$1;
.super Ljava/lang/Object;
.source "MailBridge.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lace$4;->run()V
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
.field final synthetic a:Lace$4;


# direct methods
.method constructor <init>(Lace$4;)V
    .locals 0
    .param p1, "this$0"    # Lace$4;

    .prologue
    .line 248
    iput-object p1, p0, Lace$4$1;->a:Lace$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 262
    const-string/jumbo v0, "MailBridge"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 263
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 248
    check-cast p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 1251
    new-instance v0, Lace$4$1$1;

    invoke-direct {v0, p0, p1}, Lace$4$1$1;-><init>(Lace$4$1;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V

    .line 1257
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    const-string/jumbo v2, "handleAccountNewMail"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 248
    return-void
.end method
