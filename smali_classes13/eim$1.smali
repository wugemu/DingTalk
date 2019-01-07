.class public final Leim$1;
.super Ljava/lang/Object;
.source "CustomThemeLoadManager.java"

# interfaces
.implements Lcmq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Leim;


# direct methods
.method public constructor <init>(Leim;)V
    .locals 0
    .param p1, "this$0"    # Leim;

    .prologue
    .line 53
    iput-object p1, p0, Leim$1;->a:Leim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public final a(J)V
    .locals 5
    .param p1, "orgId"    # J

    .prologue
    .line 57
    iget-object v2, p0, Leim$1;->a:Leim;

    invoke-virtual {v2, p1, p2}, Leim;->c(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v2, p0, Leim$1;->a:Leim;

    .line 1160
    const-string/jumbo v2, "pref_key_use_default_theme"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 62
    if-nez v2, :cond_0

    .line 65
    invoke-static {}, Leim;->b()J

    move-result-wide v0

    .line 67
    .local v0, "currentOrgId":J
    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 70
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcmq;->e(J)V

    goto :goto_0
.end method
