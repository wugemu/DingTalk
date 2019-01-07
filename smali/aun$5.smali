.class final Laun$5;
.super Ljava/lang/Object;
.source "CalendarDrawerContainer.java"

# interfaces
.implements Lauq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laun;


# direct methods
.method constructor <init>(Laun;)V
    .locals 0
    .param p1, "this$0"    # Laun;

    .prologue
    .line 383
    iput-object p1, p0, Laun$5;->a:Laun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lava;)Z
    .locals 4
    .param p1, "itemSetting"    # Lava;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 386
    instance-of v1, p1, Lavb;

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Laun$5;->a:Laun;

    invoke-static {v1}, Laun;->c(Laun;)V

    .line 389
    const-string/jumbo v1, "pref_key_calendar_ali_mail_not_login_tips_2"

    invoke-static {v1, v0}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 390
    const-string/jumbo v1, "pref_key_calendar_ali_mail_not_login_red_dot"

    invoke-static {v1, v0}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 391
    invoke-static {}, Lavh;->c()V

    .line 392
    iget-object v0, p0, Laun$5;->a:Laun;

    .line 1077
    iget-object v0, v0, Laun;->v:Ljava/util/List;

    .line 392
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 394
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    new-instance v1, Laun$5$1;

    invoke-direct {v1, p0}, Laun$5$1;-><init>(Laun$5;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcaa;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 401
    const/4 v0, 0x1

    .line 403
    :cond_0
    return v0
.end method
