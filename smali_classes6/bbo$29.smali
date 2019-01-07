.class final Lbbo$29;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lcma;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 3308
    iput-object p1, p0, Lbbo$29;->d:Lbbo;

    iput-object p2, p0, Lbbo$29;->a:Lcma;

    iput-object p3, p0, Lbbo$29;->b:Ljava/lang/String;

    iput-object p4, p0, Lbbo$29;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 3311
    iget-object v0, p0, Lbbo$29;->a:Lcma;

    iget-object v1, p0, Lbbo$29;->b:Ljava/lang/String;

    iget-object v2, p0, Lbbo$29;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3312
    return-void
.end method
