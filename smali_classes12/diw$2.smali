.class final Ldiw$2;
.super Ljava/lang/Object;
.source "CalendarUtil.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldiw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:J


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/Message;J)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Ldiw$2;->a:Lcom/alibaba/wukong/im/Message;

    iput-wide p2, p0, Ldiw$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 386
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[CalendarUtil]cancelScheduleEvent failed, messageId: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ldiw$2;->a:Lcom/alibaba/wukong/im/Message;

    .line 390
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", calendarId="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Ldiw$2;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", code:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p1, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, ", reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object p2, v2, v3

    .line 389
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1381
    sget v0, Lctk$i;->dt_im_message_to_remind_cancel_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 377
    return-void
.end method