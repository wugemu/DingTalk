.class public final Lhwp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/build/bk;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/build/bk;)V
    .locals 0

    iput-object p1, p0, Lhwp;->a:Lcom/alibaba/security/biometrics/build/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    :try_start_0
    iget-object v0, p0, Lhwp;->a:Lcom/alibaba/security/biometrics/build/bk;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/build/bk;->d:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhwp;->a:Lcom/alibaba/security/biometrics/build/bk;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/build/bk;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    iget-object v0, p0, Lhwp;->a:Lcom/alibaba/security/biometrics/build/bk;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/security/biometrics/build/bk;->d:Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
