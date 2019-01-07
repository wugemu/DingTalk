.class final Lbbt$5$1;
.super Ljava/lang/Object;
.source "DingFloatWindowCenter.java"

# interfaces
.implements Lcjs$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbt$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbt$5;


# direct methods
.method constructor <init>(Lbbt$5;)V
    .locals 0
    .param p1, "this$1"    # Lbbt$5;

    .prologue
    .line 132
    iput-object p1, p0, Lbbt$5$1;->a:Lbbt$5;

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

    .line 136
    invoke-static {}, Lbbr;->a()Lbbr;

    move-result-object v2

    iget-object v3, p0, Lbbt$5$1;->a:Lbbt$5;

    iget-object v3, v3, Lbbt$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v4, p0, Lbbt$5$1;->a:Lbbt$5;

    iget-wide v4, v4, Lbbt$5;->b:J

    invoke-virtual {v2, v3, v4, v5}, Lbbr;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "DingFloatWindowCenter shouldHideNewDingPopupWindow match after, dingId="

    aput-object v3, v2, v0

    iget-object v3, p0, Lbbt$5$1;->a:Lbbt$5;

    iget-object v3, v3, Lbbt$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 141
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbbt$5$1;->a:Lbbt$5;

    iget-object v3, v3, Lbbt$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 146
    iget-object v0, p0, Lbbt$5$1;->a:Lbbt$5;

    iget-object v0, v0, Lbbt$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lbbt$5$1;->a:Lbbt$5;

    iget-object v1, v1, Lbbt$5;->c:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->q(Lckm$a;)V

    .line 147
    iget-object v0, p0, Lbbt$5$1;->a:Lbbt$5;

    iget-object v0, v0, Lbbt$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lbbt$5$1;->a:Lbbt$5;

    iget-object v1, v1, Lbbt$5;->d:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->o(Lckm$a;)V

    .line 149
    iget-object v0, p0, Lbbt$5$1;->a:Lbbt$5;

    iget-object v0, v0, Lbbt$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-static {v2}, Lbjz;->c(Z)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lbbt$5$1;->a:Lbbt$5;

    iget-object v0, v0, Lbbt$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    invoke-static {v2}, Lbjz;->g(Z)V

    goto :goto_0

    .line 153
    :cond_2
    iget-object v0, p0, Lbbt$5$1;->a:Lbbt$5;

    iget-object v0, v0, Lbbt$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {v2}, Lbjz;->e(Z)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 160
    iget-object v0, p0, Lbbt$5$1;->a:Lbbt$5;

    iget-object v0, v0, Lbbt$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lbbt$5$1;->a:Lbbt$5;

    iget-object v1, v1, Lbbt$5;->c:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->r(Lckm$a;)V

    .line 161
    iget-object v0, p0, Lbbt$5$1;->a:Lbbt$5;

    iget-object v0, v0, Lbbt$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lbbt$5$1;->a:Lbbt$5;

    iget-object v1, v1, Lbbt$5;->d:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->p(Lckm$a;)V

    .line 162
    return-void
.end method
