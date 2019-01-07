.class final Lent$f;
.super Lent$d;
.source "IndexBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lent$d;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lent$f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 167
    invoke-static {}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->y()Z

    move-result v1

    const-string/jumbo v2, "pref_key_search_engine_last_use_redundant"

    invoke-static {v2, v0}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    const-string/jumbo v0, "pref_key_search_engine_last_use_redundant"

    invoke-static {}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->y()Z

    move-result v1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 173
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-string/jumbo v0, "Redunant"

    return-object v0
.end method
