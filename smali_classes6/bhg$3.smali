.class final Lbhg$3;
.super Ljava/lang/Object;
.source "DingDraftManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhg;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbhg;


# direct methods
.method constructor <init>(Lbhg;I)V
    .locals 0
    .param p1, "this$0"    # Lbhg;

    .prologue
    .line 186
    iput-object p1, p0, Lbhg$3;->b:Lbhg;

    iput p2, p0, Lbhg$3;->a:I

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
    .line 189
    iget-object v0, p0, Lbhg$3;->b:Lbhg;

    invoke-static {v0}, Lbhg;->a(Lbhg;)Lbgx;

    move-result-object v0

    iget v1, p0, Lbhg$3;->a:I

    invoke-interface {v0, v1}, Lbgx;->b(I)V

    .line 190
    return-void
.end method