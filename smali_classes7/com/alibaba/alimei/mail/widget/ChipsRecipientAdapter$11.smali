.class final Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$11;
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
    .line 1203
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$11;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v4, 0x3

    const/4 v0, 0x7

    const/4 v3, 0x4

    .line 1203
    check-cast p1, Lsf;

    check-cast p2, Lsf;

    .line 2206
    if-ne p1, p2, :cond_1

    .line 2207
    const/4 v0, 0x0

    .line 2273
    :cond_0
    :goto_0
    return v0

    .line 2210
    :cond_1
    iget v5, p1, Lsf;->d:I

    iget v6, p2, Lsf;->d:I

    if-eq v5, v6, :cond_c

    .line 2211
    iget v5, p1, Lsf;->d:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    .line 2212
    const/4 v0, -0x8

    goto :goto_0

    .line 2215
    :cond_2
    iget v5, p2, Lsf;->d:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 2216
    const/16 v0, 0x8

    goto :goto_0

    .line 2219
    :cond_3
    iget v5, p1, Lsf;->d:I

    if-ne v5, v0, :cond_4

    .line 2220
    const/4 v0, -0x7

    goto :goto_0

    .line 2223
    :cond_4
    iget v5, p2, Lsf;->d:I

    if-eq v5, v0, :cond_0

    .line 2227
    iget v5, p1, Lsf;->d:I

    if-ne v5, v1, :cond_5

    .line 2228
    const/4 v0, -0x6

    goto :goto_0

    .line 2231
    :cond_5
    iget v5, p2, Lsf;->d:I

    if-ne v5, v1, :cond_6

    move v0, v1

    .line 2232
    goto :goto_0

    .line 2235
    :cond_6
    iget v1, p1, Lsf;->d:I

    if-ne v1, v2, :cond_7

    .line 2236
    const/4 v0, -0x5

    goto :goto_0

    .line 2239
    :cond_7
    iget v1, p2, Lsf;->d:I

    if-ne v1, v2, :cond_8

    move v0, v2

    .line 2240
    goto :goto_0

    .line 2243
    :cond_8
    iget v1, p1, Lsf;->d:I

    if-ne v1, v3, :cond_9

    .line 2244
    const/4 v0, -0x4

    goto :goto_0

    .line 2247
    :cond_9
    iget v1, p2, Lsf;->d:I

    if-ne v1, v3, :cond_a

    move v0, v3

    .line 2248
    goto :goto_0

    .line 2251
    :cond_a
    iget v1, p1, Lsf;->d:I

    if-ne v1, v4, :cond_b

    .line 2252
    const/4 v0, -0x3

    goto :goto_0

    .line 2255
    :cond_b
    iget v1, p2, Lsf;->d:I

    if-ne v1, v4, :cond_c

    move v0, v4

    .line 2256
    goto :goto_0

    .line 2261
    :cond_c
    iget v1, p1, Lsf;->d:I

    if-ne v1, v0, :cond_11

    iget v1, p2, Lsf;->d:I

    if-ne v1, v0, :cond_11

    .line 2263
    iget v0, p1, Lsf;->j:I

    if-ne v0, v3, :cond_d

    iget v0, p2, Lsf;->j:I

    if-ne v0, v3, :cond_d

    .line 2264
    const/4 v0, 0x1

    goto :goto_0

    .line 2265
    :cond_d
    iget v0, p1, Lsf;->j:I

    if-eq v0, v3, :cond_e

    iget v0, p2, Lsf;->j:I

    if-ne v0, v3, :cond_e

    .line 2266
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 2268
    :cond_e
    iget-wide v0, p2, Lsf;->i:J

    iget-wide v2, p1, Lsf;->i:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 2269
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2270
    :cond_f
    iget-wide v0, p1, Lsf;->i:J

    iget-wide v2, p2, Lsf;->i:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    .line 2271
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 2273
    :cond_10
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 3133
    :cond_11
    iget v0, p1, Lsf;->d:I

    .line 4133
    iget v1, p2, Lsf;->d:I

    .line 2338
    sub-int/2addr v0, v1

    .line 1203
    goto/16 :goto_0
.end method
