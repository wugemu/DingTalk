.class public final Larl$2;
.super Ljava/lang/Object;
.source "FolderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Larl;


# direct methods
.method public constructor <init>(Larl;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Larl;

    .prologue
    .line 388
    iput-object p1, p0, Larl$2;->b:Larl;

    iput-object p2, p0, Larl$2;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 391
    iget-object v0, p0, Larl$2;->b:Larl;

    invoke-static {v0}, Larl;->a(Larl;)V

    .line 392
    iget-object v0, p0, Larl$2;->a:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Larl$2;->b:Larl;

    invoke-static {v1}, Larl;->e(Larl;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 393
    return-void
.end method
