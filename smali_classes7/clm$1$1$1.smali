.class final Lclm$1$1$1;
.super Ljava/lang/Object;
.source "NetInspect.java"

# interfaces
.implements Lclk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclm$1$1;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lclm$1$1;


# direct methods
.method constructor <init>(Lclm$1$1;)V
    .locals 0
    .param p1, "this$1"    # Lclm$1$1;

    .prologue
    .line 166
    iput-object p1, p0, Lclm$1$1$1;->a:Lclm$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4
    .param p1, "isSuccess"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 169
    iget-object v0, p0, Lclm$1$1$1;->a:Lclm$1$1;

    iget-object v0, v0, Lclm$1$1;->a:Lclm$1;

    iget-object v0, v0, Lclm$1;->a:Lclm$b;

    iput-boolean p1, v0, Lclm$b;->h:Z

    .line 170
    new-instance v0, Lcln;

    const-wide/16 v2, 0x7d0

    new-instance v1, Lclm$1$1$1$1;

    invoke-direct {v1, p0}, Lclm$1$1$1$1;-><init>(Lclm$1$1$1;)V

    invoke-direct {v0, v2, v3, v1}, Lcln;-><init>(JLcln$a;)V

    .line 185
    return-void
.end method
