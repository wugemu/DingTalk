.class final Lfkw$5$1;
.super Ljava/lang/Object;
.source "OrgMemberQrcodePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfkw$5;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lfkw$5;


# direct methods
.method constructor <init>(Lfkw$5;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lfkw$5;

    .prologue
    .line 240
    iput-object p1, p0, Lfkw$5$1;->b:Lfkw$5;

    iput-object p2, p0, Lfkw$5$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 243
    iget-object v0, p0, Lfkw$5$1;->b:Lfkw$5;

    iget-object v0, v0, Lfkw$5;->a:Lfkw;

    .line 1033
    iget-object v0, v0, Lfkw;->b:Lfkv$b;

    .line 243
    invoke-interface {v0}, Lfkv$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lfkw$5$1;->b:Lfkw$5;

    iget-object v0, v0, Lfkw$5;->a:Lfkw;

    .line 2033
    iget-object v0, v0, Lfkw;->d:Lfkw$a;

    .line 244
    iget-object v1, p0, Lfkw$5$1;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lfkw$a;->a(Ljava/util/List;)V

    .line 245
    iget-object v0, p0, Lfkw$5$1;->b:Lfkw$5;

    iget-object v0, v0, Lfkw$5;->a:Lfkw;

    .line 3033
    iget-object v0, v0, Lfkw;->b:Lfkv$b;

    .line 245
    iget-object v1, p0, Lfkw$5$1;->b:Lfkw$5;

    iget-object v1, v1, Lfkw$5;->a:Lfkw;

    .line 4033
    invoke-virtual {v1}, Lfkw;->b()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-interface {v0, v1}, Lfkv$b;->a(Ljava/lang/String;)V

    .line 247
    :cond_0
    return-void
.end method
