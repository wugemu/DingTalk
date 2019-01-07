.class public final Limh;
.super Ljava/lang/Object;
.source "AlipayVoiceRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Limh;->a:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;B)V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0, p1}, Limh;-><init>(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 289
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "AlipayVoiceRecorder"

    const-string/jumbo v2, "max record duration completed"

    invoke-interface {v0, v1, v2}, Likq;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Limh;->a:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    .line 294
    return-void
.end method
