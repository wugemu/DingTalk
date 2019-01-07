.class final Leep$3;
.super Ljava/lang/Object;
.source "OAExpandHeaderDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leep;->a(Lcom/alibaba/android/oa/model/TeamStatModelObject;Landroid/widget/RelativeLayout;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Leep;


# direct methods
.method constructor <init>(Leep;JILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Leep;

    .prologue
    .line 255
    iput-object p1, p0, Leep$3;->e:Leep;

    iput-wide p2, p0, Leep$3;->a:J

    iput p4, p0, Leep$3;->b:I

    iput-object p5, p0, Leep$3;->c:Ljava/lang/String;

    iput-object p6, p0, Leep$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 259
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "org_id"

    iget-object v2, p0, Leep$3;->e:Leep;

    invoke-static {v2}, Leep;->b(Leep;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string/jumbo v1, "app_id"

    iget-wide v2, p0, Leep$3;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string/jumbo v1, "position"

    iget v2, p0, Leep$3;->b:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "oa_corp_data_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 264
    iget-object v1, p0, Leep$3;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    iget-object v1, p0, Leep$3;->e:Leep;

    invoke-static {v1}, Leep;->c(Leep;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Leep$3;->c:Ljava/lang/String;

    new-instance v3, Leep$3$1;

    invoke-direct {v3, p0}, Leep$3$1;-><init>(Leep$3;)V

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Legf;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;)V

    .line 279
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Leep$3$2;

    invoke-direct {v2, p0}, Leep$3$2;-><init>(Leep$3;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
