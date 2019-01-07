.class final Ldiv$3;
.super Ljava/lang/Object;
.source "CMailMsgUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldiv;->a(JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ldiv;


# direct methods
.method constructor <init>(Ldiv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldiv;

    .prologue
    .line 158
    iput-object p1, p0, Ldiv$3;->c:Ldiv;

    iput-object p2, p0, Ldiv$3;->a:Ljava/lang/String;

    iput-object p3, p0, Ldiv$3;->b:Ljava/lang/String;

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
    .line 161
    iget-object v0, p0, Ldiv$3;->c:Ldiv;

    invoke-static {v0}, Ldiv;->a(Ldiv;)Lcom/alibaba/wukong/im/Uploader$UploadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Ldiv$3;->c:Ldiv;

    invoke-static {v0}, Ldiv;->a(Ldiv;)Lcom/alibaba/wukong/im/Uploader$UploadListener;

    move-result-object v0

    iget-object v1, p0, Ldiv$3;->a:Ljava/lang/String;

    iget-object v2, p0, Ldiv$3;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    return-void
.end method
