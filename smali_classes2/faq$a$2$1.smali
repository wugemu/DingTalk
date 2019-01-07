.class final Lfaq$a$2$1;
.super Ljava/lang/Object;
.source "LWPOAuthProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfaq$a$2;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfaq$a$2;


# direct methods
.method constructor <init>(Lfaq$a$2;)V
    .locals 0
    .param p1, "this$2"    # Lfaq$a$2;

    .prologue
    .line 761
    iput-object p1, p0, Lfaq$a$2$1;->a:Lfaq$a$2;

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
    .line 764
    iget-object v0, p0, Lfaq$a$2$1;->a:Lfaq$a$2;

    iget-object v0, v0, Lfaq$a$2;->d:Lfaq$a;

    iget-object v1, p0, Lfaq$a$2$1;->a:Lfaq$a$2;

    iget-object v1, v1, Lfaq$a$2;->b:Lcee;

    iget-object v2, p0, Lfaq$a$2$1;->a:Lfaq$a$2;

    iget-object v2, v2, Lfaq$a$2;->c:Ljava/lang/String;

    iget-object v3, p0, Lfaq$a$2$1;->a:Lfaq$a$2;

    iget-object v3, v3, Lfaq$a$2;->a:Lcma;

    invoke-virtual {v0, v1, v2, v3}, Lfaq$a;->a(Lcee;Ljava/lang/String;Lcma;)V

    .line 765
    return-void
.end method
