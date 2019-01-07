.class final Ldjz$4;
.super Ljava/lang/Object;
.source "MessageCountDownManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjz;->c(Lcom/alibaba/wukong/im/Message;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:J

.field final synthetic c:Ldjz;


# direct methods
.method constructor <init>(Ldjz;Lcom/alibaba/wukong/im/Message;J)V
    .locals 1
    .param p1, "this$0"    # Ldjz;

    .prologue
    .line 333
    iput-object p1, p0, Ldjz$4;->c:Ldjz;

    iput-object p2, p0, Ldjz$4;->a:Lcom/alibaba/wukong/im/Message;

    iput-wide p3, p0, Ldjz$4;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 337
    :try_start_0
    iget-object v1, p0, Ldjz$4;->c:Ldjz;

    iget-object v2, p0, Ldjz$4;->a:Lcom/alibaba/wukong/im/Message;

    invoke-static {v1, v2}, Ldjz;->a(Ldjz;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v4

    .line 1048
    .local v4, "messageSerialize":Ljava/lang/String;
    sget-object v1, Lcjk$a;->a:Lcjk;

    .line 338
    sget-object v2, Ldhc;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcjk;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v1

    check-cast v1, Ldhb;

    iget-object v2, p0, Ldjz$4;->a:Lcom/alibaba/wukong/im/Message;

    .line 339
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    const/4 v5, 0x1

    iget-wide v6, p0, Ldjz$4;->b:J

    invoke-interface/range {v1 .. v7}, Ldhb;->a(JLjava/lang/String;IJ)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v4    # "messageSerialize":Ljava/lang/String;
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
