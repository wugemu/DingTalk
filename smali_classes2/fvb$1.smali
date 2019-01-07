.class final Lfvb$1;
.super Ljava/lang/Object;
.source "MineFoundAdsController.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfvb;->a(Ljava/lang/String;)Lblc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lblc",
        "<",
        "Lcry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lfvb;


# direct methods
.method constructor <init>(Lfvb;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfvb;

    .prologue
    .line 54
    iput-object p1, p0, Lfvb$1;->b:Lfvb;

    iput-object p2, p0, Lfvb$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 54
    check-cast p1, Lcry;

    .line 1057
    iget-object v0, p0, Lfvb$1;->b:Lfvb;

    iget-object v1, p0, Lfvb$1;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lfvb;->a(Lfvb;Ljava/lang/String;Lcry;)V

    .line 54
    return-void
.end method
