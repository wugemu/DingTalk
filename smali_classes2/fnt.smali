.class public final Lfnt;
.super Ljava/lang/Object;
.source "OrgExternalNamePresenter.java"

# interfaces
.implements Lfns$a;


# instance fields
.field a:Lfns$b;

.field private b:J

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lfns$b;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lfns$b;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lfnt;->c:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lfnt;->a:Lfns$b;

    .line 26
    iget-object v0, p0, Lfnt;->a:Lfns$b;

    invoke-interface {v0, p0}, Lfns$b;->setPresenter(Lcjd;)V

    .line 27
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lfnt;->b:J

    .line 59
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lfnt;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 33
    :cond_0
    iget-object v0, p0, Lfnt;->a:Lfns$b;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lfns$b;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 54
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    iget-wide v2, p0, Lfnt;->b:J

    const/4 v4, 0x5

    new-instance v1, Lfnt$1;

    invoke-direct {v1, p0, p1}, Lfnt$1;-><init>(Lfnt;Ljava/lang/String;)V

    const-class v5, Lcma;

    iget-object v6, p0, Lfnt;->c:Landroid/app/Activity;

    invoke-static {v1, v5, v6}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcma;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/lang/String;JILcma;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method
