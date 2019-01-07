.class final Lfxm$2;
.super Ljava/lang/Object;
.source "UicMtopHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfxm;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Lfxm;


# direct methods
.method constructor <init>(Lfxm;Lcma;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$0"    # Lfxm;

    .prologue
    .line 90
    iput-object p1, p0, Lfxm$2;->c:Lfxm;

    iput-object p2, p0, Lfxm$2;->a:Lcma;

    iput-object p3, p0, Lfxm$2;->b:Ljava/lang/Exception;

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
    .line 93
    iget-object v0, p0, Lfxm$2;->a:Lcma;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lfxm$2;->b:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method
