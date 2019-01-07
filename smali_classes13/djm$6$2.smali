.class final Ldjm$6$2;
.super Ljava/lang/Object;
.source "DingUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjm$6;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ldjm$6;


# direct methods
.method constructor <init>(Ldjm$6;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldjm$6;

    .prologue
    .line 335
    iput-object p1, p0, Ldjm$6$2;->c:Ldjm$6;

    iput-object p2, p0, Ldjm$6$2;->a:Ljava/lang/String;

    iput-object p3, p0, Ldjm$6$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 338
    iget-object v0, p0, Ldjm$6$2;->a:Ljava/lang/String;

    iget-object v1, p0, Ldjm$6$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method
