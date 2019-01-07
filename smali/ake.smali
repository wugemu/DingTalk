.class public final Lake;
.super Laka;
.source "UTDefaultConfMgr.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Laka;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 13
    :try_start_0
    invoke-static {}, Lanh;->a()Lanh;

    new-instance v1, Lake$1;

    invoke-direct {v1, p0}, Lake$1;-><init>(Lake;)V

    invoke-static {v1}, Lanh;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
