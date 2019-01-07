.class final Lebm$5;
.super Ljava/lang/Object;
.source "VideoCompressImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lebm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lebm;


# direct methods
.method constructor <init>(Lebm;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lebm;

    .prologue
    .line 126
    iput-object p1, p0, Lebm$5;->b:Lebm;

    iput-object p2, p0, Lebm$5;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    iget-object v0, p0, Lebm$5;->a:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "101021"

    const-string/jumbo v2, "VIDEO_TOO_LARGE"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method
