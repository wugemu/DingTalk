.class public Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
.super Ljava/lang/Object;
.source "H5UpdateAppCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5UpdateAppCallback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZZ)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "isLimit"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 17
    const-string/jumbo v0, "H5UpdateAppCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "install result "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
