.class final Lcom/alibaba/android/user/label/LabelSelectActivity$3;
.super Ljava/lang/Object;
.source "LabelSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/label/LabelSelectActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/label/LabelSelectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/label/LabelSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/label/LabelSelectActivity;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$3;->a:Lcom/alibaba/android/user/label/LabelSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 324
    iget-object v1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$3;->a:Lcom/alibaba/android/user/label/LabelSelectActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/label/LabelSelectActivity;->f(Lcom/alibaba/android/user/label/LabelSelectActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lfnn;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcmu;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 325
    .local v0, "localList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/label/LabelSelectActivity$3$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/label/LabelSelectActivity$3$1;-><init>(Lcom/alibaba/android/user/label/LabelSelectActivity$3;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 336
    :cond_0
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/label/LabelSelectActivity$3$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/label/LabelSelectActivity$3$2;-><init>(Lcom/alibaba/android/user/label/LabelSelectActivity$3;)V

    const-class v3, Lcma;

    iget-object v4, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$3;->a:Lcom/alibaba/android/user/label/LabelSelectActivity;

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 371
    .local v6, "apiEventListener":Lcma;
    invoke-static {}, Lfar;->a()Lfar;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$3;->a:Lcom/alibaba/android/user/label/LabelSelectActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/label/LabelSelectActivity;->f(Lcom/alibaba/android/user/label/LabelSelectActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$3;->a:Lcom/alibaba/android/user/label/LabelSelectActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/label/LabelSelectActivity;->g(Lcom/alibaba/android/user/label/LabelSelectActivity;)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Lfar;->a(JIZLcma;)V

    .line 372
    return-void
.end method
