.class final Ldiv$2;
.super Ljava/lang/Object;
.source "CMailMsgUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldiv;->a(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/MessageContent;

.field final synthetic b:Ldiv;


# direct methods
.method constructor <init>(Ldiv;Lcom/alibaba/wukong/im/MessageContent;)V
    .locals 0
    .param p1, "this$0"    # Ldiv;

    .prologue
    .line 127
    iput-object p1, p0, Ldiv$2;->b:Ldiv;

    iput-object p2, p0, Ldiv$2;->a:Lcom/alibaba/wukong/im/MessageContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    iget-object v0, p0, Ldiv$2;->b:Ldiv;

    invoke-static {v0}, Ldiv;->a(Ldiv;)Lcom/alibaba/wukong/im/Uploader$UploadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Ldiv$2;->b:Ldiv;

    invoke-static {v0}, Ldiv;->a(Ldiv;)Lcom/alibaba/wukong/im/Uploader$UploadListener;

    move-result-object v0

    iget-object v1, p0, Ldiv$2;->a:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onSuccess(Ljava/lang/Object;)V

    .line 133
    :cond_0
    return-void
.end method
