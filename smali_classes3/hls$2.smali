.class final Lhls$2;
.super Ljava/lang/Object;
.source "MiniappInstance.java"

# interfaces
.implements Lhlo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhls;->a(Ljava/lang/String;Lhln;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lhln;

.field final synthetic c:Lhls;


# direct methods
.method constructor <init>(Lhls;Ljava/lang/String;Lhln;)V
    .locals 0
    .param p1, "this$0"    # Lhls;

    .prologue
    .line 349
    iput-object p1, p0, Lhls$2;->c:Lhls;

    iput-object p2, p0, Lhls$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lhls$2;->b:Lhln;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 352
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lhls$2$1;

    invoke-direct {v1, p0}, Lhls$2$1;-><init>(Lhls$2;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 364
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 368
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lhls$2$2;

    invoke-direct {v1, p0, p1, p2}, Lhls$2$2;-><init>(Lhls$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 377
    return-void
.end method
