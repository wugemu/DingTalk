.class final Lbbo$28;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbo;->a(Lcma;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lcma;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 3296
    iput-object p1, p0, Lbbo$28;->c:Lbbo;

    iput-object p2, p0, Lbbo$28;->a:Lcma;

    iput-object p3, p0, Lbbo$28;->b:Ljava/lang/Object;

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
    .line 3299
    iget-object v0, p0, Lbbo$28;->a:Lcma;

    iget-object v1, p0, Lbbo$28;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 3300
    return-void
.end method
