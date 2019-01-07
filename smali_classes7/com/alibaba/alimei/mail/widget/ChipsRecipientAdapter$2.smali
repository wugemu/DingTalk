.class final Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$2;
.super Ljava/lang/Object;
.source "ChipsRecipientAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lsf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$2;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x7

    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 1342
    check-cast p1, Lsf;

    check-cast p2, Lsf;

    .line 2345
    if-ne p1, p2, :cond_1

    .line 2395
    :cond_0
    :goto_0
    return v0

    .line 2348
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 2349
    goto :goto_0

    .line 2352
    :cond_2
    if-nez p2, :cond_3

    move v0, v2

    .line 2353
    goto :goto_0

    .line 2357
    :cond_3
    iget v3, p1, Lsf;->d:I

    if-ne v3, v5, :cond_7

    iget v3, p2, Lsf;->d:I

    if-ne v3, v5, :cond_7

    .line 2359
    iget v3, p1, Lsf;->j:I

    if-ne v3, v4, :cond_4

    iget v3, p2, Lsf;->j:I

    if-ne v3, v4, :cond_4

    move v0, v2

    .line 2360
    goto :goto_0

    .line 2361
    :cond_4
    iget v3, p1, Lsf;->j:I

    if-eq v3, v4, :cond_5

    iget v3, p2, Lsf;->j:I

    if-ne v3, v4, :cond_5

    move v0, v1

    .line 2362
    goto :goto_0

    .line 2364
    :cond_5
    iget-wide v4, p2, Lsf;->i:J

    iget-wide v6, p1, Lsf;->i:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 2366
    iget-wide v4, p1, Lsf;->i:J

    iget-wide v6, p2, Lsf;->i:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    move v0, v1

    .line 2367
    goto :goto_0

    :cond_6
    move v0, v2

    .line 2369
    goto :goto_0

    .line 2372
    :cond_7
    iget v0, p1, Lsf;->d:I

    if-ne v0, v5, :cond_8

    move v0, v1

    .line 2373
    goto :goto_0

    .line 2374
    :cond_8
    iget v0, p2, Lsf;->d:I

    if-ne v0, v5, :cond_9

    move v0, v2

    .line 2375
    goto :goto_0

    .line 3157
    :cond_9
    iget-object v0, p1, Lsf;->b:Ljava/lang/String;

    .line 2378
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    .line 2379
    goto :goto_0

    .line 4157
    :cond_a
    iget-object v0, p2, Lsf;->b:Ljava/lang/String;

    .line 2382
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 2383
    goto :goto_0

    .line 5157
    :cond_b
    iget-object v0, p1, Lsf;->b:Ljava/lang/String;

    .line 2386
    invoke-static {v0}, Lacn;->c(Ljava/lang/String;)Z

    move-result v0

    .line 6157
    iget-object v3, p2, Lsf;->b:Ljava/lang/String;

    .line 2387
    invoke-static {v3}, Lacn;->c(Ljava/lang/String;)Z

    move-result v3

    .line 2389
    if-eq v0, v3, :cond_d

    .line 2391
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$2;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->n(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Z

    move-result v3

    if-ne v0, v3, :cond_c

    move v0, v1

    .line 2393
    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 2395
    goto/16 :goto_0

    .line 7133
    :cond_d
    iget v0, p1, Lsf;->d:I

    .line 8133
    iget v1, p2, Lsf;->d:I

    .line 2399
    sub-int/2addr v0, v1

    .line 1342
    goto/16 :goto_0
.end method
