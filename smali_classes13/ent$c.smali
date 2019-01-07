.class final Lent$c;
.super Lent$d;
.source "IndexBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lent$d;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Lent$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 200
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    const-string/jumbo v1, "pref_key_search_engine_last_use_fullsync"

    invoke-static {v1, v0}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

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
    .line 205
    const-string/jumbo v0, "pref_key_search_engine_last_use_fullsync"

    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 206
    return-void
.end method
