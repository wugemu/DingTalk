.class final Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$7;
.super Ljava/lang/Object;
.source "WeixinFriendShareUnit.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$7;->a:Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 413
    check-cast p1, Ljava/lang/String;

    .line 1416
    invoke-static {p1}, Lhcs;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1417
    const-string/jumbo v0, "share"

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "wxf"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "after download url to local path, but file not exist"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    :goto_0
    return-void

    .line 1422
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$7;->a:Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;

    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;->a(Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 432
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string/jumbo v0, "share"

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "wxf"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "download url to local path failed, code:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ",msg:"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 428
    return-void
.end method
