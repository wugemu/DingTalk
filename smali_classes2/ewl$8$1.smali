.class final Lewl$8$1;
.super Lbzd;
.source "TeleConfPhoneHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewl$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewl$8;


# direct methods
.method constructor <init>(Lewl$8;)V
    .locals 0
    .param p1, "this$1"    # Lewl$8;

    .prologue
    .line 1050
    iput-object p1, p0, Lewl$8$1;->a:Lewl$8;

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1053
    iget-object v0, p0, Lewl$8$1;->a:Lewl$8;

    iget-object v0, v0, Lewl$8;->d:Lewl;

    iget-object v1, p0, Lewl$8$1;->a:Lewl$8;

    iget v1, v1, Lewl$8;->b:I

    iget-object v2, p0, Lewl$8$1;->a:Lewl$8;

    iget-object v2, v2, Lewl$8;->c:Lewl$a;

    invoke-static {v0, v1, v2}, Lewl;->a(Lewl;ILewl$a;)V

    .line 1054
    return-void
.end method

.method public final onDenied()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1058
    iget-object v0, p0, Lewl$8$1;->a:Lewl$8;

    iget-object v0, v0, Lewl$8;->d:Lewl;

    iget-object v1, p0, Lewl$8$1;->a:Lewl$8;

    iget v1, v1, Lewl$8;->b:I

    iget-object v2, p0, Lewl$8$1;->a:Lewl$8;

    iget-object v2, v2, Lewl$8;->c:Lewl$a;

    invoke-static {v0, v1, v2}, Lewl;->a(Lewl;ILewl$a;)V

    .line 1059
    return-void
.end method

.method public final onNeverAsk()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1063
    iget-object v0, p0, Lewl$8$1;->a:Lewl$8;

    iget-object v0, v0, Lewl$8;->d:Lewl;

    iget-object v1, p0, Lewl$8$1;->a:Lewl$8;

    iget v1, v1, Lewl$8;->b:I

    iget-object v2, p0, Lewl$8$1;->a:Lewl$8;

    iget-object v2, v2, Lewl$8;->c:Lewl$a;

    invoke-static {v0, v1, v2}, Lewl;->a(Lewl;ILewl$a;)V

    .line 1064
    return-void
.end method
