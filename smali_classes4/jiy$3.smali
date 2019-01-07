.class final Ljiy$3;
.super Ljava/lang/Object;
.source "SpdyConnection.java"

# interfaces
.implements Lorg/android/spdy/AccsSSLCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljiy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljiy;


# direct methods
.method constructor <init>(Ljiy;)V
    .locals 0

    .prologue
    .line 741
    iput-object p1, p0, Ljiy$3;->a:Ljiy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSSLPublicKey(I[B)[B
    .locals 2
    .param p1, "i"    # I
    .param p2, "bytes"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 744
    iget-object v0, p0, Ljiy$3;->a:Ljiy;

    iget-object v0, v0, Ljiy;->b:Landroid/content/Context;

    const-string/jumbo v1, "tnet_pksg_key"

    invoke-static {v0, v1, p2}, Llb;->a(Landroid/content/Context;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method
