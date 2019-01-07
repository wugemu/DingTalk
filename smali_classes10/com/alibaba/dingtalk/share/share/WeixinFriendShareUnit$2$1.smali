.class final Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2$1;
.super Ljava/lang/Object;
.source "WeixinFriendShareUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/ByteArrayOutputStream;

.field final synthetic b:Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2$1;->b:Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;

    iput-object p2, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2$1;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2$1;->b:Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;->e:Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2$1;->b:Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;

    iget-object v2, v2, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2$1;->b:Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;

    iget-object v3, v3, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2$1;->b:Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;

    iget-object v4, v4, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2$1;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;->a(Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    const-string/jumbo v1, "share"

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "wxf"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, " compressBitmap shareImpl exception:"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 189
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 188
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
