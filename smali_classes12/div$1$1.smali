.class final Ldiv$1$1;
.super Ljava/lang/Object;
.source "CMailMsgUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldiv$1;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ldiv$1;


# direct methods
.method constructor <init>(Ldiv$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Ldiv$1;

    .prologue
    .line 80
    iput-object p1, p0, Ldiv$1$1;->c:Ldiv$1;

    iput-object p2, p0, Ldiv$1$1;->a:Ljava/lang/String;

    iput-object p3, p0, Ldiv$1$1;->b:Ljava/lang/String;

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
    .line 83
    iget-object v0, p0, Ldiv$1$1;->c:Ldiv$1;

    iget-object v0, v0, Ldiv$1;->a:Ldiv;

    invoke-static {v0}, Ldiv;->a(Ldiv;)Lcom/alibaba/wukong/im/Uploader$UploadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Ldiv$1$1;->c:Ldiv$1;

    iget-object v0, v0, Ldiv$1;->a:Ldiv;

    invoke-static {v0}, Ldiv;->a(Ldiv;)Lcom/alibaba/wukong/im/Uploader$UploadListener;

    move-result-object v0

    iget-object v1, p0, Ldiv$1$1;->a:Ljava/lang/String;

    iget-object v2, p0, Ldiv$1$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method