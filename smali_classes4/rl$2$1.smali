.class final Lrl$2$1;
.super Ljava/lang/Object;
.source "MailCalendarUtil.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrl$2;->run()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrl$2;


# direct methods
.method constructor <init>(Lrl$2;)V
    .locals 0
    .param p1, "this$0"    # Lrl$2;

    .prologue
    .line 112
    iput-object p1, p0, Lrl$2$1;->a:Lrl$2;

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
    .line 121
    const-string/jumbo v0, "[updateAttendeeStatus]failed, reason:"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 122
    if-nez p1, :cond_0

    .line 123
    iget-object v0, p0, Lrl$2$1;->a:Lrl$2;

    iget-object v2, v0, Lrl$2;->e:Lcma;

    const-string/jumbo v1, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v3, Laxo$i;->unknown_error:I

    invoke-virtual {v0, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    invoke-static {v2, v1, v0}, Lcnu;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lrl$2$1;->a:Lrl$2;

    iget-object v2, v0, Lrl$2;->e:Lcma;

    const-string/jumbo v1, "-1"

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 112
    .line 1115
    const-string/jumbo v0, "[updateAttendeeStatus]success"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 1116
    iget-object v0, p0, Lrl$2$1;->a:Lrl$2;

    iget-object v0, v0, Lrl$2;->e:Lcma;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcnu;->a(Lcma;Ljava/lang/Object;)V

    .line 112
    return-void
.end method
