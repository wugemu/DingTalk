.class public final Liex$2;
.super Liew;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liew",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Liex$2;->a:I

    invoke-direct {p0}, Liew;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 106
    check-cast p1, Ljava/lang/String;

    .line 1109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1110
    iget v0, p0, Liex$2;->a:I

    invoke-static {p1, v0}, Lcom/taobao/conf/TBConfExternal;->OnLWPResponse(Ljava/lang/String;I)V

    .line 106
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 116
    const-string/jumbo v0, "{}"

    iget v1, p0, Liex$2;->a:I

    invoke-static {v0, v1}, Lcom/taobao/conf/TBConfExternal;->OnLWPResponse(Ljava/lang/String;I)V

    .line 117
    return-void
.end method
