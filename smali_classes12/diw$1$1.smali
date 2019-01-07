.class final Ldiw$1$1;
.super Ljava/lang/Object;
.source "CalendarUtil.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldiw$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic a:Ldiw$1;


# direct methods
.method constructor <init>(Ldiw$1;)V
    .locals 0
    .param p1, "this$0"    # Ldiw$1;

    .prologue
    .line 106
    iput-object p1, p0, Ldiw$1$1;->a:Ldiw$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 118
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    check-cast p1, Ljava/lang/Long;

    .line 1109
    if-nez p1, :cond_0

    .line 1110
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1113
    :cond_0
    iget-object v0, p0, Ldiw$1$1;->a:Ldiw$1;

    iget-object v0, v0, Ldiw$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Ldiw$1$1;->a:Ldiw$1;

    iget-object v1, v1, Ldiw$1;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Ldiw$1$1;->a:Ldiw$1;

    iget-object v2, v2, Ldiw$1;->c:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Ldiw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;J)V

    .line 106
    return-void
.end method
