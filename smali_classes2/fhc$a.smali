.class final Lfhc$a;
.super Ljava/lang/Object;
.source "ContactSubDepartmentViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfhc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Z

.field public d:Landroid/view/View;

.field final synthetic e:Lfhc;


# direct methods
.method private constructor <init>(Lfhc;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lfhc$a;->e:Lfhc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfhc;B)V
    .locals 0
    .param p1, "x0"    # Lfhc;

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lfhc$a;-><init>(Lfhc;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 257
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "dept_group_fetch"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lfhc$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lfhc$a;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 250
    check-cast p1, Ljava/lang/String;

    .line 1262
    iget-object v0, p0, Lfhc$a;->e:Lfhc;

    invoke-static {v0}, Lfhc;->a(Lfhc;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfhc$a;->e:Lfhc;

    invoke-static {v0}, Lfhc;->a(Lfhc;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1266
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1267
    const-string/jumbo v0, ""

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "get dept group and cid is empty , uuid = "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lfhc$a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1272
    :cond_1
    :goto_0
    return-void

    .line 1271
    :cond_2
    iget-object v0, p0, Lfhc$a;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfhc$a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lfhc$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1275
    iget-object v0, p0, Lfhc$a;->e:Lfhc;

    invoke-static {v0, p1}, Lfhc;->a(Lfhc;Ljava/lang/String;)Ljava/lang/String;

    .line 1276
    iget-object v0, p0, Lfhc$a;->d:Landroid/view/View;

    invoke-static {v0, v4}, Lfxp;->a(Landroid/view/View;I)V

    .line 1278
    iget-object v0, p0, Lfhc$a;->e:Lfhc;

    invoke-static {v0}, Lfhc;->b(Lfhc;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1279
    invoke-static {}, Lcms;->c()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcms;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1280
    :cond_3
    if-eqz v0, :cond_4

    .line 1281
    iget-object v1, p0, Lfhc$a;->e:Lfhc;

    invoke-static {v1}, Lfhc;->a(Lfhc;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42aa0000    # 85.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1283
    :cond_4
    iget-object v0, p0, Lfhc$a;->e:Lfhc;

    invoke-static {v0}, Lfhc;->c(Lfhc;)Landroid/widget/TextView;

    move-result-object v1

    iget-boolean v0, p0, Lfhc$a;->c:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lfhc$a;->e:Lfhc;

    invoke-static {v0}, Lfhc;->a(Lfhc;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lezg$l;->create_org_group_title:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1284
    iget-object v0, p0, Lfhc$a;->e:Lfhc;

    invoke-static {v0}, Lfhc;->c(Lfhc;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v4}, Lfxp;->a(Landroid/view/View;I)V

    .line 1294
    :goto_2
    iget-object v0, p0, Lfhc$a;->d:Landroid/view/View;

    new-instance v1, Lfhc$a$1;

    invoke-direct {v1, p0}, Lfhc$a$1;-><init>(Lfhc$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1283
    :cond_5
    iget-object v0, p0, Lfhc$a;->e:Lfhc;

    invoke-static {v0}, Lfhc;->a(Lfhc;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lezg$l;->dt_org_manage_department_group:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1286
    :cond_6
    if-eqz v0, :cond_7

    .line 1287
    iget-object v1, p0, Lfhc$a;->e:Lfhc;

    invoke-static {v1}, Lfhc;->a(Lfhc;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1290
    :cond_7
    iget-object v0, p0, Lfhc$a;->e:Lfhc;

    invoke-static {v0}, Lfhc;->c(Lfhc;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1291
    iget-object v0, p0, Lfhc$a;->e:Lfhc;

    invoke-static {v0}, Lfhc;->c(Lfhc;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 316
    const-string/jumbo v0, ""

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "dept group click and call getGroupByDeptId, error : errorCode = "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "reason = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "and uuid = "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 317
    invoke-virtual {p0}, Lfhc$a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 316
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 312
    return-void
.end method
