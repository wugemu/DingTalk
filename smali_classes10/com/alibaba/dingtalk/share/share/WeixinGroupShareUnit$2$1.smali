.class final Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2$1;
.super Ljava/lang/Object;
.source "WeixinGroupShareUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/ByteArrayOutputStream;

.field final synthetic b:Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2$1;->b:Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;

    iput-object p2, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2$1;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2$1;->b:Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;->e:Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;

    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2$1;->b:Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2$1;->b:Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;

    iget-object v2, v2, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2$1;->b:Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;

    iget-object v3, v3, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2$1;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 160
    return-void
.end method
