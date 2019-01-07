.class final Lfrb$6$2$2;
.super Ljava/lang/Object;
.source "LoginUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrb$6$2;->onFail(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lfrb$6$2;


# direct methods
.method constructor <init>(Lfrb$6$2;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lfrb$6$2;

    .prologue
    .line 576
    iput-object p1, p0, Lfrb$6$2$2;->c:Lfrb$6$2;

    iput p2, p0, Lfrb$6$2$2;->a:I

    iput-object p3, p0, Lfrb$6$2$2;->b:Ljava/lang/String;

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
    .line 579
    iget-object v0, p0, Lfrb$6$2$2;->c:Lfrb$6$2;

    iget-object v0, v0, Lfrb$6$2;->a:Lfrb$6;

    iget-object v0, v0, Lfrb$6;->c:Lcma;

    iget v1, p0, Lfrb$6$2$2;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfrb$6$2$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    return-void
.end method
