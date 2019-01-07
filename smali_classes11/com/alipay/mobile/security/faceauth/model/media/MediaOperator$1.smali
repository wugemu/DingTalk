.class final Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator$1;
.super Ljava/lang/Object;
.source "MediaOperator.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->play(ILcom/alipay/mobile/security/faceauth/model/media/MediaCallBack;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator$1;->a:Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator$1;->a:Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->a(Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator$1;->a:Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->a(Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator$1;->a:Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->a(Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;Landroid/content/res/AssetFileDescriptor;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
