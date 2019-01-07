.class final Ldiz$4$1;
.super Ljava/lang/Object;
.source "ChatMessageSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldiz$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/doraemon/image/ImageMagician;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ldiz$4;


# direct methods
.method constructor <init>(Ldiz$4;Lcom/alibaba/doraemon/image/ImageMagician;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Ldiz$4;

    .prologue
    .line 1695
    iput-object p1, p0, Ldiz$4$1;->d:Ldiz$4;

    iput-object p2, p0, Ldiz$4$1;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object p3, p0, Ldiz$4$1;->b:Ljava/lang/String;

    iput-object p4, p0, Ldiz$4$1;->c:Ljava/lang/String;

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
    .line 1698
    iget-object v2, p0, Ldiz$4$1;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v3, p0, Ldiz$4$1;->b:Ljava/lang/String;

    iget-object v4, p0, Ldiz$4$1;->d:Ldiz$4;

    iget-object v4, v4, Ldiz$4;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/image/ImageMagician;->fillImage2Cache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v2

    iget-object v3, p0, Ldiz$4$1;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ldjv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ldiz$4$1;->d:Ldiz$4;

    iget-object v3, v3, Ldiz$4;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ldiz$4$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1701
    iget-object v2, p0, Ldiz$4$1;->d:Ldiz$4;

    iget-boolean v2, v2, Ldiz$4;->f:Z

    if-eqz v2, :cond_0

    .line 1703
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ldiz$4$1;->d:Ldiz$4;

    iget-object v2, v2, Ldiz$4;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1704
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1710
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 1705
    :catch_0
    move-exception v0

    .line 1706
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
