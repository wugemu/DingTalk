.class final Lblz$5;
.super Ljava/lang/Object;
.source "ApDeviceServiceHelper.java"

# interfaces
.implements Lblv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lblz;->a(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lblv",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcma;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lblz$5;->a:Ljava/lang/String;

    iput-object p2, p0, Lblz$5;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 183
    check-cast p1, Ljava/lang/String;

    .line 1186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1187
    invoke-static {}, Lbnc;->a()Lbnc;

    move-result-object v0

    iget-object v1, p0, Lblz$5;->a:Ljava/lang/String;

    new-instance v2, Lblz$5$1;

    invoke-direct {v2, p0}, Lblz$5$1;-><init>(Lblz$5;)V

    invoke-virtual {v0, v1, v2}, Lbnc;->a(Ljava/lang/String;Lcma;)V

    :cond_0
    :goto_0
    return-void

    .line 1207
    :cond_1
    iget-object v0, p0, Lblz$5;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lblz$5;->b:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
