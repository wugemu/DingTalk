.class final Libj$5;
.super Ljava/lang/Object;
.source "GroupNickServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Libj;->updateLocalGroupNicks(Ljava/util/List;Lcom/alibaba/wukong/Callback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Z

.field final synthetic d:Libj;


# direct methods
.method constructor <init>(Libj;Ljava/util/List;Lcom/alibaba/wukong/Callback;Z)V
    .locals 0
    .param p1, "this$0"    # Libj;

    .prologue
    .line 146
    iput-object p1, p0, Libj$5;->d:Libj;

    iput-object p2, p0, Libj$5;->a:Ljava/util/List;

    iput-object p3, p0, Libj$5;->b:Lcom/alibaba/wukong/Callback;

    iput-boolean p4, p0, Libj$5;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 149
    iget-object v0, p0, Libj$5;->d:Libj;

    invoke-static {v0}, Libj;->a(Libj;)Libf;

    move-result-object v0

    iget-object v1, p0, Libj$5;->a:Ljava/util/List;

    iget-object v2, p0, Libj$5;->b:Lcom/alibaba/wukong/Callback;

    iget-boolean v3, p0, Libj$5;->c:Z

    invoke-virtual {v0, v1, v2, v3}, Libf;->a(Ljava/util/List;Lcom/alibaba/wukong/Callback;Z)V

    .line 150
    return-void
.end method
