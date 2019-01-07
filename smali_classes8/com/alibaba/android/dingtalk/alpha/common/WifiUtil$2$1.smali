.class final Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$2$1;
.super Ljava/lang/Object;
.source "WifiUtil.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$2;->run()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$2;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$2$1;->a:Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 570
    check-cast p1, Ljava/lang/Boolean;

    .line 1573
    const-string/jumbo v1, "WifiUtil"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "report status success "

    aput-object v3, v2, v0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 1574
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1573
    invoke-static {v1, v0}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    return-void

    .line 1574
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 584
    const-string/jumbo v0, "WifiUtil"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "report status fail "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ","

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    .line 585
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 580
    return-void
.end method
