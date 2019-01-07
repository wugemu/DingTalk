.class final Lcjq$5;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcjq;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcjq;


# direct methods
.method constructor <init>(Lcjq;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcjq;

    .prologue
    .line 203
    iput-object p1, p0, Lcjq$5;->c:Lcjq;

    iput p2, p0, Lcjq$5;->a:I

    iput-object p3, p0, Lcjq$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 206
    iget-object v0, p0, Lcjq$5;->c:Lcjq;

    invoke-static {v0}, Lcjq;->b(Lcjq;)Lcjs;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcjq$5;->c:Lcjq;

    .line 207
    invoke-static {v0}, Lcjq;->b(Lcjq;)Lcjs;

    move-result-object v0

    .line 1041
    iget v0, v0, Lcjs;->a:I

    .line 207
    iget v1, p0, Lcjq$5;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcjq$5;->c:Lcjq;

    .line 208
    invoke-static {v0}, Lcjq;->b(Lcjq;)Lcjs;

    move-result-object v0

    .line 1045
    iget-object v0, v0, Lcjs;->b:Ljava/lang/String;

    .line 208
    iget-object v1, p0, Lcjq$5;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const-string/jumbo v0, "floatwindow_to_show_been_canceled"

    invoke-static {v0}, Lcps;->b(Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcjq$5;->c:Lcjq;

    invoke-static {v1}, Lcjq;->d(Lcjq;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 211
    iget-object v0, p0, Lcjq$5;->c:Lcjq;

    invoke-static {v0, v2}, Lcjq;->b(Lcjq;Lcjs;)Lcjs;

    .line 213
    :cond_0
    iget-object v0, p0, Lcjq$5;->c:Lcjq;

    invoke-static {v0}, Lcjq;->c(Lcjq;)Lcjs;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcjq$5;->c:Lcjq;

    .line 214
    invoke-static {v0}, Lcjq;->c(Lcjq;)Lcjs;

    move-result-object v0

    .line 2041
    iget v0, v0, Lcjs;->a:I

    .line 214
    iget v1, p0, Lcjq$5;->a:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcjq$5;->c:Lcjq;

    .line 215
    invoke-static {v0}, Lcjq;->c(Lcjq;)Lcjs;

    move-result-object v0

    .line 2045
    iget-object v0, v0, Lcjs;->b:Ljava/lang/String;

    .line 215
    iget-object v1, p0, Lcjq$5;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const-string/jumbo v0, "floatwindow_showing_been_canceled"

    invoke-static {v0}, Lcps;->b(Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcjr;->a()Lcjr;

    move-result-object v0

    .line 2089
    invoke-virtual {v0, v2}, Lcjr;->a(Lcjr$a;)V

    .line 218
    iget-object v0, p0, Lcjq$5;->c:Lcjq;

    invoke-static {v0, v2}, Lcjq;->a(Lcjq;Lcjs;)Lcjs;

    .line 220
    :cond_1
    return-void
.end method
