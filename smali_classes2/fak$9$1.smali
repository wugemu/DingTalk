.class final Lfak$9$1;
.super Ljava/lang/Object;
.source "ContactAPIImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcgc;

.field final synthetic b:Lfak$9;


# direct methods
.method constructor <init>(Lfak$9;Lcgc;)V
    .locals 0
    .param p1, "this$1"    # Lfak$9;

    .prologue
    .line 645
    iput-object p1, p0, Lfak$9$1;->b:Lfak$9;

    iput-object p2, p0, Lfak$9$1;->a:Lcgc;

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
    .line 648
    iget-object v0, p0, Lfak$9$1;->b:Lfak$9;

    iget-object v0, v0, Lfak$9;->c:Lcma;

    iget-object v1, p0, Lfak$9$1;->a:Lcgc;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 649
    return-void
.end method
