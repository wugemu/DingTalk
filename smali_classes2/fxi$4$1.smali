.class final Lfxi$4$1;
.super Ljava/lang/Object;
.source "QuotaCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfxi$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lchh;

.field final synthetic b:Lfxi$4;


# direct methods
.method constructor <init>(Lfxi$4;Lchh;)V
    .locals 0
    .param p1, "this$1"    # Lfxi$4;

    .prologue
    .line 164
    iput-object p1, p0, Lfxi$4$1;->b:Lfxi$4;

    iput-object p2, p0, Lfxi$4$1;->a:Lchh;

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
    .line 167
    iget-object v0, p0, Lfxi$4$1;->b:Lfxi$4;

    iget-object v0, v0, Lfxi$4;->a:Lcma;

    iget-object v1, p0, Lfxi$4$1;->a:Lchh;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 168
    return-void
.end method
