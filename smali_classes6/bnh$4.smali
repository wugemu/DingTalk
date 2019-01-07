.class final Lbnh$4;
.super Ljava/lang/Object;
.source "AlphaStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnh;->a(Ljava/lang/String;Ljava/lang/String;Lblv;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lblv;

.field final synthetic e:Lbnh;


# direct methods
.method constructor <init>(Lbnh;ZLjava/lang/String;Ljava/lang/String;Lblv;)V
    .locals 0
    .param p1, "this$0"    # Lbnh;

    .prologue
    .line 174
    iput-object p1, p0, Lbnh$4;->e:Lbnh;

    iput-boolean p2, p0, Lbnh$4;->a:Z

    iput-object p3, p0, Lbnh$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lbnh$4;->c:Ljava/lang/String;

    iput-object p5, p0, Lbnh$4;->d:Lblv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 177
    iget-boolean v0, p0, Lbnh$4;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbnh$4;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbnh$4;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lbnh$4;->e:Lbnh;

    invoke-static {v0}, Lbnh;->b(Lbnh;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lbnh$4;->b:Ljava/lang/String;

    iget-object v2, p0, Lbnh$4;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_0
    iget-object v0, p0, Lbnh$4;->d:Lblv;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lbnh$4;->d:Lblv;

    iget-object v1, p0, Lbnh$4;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lblv;->a(Ljava/lang/Object;)V

    .line 183
    :cond_1
    return-void
.end method
