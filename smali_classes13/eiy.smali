.class public abstract Leiy;
.super Ljava/lang/Object;
.source "AbstractMatcher.java"

# interfaces
.implements Leiz;


# instance fields
.field protected a:Leja;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public final a()Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 17
    iget-object v0, p0, Leiy;->a:Leja;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leiy;->a:Leja;

    invoke-virtual {v0}, Leja;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    :cond_0
    sget-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->UNKNOWN:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    .line 31
    :goto_0
    return-object v0

    .line 22
    :cond_1
    iget-object v0, p0, Leiy;->a:Leja;

    invoke-virtual {v0}, Leja;->b()Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    move-result-object v0

    invoke-virtual {p0, v0}, Leiy;->a(Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 23
    sget-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->UNKNOWN:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    goto :goto_0

    .line 27
    :cond_2
    iget-object v0, p0, Leiy;->a:Leja;

    invoke-virtual {v0}, Leja;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Leiy;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 28
    sget-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->UNKNOWN:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    goto :goto_0

    .line 31
    :cond_3
    invoke-virtual {p0}, Leiy;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Leiy;->a:Leja;

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->getMatchResult(Ljava/lang/String;Leja;)Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Leja;)V
    .locals 0
    .param p1, "matcherModel"    # Leja;

    .prologue
    .line 44
    iput-object p1, p0, Leiy;->a:Leja;

    .line 45
    return-void
.end method

.method public a(Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;)Z
    .locals 1
    .param p1, "rule"    # Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Leiy;->a:Leja;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Leiy;->a:Leja;

    invoke-virtual {v0}, Leja;->e()Z

    move-result v0

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract c()Ljava/lang/String;
.end method
