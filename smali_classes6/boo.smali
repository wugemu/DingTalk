.class public final Lboo;
.super Ljava/lang/Object;
.source "TimelineImageDisplayStrategyImpl.java"

# interfaces
.implements Lbol;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 49
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;IILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I
    .param p3, "itemCount"    # I
    .param p4, "size"    # Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 19
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-nez p4, :cond_1

    .line 20
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "IllegalArgumentException for getDisplaySize"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 23
    :cond_1
    const-class v7, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    invoke-static {v7}, Lcph;->a(Ljava/lang/Class;)Lcph;

    move-result-object v0

    .line 24
    .local v0, "cell":Lcph;, "Lcph<Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;>;"
    iget-object v7, v0, Lcph;->a:Ljava/lang/Object;

    if-nez v7, :cond_2

    .line 25
    new-instance v7, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;-><init>()V

    iput-object v7, v0, Lcph;->a:Ljava/lang/Object;

    .line 28
    :cond_2
    iget v5, p4, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 29
    .local v5, "w":I
    iget v1, p4, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 31
    .local v1, "h":I
    const/4 v7, 0x1

    if-ne p2, v7, :cond_3

    .line 32
    invoke-static {p1, v5, v1}, Lbqk;->a(Landroid/content/Context;II)F

    move-result v3

    .line 33
    .local v3, "ratio":F
    int-to-float v7, v5

    div-float/2addr v7, v3

    float-to-int v6, v7

    .line 34
    .local v6, "width":I
    int-to-float v7, v1

    div-float/2addr v7, v3

    float-to-int v2, v7

    .line 35
    .local v2, "height":I
    iget-object v7, v0, Lcph;->a:Ljava/lang/Object;

    check-cast v7, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    iput v6, v7, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 36
    iget-object v7, v0, Lcph;->a:Ljava/lang/Object;

    check-cast v7, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    iput v2, v7, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 42
    .end local v2    # "height":I
    .end local v3    # "ratio":F
    :goto_0
    iget-object v4, v0, Lcph;->a:Ljava/lang/Object;

    check-cast v4, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    .line 43
    .local v4, "result":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;
    invoke-virtual {v0}, Lcph;->a()V

    .line 44
    return-object v4

    .line 38
    .end local v4    # "result":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;
    .end local v6    # "width":I
    :cond_3
    invoke-static {p1, p2}, Lbqk;->a(Landroid/content/Context;I)I

    move-result v6

    .line 39
    .restart local v6    # "width":I
    iget-object v7, v0, Lcph;->a:Ljava/lang/Object;

    check-cast v7, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    iget-object v8, v0, Lcph;->a:Ljava/lang/Object;

    check-cast v8, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    iput v6, v8, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    iput v6, v7, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    goto :goto_0
.end method

.method public final b(I)I
    .locals 1
    .param p1, "spanCount"    # I

    .prologue
    .line 54
    const/16 v0, 0x32

    return v0
.end method
