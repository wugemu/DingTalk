.class final Lfak$56$1$2;
.super Ljava/lang/Object;
.source "ContactAPIImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak$56$1;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lfak$56$1;


# direct methods
.method constructor <init>(Lfak$56$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lfak$56$1;

    .prologue
    .line 315
    iput-object p1, p0, Lfak$56$1$2;->c:Lfak$56$1;

    iput-object p2, p0, Lfak$56$1$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lfak$56$1$2;->b:Ljava/lang/String;

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
    .line 318
    iget-object v0, p0, Lfak$56$1$2;->c:Lfak$56$1;

    iget-object v0, v0, Lfak$56$1;->b:Lfak$56;

    iget-object v0, v0, Lfak$56;->a:Lcma;

    iget-object v1, p0, Lfak$56$1$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lfak$56$1$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method
