.class final Ldiw$8;
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
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Lcom/alibaba/wukong/im/Message;


# direct methods
.method constructor <init>(ZLcom/alibaba/wukong/im/Conversation;JJLcom/alibaba/wukong/im/Message;)V
    .locals 1

    .prologue
    .line 261
    iput-boolean p1, p0, Ldiw$8;->a:Z

    iput-object p2, p0, Ldiw$8;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-wide p3, p0, Ldiw$8;->c:J

    iput-wide p5, p0, Ldiw$8;->d:J

    iput-object p7, p0, Ldiw$8;->e:Lcom/alibaba/wukong/im/Message;

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
    .line 276
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[CalendarUtil]updateRemind failed, messageId: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ldiw$8;->e:Lcom/alibaba/wukong/im/Message;

    .line 279
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", code:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 261
    .line 1264
    iget-boolean v0, p0, Ldiw$8;->a:Z

    if-eqz v0, :cond_0

    sget v0, Lctk$i;->dt_im_message_to_remind_modify_tip:I

    :goto_0
    invoke-static {v0}, Lcms;->a(I)V

    .line 1266
    iget-boolean v0, p0, Ldiw$8;->a:Z

    if-eqz v0, :cond_1

    .line 1267
    const-string/jumbo v0, "chat_later_edit_success"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 1264
    :cond_0
    sget v0, Lctk$i;->dt_im_message_to_remind_tip:I

    goto :goto_0

    .line 1269
    :cond_1
    invoke-static {}, Lder;->a()Lder;

    move-result-object v0

    iget-object v1, p0, Ldiw$8;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-wide v2, p0, Ldiw$8;->c:J

    iget-wide v4, p0, Ldiw$8;->d:J

    invoke-virtual/range {v0 .. v5}, Lder;->a(Lcom/alibaba/wukong/im/Conversation;JJ)V

    .line 1270
    const-string/jumbo v0, "chat_later_success"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
