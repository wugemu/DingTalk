.class final Lfas$6;
.super Ljava/lang/Object;
.source "LoginApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfas;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lfas;


# direct methods
.method constructor <init>(Lfas;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfas;

    .prologue
    .line 364
    iput-object p1, p0, Lfas$6;->b:Lfas;

    iput-object p2, p0, Lfas$6;->a:Lcma;

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
    .line 367
    iget-object v0, p0, Lfas$6;->a:Lcma;

    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "Bad request param."

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method
