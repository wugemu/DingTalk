.class final Ldil$1;
.super Ljava/lang/Object;
.source "CMailSendChangeManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldil;->a(JLjava/lang/String;Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;Ljava/lang/String;)V
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
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/base/IMInterface;

.field final synthetic c:Ldil;


# direct methods
.method constructor <init>(Ldil;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/IMInterface;)V
    .locals 0
    .param p1, "this$0"    # Ldil;

    .prologue
    .line 105
    iput-object p1, p0, Ldil$1;->c:Ldil;

    iput-object p2, p0, Ldil$1;->a:Ljava/lang/String;

    iput-object p3, p0, Ldil$1;->b:Lcom/alibaba/android/dingtalkim/base/IMInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 1108
    const-string/jumbo v0, "CMail"

    const-string/jumbo v1, "CMailSendChangeManager"

    const-string/jumbo v2, "find offline message, resend ..."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Ldil$1;->c:Ldil;

    iget-object v1, p0, Ldil$1;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Ldil;->a(Ldil;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)V

    .line 1112
    iget-object v0, p0, Ldil$1;->b:Lcom/alibaba/android/dingtalkim/base/IMInterface;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->c(Lcom/alibaba/wukong/im/Message;)V

    .line 105
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 122
    const-string/jumbo v0, "CMail"

    const-string/jumbo v1, "CMailSendChangeManager"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "offline message not found, code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 118
    return-void
.end method
