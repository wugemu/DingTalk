.class final Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1;
.super Ljava/lang/Object;
.source "DocLensLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/doclens/DocLensLib$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/doclens/DocLensLib$5;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/doclens/DocLensLib$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/doclens/DocLensLib$5;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 259
    sget-object v0, Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;->CORRECT_DOC:Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/DocStorageUtil;->a(Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;)Ljava/io/File;

    move-result-object v6

    .line 260
    .local v6, "docFile":Ljava/io/File;
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$5;

    iget-object v0, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5;->c:Lcom/alibaba/dingtalk/doclens/DocLensLib;

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$5;

    iget-object v1, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$5;->a:Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->getQuad()[F

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$5;

    iget-object v2, v2, Lcom/alibaba/dingtalk/doclens/DocLensLib$5;->a:Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->getSourceImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$5;

    iget-object v4, v4, Lcom/alibaba/dingtalk/doclens/DocLensLib$5;->a:Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->getSourceImageWidth()I

    move-result v4

    iget-object v5, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$5;

    iget-object v5, v5, Lcom/alibaba/dingtalk/doclens/DocLensLib$5;->a:Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->getSourceImageHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/alibaba/dingtalk/doclens/DocLensLib;->a(Lcom/alibaba/dingtalk/doclens/DocLensLib;[FLjava/lang/String;Ljava/lang/String;II)I

    move-result v7

    .line 261
    .local v7, "ret":I
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$5;

    iget-object v0, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1$1;

    invoke-direct {v1, p0, v7, v6}, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1$1;-><init>(Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1;ILjava/io/File;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 275
    :cond_0
    return-void
.end method
