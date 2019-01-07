.class public final Lbbp$71;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 599
    iput-object p1, p0, Lbbp$71;->b:Lbbp;

    iput-object p2, p0, Lbbp$71;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 602
    iget-object v0, p0, Lbbp$71;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$71;->a:Lcom/alibaba/wukong/Callback;

    .line 3449
    iget-object v2, v0, Lbbo;->g:Lbgq;

    invoke-interface {v2}, Lbgq;->o_()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbbo;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 603
    return-void
.end method
