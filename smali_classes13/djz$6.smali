.class final Ldjz$6;
.super Ljava/lang/Object;
.source "MessageCountDownManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjz;->c(Lcom/alibaba/wukong/im/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Ldjz;


# direct methods
.method constructor <init>(Ldjz;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Ldjz;

    .prologue
    .line 483
    iput-object p1, p0, Ldjz$6;->b:Ldjz;

    iput-object p2, p0, Ldjz$6;->a:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1048
    sget-object v0, Lcjk$a;->a:Lcjk;

    .line 486
    sget-object v1, Ldhc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcjk;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v0

    check-cast v0, Ldhb;

    iget-object v1, p0, Ldjz$6;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Ldhb;->a(J)I

    .line 487
    return-void
.end method
