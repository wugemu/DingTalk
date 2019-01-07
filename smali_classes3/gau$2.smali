.class final Lgau$2;
.super Landroid/os/Handler;
.source "FavoriteUserHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgau;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgau;


# direct methods
.method constructor <init>(Lgau;)V
    .locals 0
    .param p1, "this$0"    # Lgau;

    .prologue
    .line 100
    iput-object p1, p0, Lgau$2;->a:Lgau;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 104
    iget-object v4, p0, Lgau$2;->a:Lgau;

    invoke-static {v4}, Lgau;->a(Lgau;)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lgau$2;->a:Lgau;

    invoke-static {v4}, Lgau;->b(Lgau;)Ljava/util/HashMap;

    move-result-object v4

    if-nez v4, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x65

    if-ne v4, v5, :cond_0

    .line 108
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 109
    .local v1, "userKey":Ljava/lang/String;
    iget-object v4, p0, Lgau$2;->a:Lgau;

    invoke-static {v4}, Lgau;->b(Lgau;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    iget-object v4, p0, Lgau$2;->a:Lgau;

    invoke-static {v4}, Lgau;->b(Lgau;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgau$a;

    .line 111
    .local v0, "listener":Lgau$a;
    if-eqz v0, :cond_2

    .line 112
    const/4 v4, 0x0

    const-string/jumbo v5, "_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 113
    .local v2, "uid":J
    iget-object v4, p0, Lgau$2;->a:Lgau;

    invoke-static {v4}, Lgau;->a(Lgau;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v0, v4}, Lgau$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 115
    .end local v2    # "uid":J
    :cond_2
    iget-object v4, p0, Lgau$2;->a:Lgau;

    invoke-static {v4}, Lgau;->b(Lgau;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
