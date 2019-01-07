.class final Lfbe$1;
.super Ljava/lang/Object;
.source "UicAuthAPIImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbe;->a(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lfbe;


# direct methods
.method constructor <init>(Lfbe;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfbe;

    .prologue
    .line 46
    iput-object p1, p0, Lfbe$1;->b:Lfbe;

    iput-object p2, p0, Lfbe$1;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 49
    iget-object v0, p0, Lfbe$1;->a:Lcma;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "applyUccUserToken but uicAuthIService is null"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method
