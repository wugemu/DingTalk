.class final Lbho$2;
.super Ljava/lang/Object;
.source "ConversationNameEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbho;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbho;


# direct methods
.method constructor <init>(Lbho;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbho;

    .prologue
    .line 102
    iput-object p1, p0, Lbho$2;->b:Lbho;

    iput-object p2, p0, Lbho$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 105
    iget-object v0, p0, Lbho$2;->b:Lbho;

    invoke-static {v0}, Lbho;->c(Lbho;)Lbho$a;

    move-result-object v0

    iget-object v1, p0, Lbho$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbho$a;->a(Ljava/lang/String;)V

    .line 106
    return-void
.end method
