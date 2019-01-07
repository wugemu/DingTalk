.class final Lfaq$a$1$1;
.super Ljava/lang/Object;
.source "LWPOAuthProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfaq$a$1;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfaq$a$1;


# direct methods
.method constructor <init>(Lfaq$a$1;)V
    .locals 0
    .param p1, "this$2"    # Lfaq$a$1;

    .prologue
    .line 718
    iput-object p1, p0, Lfaq$a$1$1;->a:Lfaq$a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 721
    iget-object v0, p0, Lfaq$a$1$1;->a:Lfaq$a$1;

    iget-object v0, v0, Lfaq$a$1;->d:Lfaq$a;

    iget-object v1, p0, Lfaq$a$1$1;->a:Lfaq$a$1;

    iget-object v1, v1, Lfaq$a$1;->b:Lcee;

    iget-object v2, p0, Lfaq$a$1$1;->a:Lfaq$a$1;

    iget-object v2, v2, Lfaq$a$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lfaq$a$1$1;->a:Lfaq$a$1;

    iget-object v3, v3, Lfaq$a$1;->a:Lcma;

    invoke-virtual {v0, v1, v2, v3}, Lfaq$a;->a(Lcee;Ljava/lang/String;Lcma;)V

    .line 722
    return-void
.end method
