.class final Laes$1;
.super Ljava/lang/Object;
.source "DingtalkMailDailyHelper.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laes;
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
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/base/IMInterface;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Laes;


# direct methods
.method constructor <init>(Laes;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/IMInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Laes;

    .prologue
    .line 271
    iput-object p1, p0, Laes$1;->d:Laes;

    iput-object p2, p0, Laes$1;->a:Ljava/lang/String;

    iput-object p3, p0, Laes$1;->b:Lcom/alibaba/android/dingtalkim/base/IMInterface;

    iput-object p4, p0, Laes$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 285
    const-string/jumbo v0, "CMail"

    const-string/jumbo v1, "DingtalkMailDailyHelper"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "replyAtMessage: cid:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Laes$1;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 286
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 271
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1274
    if-eqz p1, :cond_0

    .line 1275
    iget-object v0, p0, Laes$1;->d:Laes;

    .line 2047
    iget-object v0, v0, Laes;->g:Ljava/util/HashMap;

    .line 1275
    iget-object v1, p0, Laes$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    iget-object v0, p0, Laes$1;->b:Lcom/alibaba/android/dingtalkim/base/IMInterface;

    iget-object v1, p0, Laes$1;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/util/Map;)Z

    .line 1277
    sget v0, Laxo$i;->dt_mail_maildetail_plugin_msgsend:I

    invoke-static {v0}, Lhcn;->a(I)V

    :goto_0
    return-void

    .line 1279
    :cond_0
    sget v0, Laxo$i;->dt_mail_maildetail_plugin_invalidparam:I

    invoke-static {v0}, Lhcn;->a(I)V

    goto :goto_0
.end method
