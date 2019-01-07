.class final Lcom/unicom/xiaowo/verify/d/a$a;
.super Landroid/os/CountDownTimer;
.source "ForceMobileNetTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/xiaowo/verify/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/unicom/xiaowo/verify/d/a;

.field private b:Lcom/unicom/xiaowo/verify/d/a$b;


# direct methods
.method public constructor <init>(Lcom/unicom/xiaowo/verify/d/a;Lcom/unicom/xiaowo/verify/d/a$b;)V
    .locals 4

    .prologue
    .line 186
    iput-object p1, p0, Lcom/unicom/xiaowo/verify/d/a$a;->a:Lcom/unicom/xiaowo/verify/d/a;

    .line 187
    const-wide/16 v0, 0xbb8

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 188
    iput-object p2, p0, Lcom/unicom/xiaowo/verify/d/a$a;->b:Lcom/unicom/xiaowo/verify/d/a$b;

    .line 189
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 193
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/a$a;->b:Lcom/unicom/xiaowo/verify/d/a$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/a$a;->a:Lcom/unicom/xiaowo/verify/d/a;

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/a;->a(Lcom/unicom/xiaowo/verify/d/a;)Lcom/unicom/xiaowo/verify/d/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/a$a;->b:Lcom/unicom/xiaowo/verify/d/a$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unicom/xiaowo/verify/d/a$b;->a(Landroid/net/Network;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/a$a;->a:Lcom/unicom/xiaowo/verify/d/a;

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/a;->b(Lcom/unicom/xiaowo/verify/d/a;)Lcom/unicom/xiaowo/verify/d/a$a;

    .line 197
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    .prologue
    .line 202
    return-void
.end method
