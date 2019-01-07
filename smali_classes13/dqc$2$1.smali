.class final Ldqc$2$1;
.super Ljava/lang/Object;
.source "DynamicDefaultEmotionUtils.java"

# interfaces
.implements Ldqh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldqc$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldqc$2;


# direct methods
.method constructor <init>(Ldqc$2;)V
    .locals 0
    .param p1, "this$0"    # Ldqc$2;

    .prologue
    .line 311
    iput-object p1, p0, Ldqc$2$1;->a:Ldqc$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 314
    const-string/jumbo v0, "emoDynamic"

    const-string/jumbo v1, "unzipEmotionZip unzip success"

    .line 1009
    const-string/jumbo v2, "im"

    invoke-static {v2, v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string/jumbo v0, "emoDynamic"

    const-string/jumbo v1, "unzipEmotionZip refreshEmotion"

    .line 2009
    const-string/jumbo v2, "im"

    invoke-static {v2, v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Ldqa;->a()Ldqa;

    move-result-object v0

    invoke-virtual {v0}, Ldqa;->b()V

    .line 318
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 322
    const-string/jumbo v0, "emoDynamic"

    const-string/jumbo v1, "unzip error"

    .line 3009
    const-string/jumbo v2, "im"

    invoke-static {v2, v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void
.end method
