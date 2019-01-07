.class final Lbbt$7$1;
.super Ljava/lang/Object;
.source "DingFloatWindowCenter.java"

# interfaces
.implements Lcjs$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbt$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbt$7;


# direct methods
.method constructor <init>(Lbbt$7;)V
    .locals 0
    .param p1, "this$1"    # Lbbt$7;

    .prologue
    .line 226
    iput-object p1, p0, Lbbt$7$1;->a:Lbbt$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 230
    invoke-static {}, Lbbr;->a()Lbbr;

    move-result-object v2

    iget-object v3, p0, Lbbt$7$1;->a:Lbbt$7;

    iget-object v3, v3, Lbbt$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v4, p0, Lbbt$7$1;->a:Lbbt$7;

    iget-wide v4, v4, Lbbt$7;->b:J

    invoke-virtual {v2, v3, v4, v5}, Lbbr;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "DingFloatWindowCenter after cache match. dingId="

    aput-object v3, v2, v0

    iget-object v3, p0, Lbbt$7$1;->a:Lbbt$7;

    iget-object v3, v3, Lbbt$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 235
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbbt$7$1;->a:Lbbt$7;

    iget-object v3, v3, Lbbt$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 240
    iget-object v0, p0, Lbbt$7$1;->a:Lbbt$7;

    iget-object v0, v0, Lbbt$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    invoke-static {v1}, Lbjz;->d(Z)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lbbt$7$1;->a:Lbbt$7;

    iget-object v0, v0, Lbbt$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    invoke-static {v1}, Lbjz;->h(Z)V

    goto :goto_0

    .line 244
    :cond_2
    iget-object v0, p0, Lbbt$7$1;->a:Lbbt$7;

    iget-object v0, v0, Lbbt$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-static {v1}, Lbjz;->f(Z)V

    goto :goto_0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method
