.class public final Leja;
.super Ljava/lang/Object;
.source "MatcherModel.java"


# instance fields
.field protected a:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

.field protected b:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

.field protected c:Ljava/lang/String;

.field protected d:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "matcher"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v5, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->UNKNOWN:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    iput-object v5, p0, Leja;->d:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    .line 1014
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 22
    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2014
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 22
    if-eqz v5, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    const-string/jumbo v5, ";"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "data":[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x3

    if-lt v5, v6, :cond_0

    array-length v5, v0

    const/4 v6, 0x4

    if-gt v5, v6, :cond_0

    .line 31
    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-static {v5}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->getValidKey(Ljava/lang/String;)Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    move-result-object v5

    iput-object v5, p0, Leja;->a:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    .line 32
    iget-object v5, p0, Leja;->a:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    if-eqz v5, :cond_0

    .line 36
    const/4 v3, 0x0

    .line 37
    .local v3, "logic":Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 38
    aget-object v5, v0, v1

    invoke-static {v5}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->getValidRule(Ljava/lang/String;)Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    move-result-object v2

    .line 39
    .local v2, "item":Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;
    if-eqz v2, :cond_2

    .line 40
    iput-object v2, p0, Leja;->b:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    .line 42
    :cond_2
    aget-object v5, v0, v1

    invoke-static {v5}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;->getValidLogic(Ljava/lang/String;)Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;

    move-result-object v4

    .line 43
    .local v4, "logicTmp":Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;
    if-eqz v4, :cond_3

    .line 44
    move-object v3, v4

    .line 37
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 48
    .end local v2    # "item":Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;
    .end local v4    # "logicTmp":Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;
    :cond_4
    iget-object v5, p0, Leja;->b:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    if-eqz v5, :cond_0

    .line 51
    iget-object v5, p0, Leja;->b:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    invoke-virtual {v5, v3}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->setShouldMatchNext(Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;)V

    .line 53
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v0, v5

    iput-object v5, p0, Leja;->c:Ljava/lang/String;

    .line 54
    iget-object v5, p0, Leja;->c:Ljava/lang/String;

    .line 3014
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 54
    if-nez v5, :cond_0

    .line 55
    sget-object v5, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->KNOWN:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    iput-object v5, p0, Leja;->d:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Leja;->a:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    return-object v0
.end method

.method public final b()Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Leja;->b:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Leja;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    iget-object v0, p0, Leja;->d:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    sget-object v1, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->UNKNOWN:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Leja;->b:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Leja;->b:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->shouldMatchNext()Z

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
