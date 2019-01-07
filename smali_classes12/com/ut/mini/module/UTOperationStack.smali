.class public Lcom/ut/mini/module/UTOperationStack;
.super Ljava/lang/Object;
.source "UTOperationStack.java"


# static fields
.field private static final DEFAULT_SEPARATOR:Ljava/lang/String; = ","

.field private static final MAX_HISTORY_AMOUNT:I = 0x3e8

.field private static s_instance:Lcom/ut/mini/module/UTOperationStack;


# instance fields
.field private mActionHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoryAmount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/ut/mini/module/UTOperationStack;

    invoke-direct {v0}, Lcom/ut/mini/module/UTOperationStack;-><init>()V

    sput-object v0, Lcom/ut/mini/module/UTOperationStack;->s_instance:Lcom/ut/mini/module/UTOperationStack;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/module/UTOperationStack;->mActionHistory:Ljava/util/List;

    .line 16
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/ut/mini/module/UTOperationStack;->mHistoryAmount:I

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/ut/mini/module/UTOperationStack;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/ut/mini/module/UTOperationStack;->s_instance:Lcom/ut/mini/module/UTOperationStack;

    return-object v0
.end method


# virtual methods
.method public addAction(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/ut/mini/module/UTOperationStack;->mActionHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/ut/mini/module/UTOperationStack;->mHistoryAmount:I

    if-lt v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/ut/mini/module/UTOperationStack;->mActionHistory:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/ut/mini/module/UTOperationStack;->mActionHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ut/mini/module/UTOperationStack;->mActionHistory:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/ut/mini/module/UTOperationStack;->mActionHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    :cond_0
    return-void
.end method

.method public getOperationHistory(ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "aAmount"    # I
    .param p2, "aSeparator"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    const/4 v4, 0x1

    .line 29
    .local v4, "lIsFirst":Z
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v7, 0x1f4

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 30
    .local v5, "lResult":Ljava/lang/StringBuffer;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 31
    const-string/jumbo p2, ","

    .line 33
    :cond_0
    if-gtz p1, :cond_1

    .line 34
    const/4 v7, 0x0

    .line 57
    :goto_0
    return-object v7

    .line 36
    :cond_1
    iget-object v7, p0, Lcom/ut/mini/module/UTOperationStack;->mActionHistory:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt p1, v7, :cond_3

    .line 37
    iget-object v7, p0, Lcom/ut/mini/module/UTOperationStack;->mActionHistory:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 38
    .local v3, "lAction":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 39
    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    :cond_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    const/4 v4, 0x0

    .line 43
    goto :goto_1

    .line 45
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "lAction":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/ut/mini/module/UTOperationStack;->mActionHistory:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, p1

    add-int/lit8 v6, v7, -0x1

    .line 46
    .local v6, "lUpStart":I
    move v1, v6

    .local v1, "i":I
    :goto_2
    iget-object v7, p0, Lcom/ut/mini/module/UTOperationStack;->mActionHistory:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 47
    iget-object v7, p0, Lcom/ut/mini/module/UTOperationStack;->mActionHistory:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 49
    if-nez v4, :cond_4

    .line 50
    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    :cond_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    const/4 v4, 0x0

    .line 46
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 57
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v6    # "lUpStart":I
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method
