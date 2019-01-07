.class public final Lban;
.super Ljava/lang/Object;
.source "DingMeetingMinutesPresenter.java"

# interfaces
.implements Lbam$a;


# instance fields
.field a:Lbam$b;

.field b:J

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field d:J

.field e:Z

.field f:Z

.field private g:Z

.field private h:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Lbfv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbam$b;Landroid/content/Intent;)V
    .locals 5
    .param p1, "view"    # Lbam$b;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lban;->c:Ljava/util/List;

    .line 42
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lban;->d:J

    .line 47
    new-instance v0, Lban$1;

    invoke-direct {v0, p0}, Lban$1;-><init>(Lban;)V

    iput-object v0, p0, Lban;->h:Lckm$a;

    .line 58
    new-instance v0, Lban$2;

    invoke-direct {v0, p0}, Lban$2;-><init>(Lban;)V

    iput-object v0, p0, Lban;->i:Lckm$a;

    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "parameter view is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iput-object p1, p0, Lban;->a:Lbam$b;

    .line 76
    iget-object v0, p0, Lban;->a:Lbam$b;

    invoke-interface {v0, p0}, Lbam$b;->setPresenter(Lcjd;)V

    .line 1082
    if-nez p2, :cond_1

    .line 1083
    iget-object v0, p0, Lban;->a:Lbam$b;

    invoke-interface {v0}, Lbam$b;->e()V

    .line 1091
    :goto_0
    return-void

    .line 1087
    :cond_1
    const-string/jumbo v0, "intent_key_parent_ding_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1109
    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1087
    iput-wide v0, p0, Lban;->b:J

    .line 1088
    const-string/jumbo v0, "intent_key_ding_is_sender"

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lban;->g:Z

    .line 1089
    iget-wide v0, p0, Lban;->b:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 1090
    iget-object v0, p0, Lban;->a:Lbam$b;

    invoke-interface {v0}, Lbam$b;->e()V

    goto :goto_0

    .line 1311
    :cond_2
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-wide v2, p0, Lban;->b:J

    iget-object v1, p0, Lban;->h:Lckm$a;

    invoke-virtual {v0, v2, v3, v1}, Lbbp;->a(JLckm$a;)V

    .line 1312
    invoke-static {}, Lbhi;->a()Lbhi;

    move-result-object v0

    iget-wide v2, p0, Lban;->b:J

    iget-object v1, p0, Lban;->i:Lckm$a;

    invoke-virtual {v0, v2, v3, v1}, Lbhi;->a(JLckm$a;)V

    .line 2101
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-wide v2, p0, Lban;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lban$3;

    invoke-direct {v0, p0}, Lban$3;-><init>(Lban;)V

    const-class v3, Lcma;

    iget-object v4, p0, Lban;->a:Lbam$b;

    .line 2122
    invoke-interface {v4}, Lbam$b;->a()Landroid/app/Activity;

    move-result-object v4

    .line 2102
    invoke-static {v0, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2101
    invoke-virtual {v1, v2, v0}, Lbbp;->c(Ljava/lang/String;Lcma;)V

    .line 2188
    iget-object v0, p0, Lban;->a:Lbam$b;

    invoke-interface {v0}, Lbam$b;->b()V

    .line 2189
    new-instance v0, Lban$5;

    invoke-direct {v0, p0}, Lban$5;-><init>(Lban;)V

    .line 2219
    iget-object v1, p0, Lban;->a:Lbam$b;

    invoke-interface {v1}, Lbam$b;->a()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2220
    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lban;->a:Lbam$b;

    invoke-interface {v2}, Lbam$b;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 2222
    :cond_3
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-wide v2, p0, Lban;->b:J

    invoke-virtual {v1, v2, v3, v0}, Lbbp;->a(JLcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lban;)V
    .locals 8
    .param p0, "x0"    # Lban;

    .prologue
    .line 36
    .line 3227
    new-instance v0, Lban$6;

    invoke-direct {v0, p0}, Lban$6;-><init>(Lban;)V

    const-class v1, Lcma;

    iget-object v2, p0, Lban;->a:Lbam$b;

    .line 3260
    invoke-interface {v2}, Lbam$b;->a()Landroid/app/Activity;

    move-result-object v2

    .line 3227
    invoke-static {v0, v1, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcma;

    .line 3262
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-wide v2, p0, Lban;->b:J

    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    const/16 v6, 0x14

    invoke-virtual/range {v1 .. v7}, Lbbp;->a(JJILcma;)V

    .line 36
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 167
    iget-wide v0, p0, Lban;->b:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lban;->g:Z

    const/4 v2, 0x1

    iget-object v3, p0, Lban;->a:Lbam$b;

    invoke-interface {v3}, Lbam$b;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbjx;->a(Ljava/lang/String;ZILandroid/app/Activity;)V

    .line 168
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lban;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lban;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 157
    iget-boolean v0, p0, Lban;->e:Z

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lban;->e:Z

    .line 162
    iget-wide v4, p0, Lban;->d:J

    .line 2267
    new-instance v0, Lban$7;

    invoke-direct {v0, p0, v4, v5}, Lban$7;-><init>(Lban;J)V

    const-class v1, Lcma;

    iget-object v2, p0, Lban;->a:Lbam$b;

    .line 2304
    invoke-interface {v2}, Lbam$b;->a()Landroid/app/Activity;

    move-result-object v2

    .line 2267
    invoke-static {v0, v1, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcma;

    .line 2307
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-wide v2, p0, Lban;->b:J

    const/16 v6, 0x14

    invoke-virtual/range {v1 .. v7}, Lbbp;->a(JJILcma;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public final i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 182
    .line 2316
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-wide v2, p0, Lban;->b:J

    iget-object v1, p0, Lban;->h:Lckm$a;

    invoke-virtual {v0, v2, v3, v1}, Lbbp;->b(JLckm$a;)V

    .line 2317
    invoke-static {}, Lbhi;->a()Lbhi;

    move-result-object v0

    iget-wide v2, p0, Lban;->b:J

    iget-object v1, p0, Lban;->i:Lckm$a;

    invoke-virtual {v0, v2, v3, v1}, Lbhi;->b(JLckm$a;)V

    .line 183
    return-void
.end method
