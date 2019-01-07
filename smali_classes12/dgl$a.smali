.class final Ldgl$a;
.super Ljava/lang/Object;
.source "AbsChatDetailViewHolder.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldgl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lckl;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field c:J

.field d:Z

.field final synthetic e:Ldgl;


# direct methods
.method constructor <init>(Ldgl;)V
    .locals 1
    .param p1, "this$0"    # Ldgl;

    .prologue
    .line 319
    iput-object p1, p0, Ldgl$a;->e:Ldgl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldgl$a;->d:Z

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 356
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 319
    check-cast p1, Lckl;

    .line 1342
    iget-boolean v0, p0, Ldgl$a;->d:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Ldgl$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldgl$a;->e:Ldgl;

    .line 2062
    iget-object v0, v0, Ldgl;->h:Landroid/widget/TextView;

    .line 1342
    if-nez v0, :cond_1

    .line 1343
    :cond_0
    :goto_0
    return-void

    .line 1345
    :cond_1
    iget-object v0, p0, Ldgl$a;->a:Ljava/lang/String;

    .line 3055
    iget-object v1, p1, Lckl;->a:Ljava/lang/String;

    .line 1345
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ldgl$a;->b:J

    .line 3059
    iget-wide v2, p1, Lckl;->b:J

    .line 1346
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Ldgl$a;->c:J

    .line 3063
    iget-wide v2, p1, Lckl;->c:J

    .line 1347
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1348
    iget-object v0, p0, Ldgl$a;->e:Ldgl;

    .line 4062
    iget-object v0, v0, Ldgl;->h:Landroid/widget/TextView;

    .line 5039
    iget-object v1, p1, Lckl;->d:Ljava/lang/String;

    .line 1348
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1349
    iget-object v0, p0, Ldgl$a;->e:Ldgl;

    .line 5062
    iget-object v0, v0, Ldgl;->h:Landroid/widget/TextView;

    .line 1349
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
