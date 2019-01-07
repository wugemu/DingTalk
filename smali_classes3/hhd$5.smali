.class final Lhhd$5;
.super Ljava/lang/Object;
.source "FCPlanExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhhd;->a(Lhjq;JILhhd$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhjq;

.field final synthetic b:Lhhd$b;

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:Lhhd;


# direct methods
.method constructor <init>(Lhhd;Lhjq;Lhhd$b;JI)V
    .locals 0
    .param p1, "this$0"    # Lhhd;

    .prologue
    .line 366
    iput-object p1, p0, Lhhd$5;->e:Lhhd;

    iput-object p2, p0, Lhhd$5;->a:Lhjq;

    iput-object p3, p0, Lhhd$5;->b:Lhhd$b;

    iput-wide p4, p0, Lhhd$5;->c:J

    iput p6, p0, Lhhd$5;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 369
    iget-object v0, p0, Lhhd$5;->a:Lhjq;

    invoke-static {v0}, Lhhd;->a(Lhjq;)Lhjq;

    .line 370
    iget-object v0, p0, Lhhd$5;->a:Lhjq;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lhjq;->j:Ljava/lang/Boolean;

    .line 371
    invoke-static {}, Lhqr;->a()Lhqr;

    move-result-object v0

    iget-object v1, p0, Lhhd$5;->a:Lhjq;

    new-instance v2, Lhhd$5$1;

    invoke-direct {v2, p0}, Lhhd$5$1;-><init>(Lhhd$5;)V

    invoke-virtual {v0, v1, v2}, Lhqr;->a(Lhjq;Lcma;)V

    .line 404
    return-void
.end method
