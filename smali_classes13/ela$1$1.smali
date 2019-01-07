.class final Lela$1$1;
.super Ljava/lang/Object;
.source "SplashImageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lela$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lela$1;


# direct methods
.method constructor <init>(Lela$1;)V
    .locals 0
    .param p1, "this$0"    # Lela$1;

    .prologue
    .line 91
    iput-object p1, p0, Lela$1$1;->a:Lela$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    invoke-static {}, Lela;->a()Lela;

    move-result-object v1

    .line 1107
    iget-object v0, v1, Lela;->b:Leky;

    const/16 v2, 0x3e8

    invoke-interface {v0, v2}, Leky;->a(I)Ljava/util/List;

    move-result-object v0

    .line 1108
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1112
    :cond_1
    invoke-static {}, Lcms;->u()J

    move-result-wide v6

    .line 1113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lekr;

    .line 1114
    if-eqz v5, :cond_2

    .line 1118
    iget-wide v2, v5, Lekr;->e:J

    cmp-long v0, v6, v2

    if-ltz v0, :cond_2

    iget-wide v2, v5, Lekr;->f:J

    cmp-long v0, v2, v6

    if-ltz v0, :cond_2

    .line 1122
    iget-object v0, v5, Lekr;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1126
    iget-wide v2, v5, Lekr;->g:J

    cmp-long v0, v6, v2

    if-ltz v0, :cond_2

    .line 1130
    iget-object v9, v1, Lela;->c:Ljava/util/Queue;

    new-instance v0, Lela$a;

    iget-wide v2, v5, Lekr;->l:J

    iget-object v4, v5, Lekr;->a:Ljava/lang/String;

    iget-object v5, v5, Lekr;->c:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lela$a;-><init>(Lela;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1133
    :cond_3
    invoke-virtual {v1}, Lela;->c()V

    goto :goto_0
.end method
