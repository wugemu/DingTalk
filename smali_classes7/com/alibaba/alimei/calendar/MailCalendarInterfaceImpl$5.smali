.class final Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$5;
.super Ljava/lang/Object;
.source "MailCalendarInterfaceImpl.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a(Ljava/lang/String;JJJLcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;Lcom/alibaba/wukong/Callback;)V
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
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$5;->b:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$5;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 4
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 813
    if-nez p1, :cond_0

    .line 814
    const-string/jumbo v0, "[deleteNonRepeatEvent]failed"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 815
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$5;->a:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxo$i;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    :goto_0
    return-void

    .line 817
    :cond_0
    const-string/jumbo v0, "[deleteNonRepeatEvent]failed, reason:"

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$5;->a:Lcom/alibaba/wukong/Callback;

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 805
    check-cast p1, Ljava/lang/Void;

    .line 1808
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$5;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, p1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 805
    return-void
.end method
