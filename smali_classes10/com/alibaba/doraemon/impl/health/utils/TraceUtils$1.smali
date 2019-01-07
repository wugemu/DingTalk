.class final Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1;
.super Ljava/lang/Object;
.source "TraceUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/health/utils/TraceUtils;->uploadFileAsync(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$category:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1;->val$category:Ljava/lang/String;

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
    .line 90
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1;->val$file:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils;->access$000(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 92
    .local v0, "traceFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 93
    const-string/jumbo v1, "TraceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uploadFileAsync start file="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "health"

    .line 93
    invoke-static {v1, v2, v3}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lify;->a()Lify;

    move-result-object v1

    new-instance v2, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1;-><init>(Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1;Ljava/io/File;)V

    invoke-virtual {v1, v0, v2}, Lify;->a(Ljava/io/File;Lifw;)V

    .line 148
    :cond_0
    return-void
.end method
