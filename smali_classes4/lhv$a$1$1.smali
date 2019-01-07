.class final Llhv$a$1$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Llhf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llhv$a$1;->request(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Llhv$a$1;


# direct methods
.method constructor <init>(Llhv$a$1;J)V
    .locals 0
    .param p1, "this$1"    # Llhv$a$1;

    .prologue
    .line 111
    .local p0, "this":Llhv$a$1$1;, "Llhv$a$1$1;"
    iput-object p1, p0, Llhv$a$1$1;->b:Llhv$a$1;

    iput-wide p2, p0, Llhv$a$1$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 114
    .local p0, "this":Llhv$a$1$1;, "Llhv$a$1$1;"
    iget-object v0, p0, Llhv$a$1$1;->b:Llhv$a$1;

    iget-object v0, v0, Llhv$a$1;->a:Llgu;

    iget-wide v2, p0, Llhv$a$1$1;->a:J

    invoke-interface {v0, v2, v3}, Llgu;->request(J)V

    .line 115
    return-void
.end method
