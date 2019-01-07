.class final Latj$2;
.super Ljava/lang/Object;
.source "MailCalendarEventProvider.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latj;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Latj;


# direct methods
.method constructor <init>(Latj;)V
    .locals 0
    .param p1, "this$0"    # Latj;

    .prologue
    .line 99
    iput-object p1, p0, Latj$2;->a:Latj;

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
    .line 99
    check-cast p1, Ljava/util/List;

    .line 1102
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "[MailCalendarEventProvider]loadEventForNonAlibabaUser success, size:"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const-string/jumbo v0, "0"

    .line 1103
    :goto_0
    aput-object v0, v1, v2

    .line 1102
    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Latj$2;->a:Latj;

    invoke-static {v0, p1}, Latj;->a(Latj;Ljava/util/List;)V

    .line 99
    return-void

    .line 1103
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

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
    .line 113
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[MailCalendarEventProvider]loadEventForNonAlibabaUser failed, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Latj$2;->a:Latj;

    iget-object v0, v0, Latj;->a:Lfp;

    invoke-virtual {v0}, Lfp;->b()V

    .line 116
    iget-object v0, p0, Latj$2;->a:Latj;

    invoke-virtual {v0}, Latj;->b()V

    .line 117
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 109
    return-void
.end method
