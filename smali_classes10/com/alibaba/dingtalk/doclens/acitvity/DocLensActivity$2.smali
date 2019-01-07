.class final Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;
.super Ljava/lang/Object;
.source "DocLensActivity.java"

# interfaces
.implements Lgrq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 217
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 218
    return-void
.end method

.method public final a(Landroid/content/DialogInterface;Lcom/alibaba/dingtalk/doclens/DocFileType;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "fileType"    # Lcom/alibaba/dingtalk/doclens/DocFileType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 186
    sget-object v0, Lcom/alibaba/dingtalk/doclens/DocFileType;->IMAGE:Lcom/alibaba/dingtalk/doclens/DocFileType;

    if-ne p2, v0, :cond_1

    .line 187
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 188
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;)Lgrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;)Lgrl;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;

    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->b(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->c(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;)Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lgrl;->a(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    sget-object v0, Lcom/alibaba/dingtalk/doclens/DocFileType;->PDF:Lcom/alibaba/dingtalk/doclens/DocFileType;

    if-ne p2, v0, :cond_0

    .line 192
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 193
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;)Lgrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Liff$f;->dt_photo_generating_pdf:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;Ljava/lang/String;)V

    .line 195
    const-string/jumbo v0, "DocLensActivity"

    const/4 v1, 0x1

    sget-object v2, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-static {v0, v1, v2}, Lhcn;->a(Ljava/lang/String;ILcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;-><init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
