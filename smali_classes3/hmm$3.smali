.class final Lhmm$3;
.super Ljava/lang/Object;
.source "MiniAppOpenTypeSPLocalDataAccessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhmm;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lhmm;


# direct methods
.method constructor <init>(Lhmm;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lhmm;

    .prologue
    .line 117
    iput-object p1, p0, Lhmm$3;->b:Lhmm;

    iput-object p2, p0, Lhmm$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 121
    :try_start_0
    iget-object v2, p0, Lhmm$3;->a:Ljava/util/List;

    new-instance v3, Lhmm$3$1;

    invoke-direct {v3, p0}, Lhmm$3$1;-><init>(Lhmm$3;)V

    .line 123
    invoke-virtual {v3}, Lhmm$3$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 121
    invoke-static {v2, v3}, Lcor;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 125
    const-string/jumbo v2, "MiniAppOpenTypeSPLocalDataAccessor"

    iget-object v3, p0, Lhmm$3;->b:Lhmm;

    .line 1030
    invoke-static {}, Lhmm;->b()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-static {v2, v3, v1}, Lhrn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    const-string/jumbo v2, "MiniAppOpenTypeSPLocalDataAccessor"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "saveDataToLocal"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "data="

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lhmm$3;->a:Ljava/util/List;

    aput-object v5, v3, v4

    .line 1071
    const-string/jumbo v4, "mini_app"

    invoke-static {v4, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    const-string/jumbo v2, "MiniAppOpenTypeSPLocalDataAccessor"

    new-array v3, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "saveDataToLocal"

    aput-object v4, v3, v6

    const-string/jumbo v4, "gson error"

    aput-object v4, v3, v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 2071
    const-string/jumbo v4, "mini_app"

    invoke-static {v4, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
