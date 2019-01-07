.class public final Lafd$1;
.super Ljava/lang/Object;
.source "MailSendController.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/base/IMInterface;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lafd;


# direct methods
.method public constructor <init>(Lafd;Lcom/alibaba/android/dingtalkim/base/IMInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lafd;

    .prologue
    .line 126
    iput-object p1, p0, Lafd$1;->d:Lafd;

    iput-object p2, p0, Lafd$1;->a:Lcom/alibaba/android/dingtalkim/base/IMInterface;

    iput-object p3, p0, Lafd$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lafd$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 126
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 1129
    const-string/jumbo v0, "MailSendController"

    const-string/jumbo v1, "find message and resend this cmail msg"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    iget-object v0, p0, Lafd$1;->a:Lcom/alibaba/android/dingtalkim/base/IMInterface;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->c(Lcom/alibaba/wukong/im/Message;)V

    .line 126
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 139
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[ERROR] find message mid="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lafd$1;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " cid="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lafd$1;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 135
    return-void
.end method
