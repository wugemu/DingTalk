.class Lcom/ali/user/enterprise/base/info/AppInfo$1;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Lcom/alibaba/wireless/security/open/umid/IUMIDInitListenerEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/enterprise/base/info/AppInfo;->init(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/user/enterprise/base/info/AppInfo;


# direct methods
.method constructor <init>(Lcom/ali/user/enterprise/base/info/AppInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/user/enterprise/base/info/AppInfo;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ali/user/enterprise/base/info/AppInfo$1;->this$0:Lcom/ali/user/enterprise/base/info/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUMIDInitFinishedEx(Ljava/lang/String;I)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 81
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/ali/user/enterprise/base/info/AppInfo$1;->this$0:Lcom/ali/user/enterprise/base/info/AppInfo;

    invoke-static {v0, p1}, Lcom/ali/user/enterprise/base/info/AppInfo;->access$002(Lcom/ali/user/enterprise/base/info/AppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    :cond_0
    const-string/jumbo v0, "login.AppInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resultCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " onInitFinished umidToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method
