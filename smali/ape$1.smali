.class final Lape$1;
.super Ljava/lang/Object;
.source "CalendarAlertUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lape;->a(Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lape$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "calendarAlerts":Ljava/util/List;, "Ljava/util/List<Lapb;>;"
    invoke-static {}, Lavi;->c()Z

    move-result v2

    .line 72
    .local v2, "systemEventToggle":Z
    invoke-static {}, Lavi;->d()Z

    move-result v1

    .line 74
    .local v1, "systemEventNoticeToggle":Z
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 75
    new-instance v3, Lape$1$1;

    invoke-direct {v3, p0, v0}, Lape$1$1;-><init>(Lape$1;Ljava/util/List;)V

    invoke-static {v3}, Lape;->b(Lcom/alibaba/wukong/Callback;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v3, p0, Lape$1;->a:Lcom/alibaba/wukong/Callback;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto :goto_0
.end method
