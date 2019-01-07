.class public final Lilr;
.super Ljava/lang/Object;
.source "LogStrategyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lilq;


# direct methods
.method public constructor <init>(Lilq;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lilr;->b:Lilq;

    iput-object p2, p0, Lilr;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 523
    iget-object v0, p0, Lilr;->b:Lilq;

    iget-object v1, p0, Lilr;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lilq;->a(Lilq;Ljava/lang/String;)V

    .line 524
    return-void
.end method
