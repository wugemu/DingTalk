.class public final Lafl;
.super Ljava/lang/Object;
.source "MailListBannerDo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lafl$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Lafl$a;

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    if-ne p0, p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v5

    .line 38
    :cond_1
    if-eqz p1, :cond_2

    instance-of v6, p1, Lafl;

    if-nez v6, :cond_3

    :cond_2
    move v5, v4

    .line 39
    goto :goto_0

    :cond_3
    move-object v3, p1

    .line 42
    check-cast v3, Lafl;

    .line 43
    .local v3, "banner":Lafl;
    iget-object v6, v3, Lafl;->b:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lafl;->b:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    iget-object v6, v3, Lafl;->b:Ljava/lang/String;

    iget-object v7, p0, Lafl;->b:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_5
    move v1, v5

    .line 44
    .local v1, "actTextEqual":Z
    :goto_1
    iget-object v6, v3, Lafl;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lafl;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    iget-object v6, v3, Lafl;->c:Ljava/lang/String;

    iget-object v7, p0, Lafl;->c:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_7
    move v2, v5

    .line 45
    .local v2, "actUrlEqual":Z
    :goto_2
    iget-object v6, v3, Lafl;->d:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lafl;->d:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    :cond_8
    iget-object v6, v3, Lafl;->d:Ljava/lang/String;

    iget-object v7, p0, Lafl;->d:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_9
    move v0, v5

    .line 46
    .local v0, "actIconEqual":Z
    :goto_3
    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    iget v6, v3, Lafl;->f:I

    iget v7, p0, Lafl;->f:I

    if-ne v6, v7, :cond_a

    iget-boolean v6, v3, Lafl;->h:Z

    iget-boolean v7, p0, Lafl;->h:Z

    if-ne v6, v7, :cond_a

    iget-boolean v6, v3, Lafl;->i:Z

    iget-boolean v7, p0, Lafl;->i:Z

    if-eq v6, v7, :cond_0

    :cond_a
    move v5, v4

    goto :goto_0

    .end local v0    # "actIconEqual":Z
    .end local v1    # "actTextEqual":Z
    .end local v2    # "actUrlEqual":Z
    :cond_b
    move v1, v4

    .line 43
    goto :goto_1

    .restart local v1    # "actTextEqual":Z
    :cond_c
    move v2, v4

    .line 44
    goto :goto_2

    .restart local v2    # "actUrlEqual":Z
    :cond_d
    move v0, v4

    .line 45
    goto :goto_3
.end method
