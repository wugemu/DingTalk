.class final Lbhg$5;
.super Ljava/lang/Object;
.source "DingDraftManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbhg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lbhg;


# direct methods
.method constructor <init>(Lbhg;Lcma;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lbhg;

    .prologue
    .line 317
    iput-object p1, p0, Lbhg$5;->c:Lbhg;

    iput-object p2, p0, Lbhg$5;->a:Lcma;

    iput-object p3, p0, Lbhg$5;->b:Ljava/lang/Object;

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
    .line 320
    iget-object v0, p0, Lbhg$5;->a:Lcma;

    iget-object v1, p0, Lbhg$5;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 321
    return-void
.end method
