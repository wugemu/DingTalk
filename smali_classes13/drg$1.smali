.class public final Ldrg$1;
.super Ljava/lang/Object;
.source "EncryptVoiceTranslateHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/Message;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Ldrg$1;->a:Lcom/alibaba/wukong/Callback;

    iput-object p2, p0, Ldrg$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    check-cast p1, Ljava/lang/String;

    .line 1061
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1062
    iget-object v0, p0, Ldrg$1;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Ldrg$1;->a:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "uploadTranslateEncryptVoice downLoadFile fail"

    const-string/jumbo v2, "received empty path"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    new-instance v0, Lcom/alibaba/wukong/upload/UploadParams;

    invoke-direct {v0}, Lcom/alibaba/wukong/upload/UploadParams;-><init>()V

    .line 2058
    iput-object p1, v0, Lcom/alibaba/wukong/upload/UploadParams;->a:Ljava/lang/String;

    .line 1069
    const/4 v1, 0x1

    .line 2090
    iput-boolean v1, v0, Lcom/alibaba/wukong/upload/UploadParams;->e:Z

    .line 1070
    sget-object v1, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->ONLY_INTERNAL_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/upload/UploadParams;->a(Lcom/alibaba/wukong/upload/UploadParams$AuthType;)V

    .line 1071
    new-instance v1, Ldrg$1$1;

    invoke-direct {v1, p0}, Ldrg$1$1;-><init>(Ldrg$1;)V

    .line 1104
    invoke-static {}, Lify;->a()Lify;

    move-result-object v2

    .line 2128
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lify;->a(Lcom/alibaba/wukong/upload/UploadParams;Lifv;Lifu;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Ldrg$1;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Ldrg$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    iget-object v0, p0, Ldrg$1;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Ldrg$1;->a:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    .line 112
    :cond_0
    return-void
.end method
