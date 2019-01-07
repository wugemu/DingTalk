.class final Lhls$1;
.super Ljava/lang/Object;
.source "MiniappInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhls;


# direct methods
.method constructor <init>(Lhls;)V
    .locals 0
    .param p1, "this$0"    # Lhls;

    .prologue
    .line 171
    iput-object p1, p0, Lhls$1;->a:Lhls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 174
    invoke-static {}, Lhmp;->a()Lhmp;

    move-result-object v0

    iget-object v1, p0, Lhls$1;->a:Lhls;

    .line 175
    invoke-static {v1}, Lhls;->a(Lhls;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move v5, v3

    move-object v6, v2

    .line 174
    invoke-virtual/range {v0 .. v6}, Lhmp;->a(Ljava/lang/String;Ljava/lang/String;ZZILhlo;)V

    .line 177
    return-void
.end method
