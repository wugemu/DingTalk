.class final Ldvw$10;
.super Ljava/lang/Object;
.source "OneBoxCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldvw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ldvw;


# direct methods
.method constructor <init>(Ldvw;J)V
    .locals 0
    .param p1, "this$0"    # Ldvw;

    .prologue
    .line 875
    iput-object p1, p0, Ldvw$10;->b:Ldvw;

    iput-wide p2, p0, Ldvw$10;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 875
    .line 1878
    iget-object v0, p0, Ldvw$10;->b:Ldvw;

    iget-wide v2, p0, Ldvw$10;->a:J

    invoke-static {v0, v2, v3}, Ldvw;->a(Ldvw;J)V

    .line 875
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 888
    const-string/jumbo v0, "im"

    invoke-static {v0, p1, p2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Ldvw$10;->b:Ldvw;

    invoke-static {v0}, Ldvw;->b(Ldvw;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 893
    :goto_0
    return-void

    .line 892
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 884
    return-void
.end method
