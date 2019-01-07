.class public final Limi;
.super Ljava/lang/Object;
.source "AlipayVoiceRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 297
    iput-object p1, p0, Limi;->a:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput v0, p0, Limi;->b:I

    .line 301
    iput v0, p0, Limi;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;B)V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0, p1}, Limi;-><init>(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 311
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "AlipayVoiceRecorder"

    const-string/jumbo v2, "record per second"

    invoke-interface {v0, v1, v2}, Likq;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget v0, p0, Limi;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Limi;->c:I

    .line 324
    return-void
.end method
