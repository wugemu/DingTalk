.class final Lbjx$2;
.super Ljava/lang/Object;
.source "DingParentUtil.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbjx;->a(Ljava/lang/String;ZILandroid/app/Activity;Lbja;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbja;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lbja;Ljava/lang/String;ZILandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lbjx$2;->a:Lbja;

    iput-object p2, p0, Lbjx$2;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lbjx$2;->c:Z

    iput p4, p0, Lbjx$2;->d:I

    iput-object p5, p0, Lbjx$2;->e:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 191
    check-cast p1, Ljava/util/List;

    .line 3196
    iget-object v0, p0, Lbjx$2;->a:Lbja;

    if-eqz v0, :cond_0

    .line 3197
    iget-object v0, p0, Lbjx$2;->a:Lbja;

    invoke-interface {v0}, Lbja;->a()V

    .line 3200
    :cond_0
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;-><init>()V

    .line 3201
    iget-object v1, p0, Lbjx$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 3202
    if-eqz p1, :cond_2

    .line 3203
    iget-boolean v1, p0, Lbjx$2;->c:Z

    if-eqz v1, :cond_1

    .line 3204
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3206
    :cond_1
    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->d(Ljava/util/List;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 3207
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->e(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 3209
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 3210
    iget v1, p0, Lbjx$2;->d:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->b(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 3211
    invoke-virtual {v0, v4}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(Z)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 3212
    iget-object v1, p0, Lbjx$2;->e:Landroid/app/Activity;

    .line 3922
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 4786
    invoke-static {v1, v0, v4}, Lbjv;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;I)V

    .line 191
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 223
    iget-object v1, p0, Lbjx$2;->a:Lbja;

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lbjx$2;->a:Lbja;

    invoke-interface {v1}, Lbja;->a()V

    .line 227
    :cond_0
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;-><init>()V

    .line 228
    .local v0, "builder":Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    iget-object v1, p0, Lbjx$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 229
    invoke-virtual {v0, v4}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 230
    iget v1, p0, Lbjx$2;->d:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->b(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 231
    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(Z)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 232
    iget-object v1, p0, Lbjx$2;->e:Landroid/app/Activity;

    .line 1922
    iget-object v2, v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 2786
    invoke-static {v1, v2, v3}, Lbjv;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;I)V

    .line 234
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[DingParentUtil]getAllMembers failed, parentId="

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lbjx$2;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    aput-object p2, v1, v4

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 218
    return-void
.end method
