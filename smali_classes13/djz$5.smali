.class public final Ldjz$5;
.super Ljava/lang/Object;
.source "MessageCountDownManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Ldjz;


# direct methods
.method public constructor <init>(Ldjz;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Ldjz;

    .prologue
    .line 387
    iput-object p1, p0, Ldjz$5;->b:Ldjz;

    iput-object p2, p0, Ldjz$5;->a:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 390
    iget-object v0, p0, Ldjz$5;->b:Ldjz;

    iget-object v1, p0, Ldjz$5;->a:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0, v1}, Ldjz;->b(Ldjz;Lcom/alibaba/wukong/im/Message;)V

    .line 391
    return-void
.end method
