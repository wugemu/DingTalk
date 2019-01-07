.class final Lgdx$9$1;
.super Ljava/lang/Object;
.source "DentryListUploadUseCase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgdx$9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Boolean;

.field final synthetic b:Lgdx$9;


# direct methods
.method constructor <init>(Lgdx$9;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "this$1"    # Lgdx$9;

    .prologue
    .line 221
    iput-object p1, p0, Lgdx$9$1;->b:Lgdx$9;

    iput-object p2, p0, Lgdx$9$1;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 224
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lgdx$9$1;->b:Lgdx$9;

    iget-object v0, v0, Lgdx$9;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    .local v1, "picList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v0, p0, Lgdx$9$1;->b:Lgdx$9;

    iget-object v0, v0, Lgdx$9;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 227
    .local v8, "data":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lgzp;->a()Lgzm;

    move-result-object v2

    iget-object v3, p0, Lgdx$9$1;->b:Lgdx$9;

    iget-boolean v3, v3, Lgdx$9;->b:Z

    invoke-interface {v2, v8, v3}, Lgzm;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v10

    .line 228
    .local v10, "file":Ljava/io/File;
    if-nez v10, :cond_0

    .line 229
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 230
    .local v11, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v9

    .line 235
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 232
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "file":Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 238
    .end local v8    # "data":Ljava/lang/String;
    .end local v10    # "file":Ljava/io/File;
    :cond_1
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v0

    iget-object v2, p0, Lgdx$9$1;->b:Lgdx$9;

    iget-object v2, v2, Lgdx$9;->c:Ljava/util/List;

    iget-object v3, p0, Lgdx$9$1;->b:Lgdx$9;

    iget-object v3, v3, Lgdx$9;->e:Lgdx;

    .line 1055
    iget-object v3, v3, Lgdx;->a:Lgdw;

    .line 238
    invoke-virtual {v3}, Lgdw;->v()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgdx$9$1;->b:Lgdx$9;

    iget-object v4, v4, Lgdx$9;->e:Lgdx;

    .line 2055
    iget-object v4, v4, Lgdx;->a:Lgdw;

    .line 238
    invoke-virtual {v4}, Lgdw;->z()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lgdx$9$1;->b:Lgdx$9;

    iget-boolean v5, v5, Lgdx$9;->d:Z

    .line 239
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lgdx$9$1;->b:Lgdx$9;

    iget-object v6, v6, Lgdx$9;->e:Lgdx;

    invoke-static {v6}, Lgdx;->a(Lgdx;)Lgoi;

    move-result-object v6

    iget-object v7, p0, Lgdx$9$1;->a:Ljava/lang/Boolean;

    .line 3022
    const/4 v12, 0x0

    invoke-static {v7, v12}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v7

    .line 238
    invoke-virtual/range {v0 .. v7}, Lgoj;->a(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgoi;Z)V

    .line 240
    return-void
.end method
