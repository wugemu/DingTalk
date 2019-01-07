.class final Ldjz$10;
.super Ljava/lang/Object;
.source "MessageCountDownManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/MessageContent$VideoContent;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Ldjz;


# direct methods
.method constructor <init>(Ldjz;Lcom/alibaba/wukong/im/MessageContent$VideoContent;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Ldjz;

    .prologue
    .line 885
    iput-object p1, p0, Ldjz$10;->c:Ldjz;

    iput-object p2, p0, Ldjz$10;->a:Lcom/alibaba/wukong/im/MessageContent$VideoContent;

    iput-object p3, p0, Ldjz$10;->b:Lcom/alibaba/wukong/im/Message;

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
    .line 888
    const-string/jumbo v2, "CACHE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 889
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    iget-object v2, p0, Ldjz$10;->a:Lcom/alibaba/wukong/im/MessageContent$VideoContent;

    iget-object v3, p0, Ldjz$10;->b:Lcom/alibaba/wukong/im/Message;

    invoke-static {v2, v3}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v1

    .line 890
    .local v1, "url":Ljava/lang/String;
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/cache/Cache;->remove(Ljava/lang/String;)Z

    .line 892
    iget-object v2, p0, Ldjz$10;->c:Ldjz;

    invoke-static {v2, v1}, Ldjz;->b(Ldjz;Ljava/lang/String;)V

    .line 893
    return-void
.end method
