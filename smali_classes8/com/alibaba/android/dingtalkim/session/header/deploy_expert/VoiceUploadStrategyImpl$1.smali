.class final Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl$1;
.super Ljava/lang/Object;
.source "VoiceUploadStrategyImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl;->a(JLjava/lang/String;Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl$1;->b:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 102
    .line 1105
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "VoiceUploadStrategyImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "path is deleted:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcop;->c(Ljava/lang/String;)Z

    .line 102
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reson"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 115
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "VoiceUploadStrategyImpl"

    invoke-static {v0, v1, p2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 111
    return-void
.end method
