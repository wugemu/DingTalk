.class public final Larl$10;
.super Ljava/lang/Object;
.source "FolderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapv;

.field final synthetic b:Larl;


# direct methods
.method public constructor <init>(Larl;Lapv;)V
    .locals 0
    .param p1, "this$0"    # Larl;

    .prologue
    .line 121
    iput-object p1, p0, Larl$10;->b:Larl;

    iput-object p2, p0, Larl$10;->a:Lapv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 124
    iget-object v2, p0, Larl$10;->b:Larl;

    invoke-static {v2}, Larl;->a(Larl;)V

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Larl$10;->b:Larl;

    invoke-static {v2}, Larl;->b(Larl;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasl;

    .line 128
    .local v0, "folderObject":Lasl;
    if-eqz v0, :cond_0

    .line 1042
    iget-object v3, v0, Lasl;->a:Ljava/lang/String;

    .line 129
    invoke-static {}, Larl;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2042
    iget-object v3, v0, Lasl;->a:Ljava/lang/String;

    .line 130
    invoke-static {}, Larl;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3042
    iget-object v3, v0, Lasl;->a:Ljava/lang/String;

    .line 131
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    .end local v0    # "folderObject":Lasl;
    :cond_1
    iget-object v2, p0, Larl$10;->a:Lapv;

    if-eqz v2, :cond_2

    .line 135
    iget-object v2, p0, Larl$10;->a:Lapv;

    invoke-interface {v2, v1}, Lapv;->a(Ljava/lang/Object;)V

    .line 137
    :cond_2
    return-void
.end method
