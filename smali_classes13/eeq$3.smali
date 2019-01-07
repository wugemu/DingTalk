.class public final Leeq$3;
.super Legg;
.source "OAManagerHeaderDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leeq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Leeq;


# direct methods
.method public constructor <init>(Leeq;)V
    .locals 0
    .param p1, "this$0"    # Leeq;

    .prologue
    .line 203
    iput-object p1, p0, Leeq$3;->a:Leeq;

    invoke-direct {p0}, Legg;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 206
    iget-object v0, p0, Leeq$3;->a:Leeq;

    .line 1045
    iget-object v0, v0, Leeq;->a:Landroid/app/Activity;

    .line 206
    iget-object v1, p0, Leeq$3;->a:Leeq;

    .line 2045
    iget-object v1, v1, Leeq;->h:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 206
    invoke-static/range {v0 .. v5}, Legf;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "oa_micro_app_manage_app_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 209
    return-void
.end method
