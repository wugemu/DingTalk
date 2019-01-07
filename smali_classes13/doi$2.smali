.class final Ldoi$2;
.super Ljava/lang/Object;
.source "MdUrlDispatcher.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldoi;
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
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic e:Ldoi$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Ldoi$a;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Ldoi$2;->a:Landroid/content/Context;

    iput-object p2, p0, Ldoi$2;->b:Ljava/lang/String;

    iput-object p3, p0, Ldoi$2;->c:Ljava/lang/String;

    iput-object p4, p0, Ldoi$2;->d:Lcom/alibaba/wukong/im/Conversation;

    iput-object p5, p0, Ldoi$2;->e:Ldoi$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 225
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "sendMessageWithAt error,errorCode:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ",errorMsg:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 217
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 1220
    iget-object v1, p0, Ldoi$2;->a:Landroid/content/Context;

    iget-object v2, p0, Ldoi$2;->b:Ljava/lang/String;

    iget-object v3, p0, Ldoi$2;->c:Ljava/lang/String;

    iget-object v4, p0, Ldoi$2;->d:Lcom/alibaba/wukong/im/Conversation;

    iget-object v5, p0, Ldoi$2;->e:Ldoi$a;

    .line 2240
    if-eqz v1, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-nez v4, :cond_1

    .line 2241
    :cond_0
    :goto_0
    return-void

    .line 2243
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    .line 2244
    new-instance v0, Ldoi$3;

    invoke-direct/range {v0 .. v5}, Ldoi$3;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Ldoi$a;)V

    .line 2262
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 2263
    const-class v2, Lcma;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v0, v2, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    move-object v1, v0

    .line 2265
    :goto_1
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v2, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-virtual {v0, v2}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-virtual {v0, v6, v7, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method
