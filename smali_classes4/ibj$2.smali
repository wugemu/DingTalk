.class final Libj$2;
.super Ljava/lang/Object;
.source "GroupNickServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Libj;->getGroupNick(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alibaba/wukong/Callback;

.field final synthetic d:Libj;


# direct methods
.method constructor <init>(Libj;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Libj;

    .prologue
    .line 85
    iput-object p1, p0, Libj$2;->d:Libj;

    iput-object p2, p0, Libj$2;->a:Ljava/lang/String;

    iput-object p3, p0, Libj$2;->b:Ljava/util/List;

    iput-object p4, p0, Libj$2;->c:Lcom/alibaba/wukong/Callback;

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
    .line 88
    iget-object v0, p0, Libj$2;->d:Libj;

    invoke-static {v0}, Libj;->a(Libj;)Libf;

    move-result-object v0

    iget-object v1, p0, Libj$2;->a:Ljava/lang/String;

    iget-object v2, p0, Libj$2;->b:Ljava/util/List;

    iget-object v3, p0, Libj$2;->c:Lcom/alibaba/wukong/Callback;

    invoke-virtual {v0, v1, v2, v3}, Libf;->a(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    .line 89
    return-void
.end method
