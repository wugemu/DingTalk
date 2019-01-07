.class final Lbhs$1;
.super Ljava/lang/Object;
.source "RequestMoreEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbhs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbhs;


# direct methods
.method constructor <init>(Lbhs;)V
    .locals 0
    .param p1, "this$0"    # Lbhs;

    .prologue
    .line 23
    iput-object p1, p0, Lbhs$1;->a:Lbhs;

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
    .line 26
    iget-object v0, p0, Lbhs$1;->a:Lbhs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbhs;->a(Lbhs;Z)Z

    .line 27
    return-void
.end method
