.class final Lfxi$3$1;
.super Ljava/lang/Object;
.source "QuotaCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfxi$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lchh;

.field final synthetic b:Lfxi$3;


# direct methods
.method constructor <init>(Lfxi$3;Lchh;)V
    .locals 0
    .param p1, "this$1"    # Lfxi$3;

    .prologue
    .line 143
    iput-object p1, p0, Lfxi$3$1;->b:Lfxi$3;

    iput-object p2, p0, Lfxi$3$1;->a:Lchh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 146
    iget-object v0, p0, Lfxi$3$1;->b:Lfxi$3;

    iget-object v0, v0, Lfxi$3;->a:Lcma;

    iget-object v1, p0, Lfxi$3$1;->a:Lchh;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 147
    return-void
.end method
