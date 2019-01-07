.class final Lhca$7$1;
.super Ljava/lang/Object;
.source "AlbumModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhca$7;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhca$7;


# direct methods
.method constructor <init>(Lhca$7;)V
    .locals 0
    .param p1, "this$1"    # Lhca$7;

    .prologue
    .line 1130
    iput-object p1, p0, Lhca$7$1;->a:Lhca$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1133
    iget-object v0, p0, Lhca$7$1;->a:Lhca$7;

    iget-object v0, v0, Lhca$7;->b:Lhca;

    .line 2041
    iget-object v0, v0, Lhca;->d:Ljava/util/List;

    .line 1133
    iget-object v1, p0, Lhca$7$1;->a:Lhca$7;

    .line 2907
    iget-object v1, v1, Lhca$7;->a:Ljava/util/List;

    .line 1133
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1134
    iget-object v0, p0, Lhca$7$1;->a:Lhca$7;

    iget-object v0, v0, Lhca$7;->b:Lhca;

    .line 3041
    iget-object v0, v0, Lhca;->h:Lhca$b;

    .line 1134
    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lhca$7$1;->a:Lhca$7;

    iget-object v0, v0, Lhca$7;->b:Lhca;

    .line 4041
    iget-object v0, v0, Lhca;->h:Lhca$b;

    .line 1135
    invoke-interface {v0}, Lhca$b;->a()V

    .line 1137
    :cond_0
    return-void
.end method
