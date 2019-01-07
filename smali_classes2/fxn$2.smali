.class final Lfxn$2;
.super Ljava/lang/Object;
.source "UserDeviceIdentifierHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfxn;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lfxn;


# direct methods
.method constructor <init>(Lfxn;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfxn;

    .prologue
    .line 82
    iput-object p1, p0, Lfxn$2;->c:Lfxn;

    iput-object p2, p0, Lfxn$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lfxn$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 82
    check-cast p1, Ljava/lang/String;

    .line 1085
    iget-object v0, p0, Lfxn$2;->c:Lfxn;

    iget-object v1, p0, Lfxn$2;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lfxn;->a(Lfxn;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 95
    iget-object v0, p0, Lfxn$2;->c:Lfxn;

    iget-object v1, p0, Lfxn$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lfxn$2;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfxn;->a(Lfxn;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 91
    return-void
.end method
