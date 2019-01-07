.class final Lbpa$1;
.super Ljava/lang/Object;
.source "BaseCircleDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbpa;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbpa;


# direct methods
.method constructor <init>(Lbpa;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbpa;

    .prologue
    .line 118
    .local p0, "this":Lbpa$1;, "Lbpa$1;"
    iput-object p1, p0, Lbpa$1;->b:Lbpa;

    iput-object p2, p0, Lbpa$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 122
    .local p0, "this":Lbpa$1;, "Lbpa$1;"
    :try_start_0
    iget-object v1, p0, Lbpa$1;->b:Lbpa;

    invoke-static {v1}, Lbpa;->b(Lbpa;)Lcom/alibaba/bee/DBManager;

    move-result-object v1

    iget-object v2, p0, Lbpa$1;->b:Lbpa;

    invoke-static {v2}, Lbpa;->a(Lbpa;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbpa$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/bee/DBManager;->execRaw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbqh;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
