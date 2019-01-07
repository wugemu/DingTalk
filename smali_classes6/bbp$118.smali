.class public final Lbbp$118;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDing;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1115
    iput-object p1, p0, Lbbp$118;->d:Lbbp;

    iput-object p2, p0, Lbbp$118;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-boolean p3, p0, Lbbp$118;->b:Z

    iput-boolean p4, p0, Lbbp$118;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1118
    iget-object v1, p0, Lbbp$118;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-boolean v2, p0, Lbbp$118;->b:Z

    iget-boolean v3, p0, Lbbp$118;->c:Z

    .line 5125
    if-eqz v1, :cond_0

    .line 5129
    invoke-static {v1}, Lbkh;->g(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5130
    if-eqz v2, :cond_1

    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->FINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    :goto_0
    invoke-virtual {v1, v0, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;Z)V

    .line 5131
    if-eqz v2, :cond_2

    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->FINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    :goto_1
    invoke-virtual {v1, v0, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;Z)V

    .line 5133
    :cond_0
    :goto_2
    return-void

    .line 5130
    :cond_1
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->UNFINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    goto :goto_0

    .line 5131
    :cond_2
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->UNFINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    goto :goto_1

    .line 5132
    :cond_3
    invoke-static {v1}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5133
    if-eqz v2, :cond_4

    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->FINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    :goto_3
    invoke-virtual {v1, v0, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;Z)V

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->UNFINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    goto :goto_3

    .line 5135
    :cond_5
    if-eqz v2, :cond_6

    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->FINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    :goto_4
    invoke-virtual {v1, v0, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;Z)V

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->UNFINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    goto :goto_4
.end method
