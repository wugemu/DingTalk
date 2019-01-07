.class final Lfrb$5$1$2;
.super Ljava/lang/Object;
.source "LoginUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrb$5$1;->onFail(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lfrb$5$1;


# direct methods
.method constructor <init>(Lfrb$5$1;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lfrb$5$1;

    .prologue
    .line 497
    iput-object p1, p0, Lfrb$5$1$2;->c:Lfrb$5$1;

    iput p2, p0, Lfrb$5$1$2;->a:I

    iput-object p3, p0, Lfrb$5$1$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 500
    iget-object v0, p0, Lfrb$5$1$2;->c:Lfrb$5$1;

    iget-object v0, v0, Lfrb$5$1;->a:Lfrb$5;

    iget-object v0, v0, Lfrb$5;->c:Lcma;

    iget v1, p0, Lfrb$5$1$2;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfrb$5$1$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    return-void
.end method
