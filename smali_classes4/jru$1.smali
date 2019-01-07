.class public final Ljru$1;
.super Ljava/lang/Object;
.source "JSMethodInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljrh;

.field final synthetic d:Ljru;


# direct methods
.method public constructor <init>(Ljru;Ljava/lang/Object;Ljava/util/Map;Ljrh;)V
    .locals 0
    .param p1, "this$0"    # Ljru;

    .prologue
    .line 26
    iput-object p1, p0, Ljru$1;->d:Ljru;

    iput-object p2, p0, Ljru$1;->a:Ljava/lang/Object;

    iput-object p3, p0, Ljru$1;->b:Ljava/util/Map;

    iput-object p4, p0, Ljru$1;->c:Ljrh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 30
    :try_start_0
    iget-object v1, p0, Ljru$1;->d:Ljru;

    .line 1011
    iget-object v1, v1, Ljru;->a:Ljava/lang/reflect/Method;

    .line 30
    iget-object v2, p0, Ljru$1;->a:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Ljru$1;->b:Ljava/util/Map;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Ljru$1;->c:Ljrh;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
