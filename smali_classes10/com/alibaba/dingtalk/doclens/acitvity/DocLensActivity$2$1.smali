.class final Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;
.super Ljava/lang/Object;
.source "DocLensActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;->a(Landroid/content/DialogInterface;Lcom/alibaba/dingtalk/doclens/DocFileType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;

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
    .line 198
    sget-object v1, Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;->PDF:Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

    invoke-static {v1}, Lcom/alibaba/dingtalk/doclens/DocStorageUtil;->a(Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;->a:Ljava/util/List;

    invoke-static {v1, v0}, Lgrn;->a(Ljava/util/List;Ljava/lang/String;)Z

    .line 200
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1$1;-><init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 209
    return-void
.end method
