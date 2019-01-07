.class final Lbag$9;
.super Lckm$a;
.source "DingDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lckm$a",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbag;


# direct methods
.method constructor <init>(Lbag;)V
    .locals 0
    .param p1, "this$0"    # Lbag;

    .prologue
    .line 340
    iput-object p1, p0, Lbag$9;->a:Lbag;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 340
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1343
    iget-object v0, p0, Lbag$9;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    invoke-static {p1}, Lbkh;->H(Lcom/alibaba/android/ding/base/objects/ObjectDing;)J

    move-result-wide v0

    .line 1345
    invoke-static {v0, v1}, Lbkh;->a(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbag$9;->a:Lbag;

    invoke-static {v1}, Lbag;->c(Lbag;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbag$9;->a:Lbag;

    .line 1346
    invoke-static {v0}, Lbag;->d(Lbag;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1348
    iget-object v0, p0, Lbag$9;->a:Lbag;

    invoke-static {v0}, Lbag;->d(Lbag;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1349
    iget-object v0, p0, Lbag$9;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    iget-object v1, p0, Lbag$9;->a:Lbag;

    invoke-static {v1}, Lbag;->d(Lbag;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lbaf$b;->a(Ljava/util/List;)V

    .line 1350
    iget-object v0, p0, Lbag$9;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v1

    iget-object v0, p0, Lbag$9;->a:Lbag;

    invoke-static {v0}, Lbag;->b(Lbag;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->o()I

    move-result v0

    iget-object v2, p0, Lbag$9;->a:Lbag;

    invoke-static {v2}, Lbag;->d(Lbag;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lbag$9;->a:Lbag;

    invoke-static {v0}, Lbag;->b(Lbag;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->o()I

    move-result v0

    :goto_0
    invoke-interface {v1, v0}, Lbaf$b;->a(I)V

    .line 340
    :cond_0
    return-void

    .line 1350
    :cond_1
    iget-object v0, p0, Lbag$9;->a:Lbag;

    invoke-static {v0}, Lbag;->d(Lbag;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
