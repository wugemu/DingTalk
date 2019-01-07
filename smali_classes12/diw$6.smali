.class final Ldiw$6;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:J


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/Conversation;J)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Ldiw$6;->a:Lcom/alibaba/wukong/im/Conversation;

    iput-wide p2, p0, Ldiw$6;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[CalendarUtil]createRemind failed, "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "code:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ", reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    .line 208
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    check-cast p1, Ljava/lang/Long;

    .line 1198
    sget v0, Lctk$i;->dt_im_message_to_remind_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1199
    invoke-static {}, Lder;->a()Lder;

    move-result-object v0

    iget-object v1, p0, Ldiw$6;->a:Lcom/alibaba/wukong/im/Conversation;

    iget-wide v2, p0, Ldiw$6;->b:J

    .line 2044
    const-wide/16 v4, 0x0

    invoke-static {p1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1199
    invoke-virtual/range {v0 .. v5}, Lder;->a(Lcom/alibaba/wukong/im/Conversation;JJ)V

    .line 1200
    const-string/jumbo v0, "chat_later_success"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    .line 195
    return-void
.end method
