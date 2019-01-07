.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$1;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;

    .prologue
    .line 3100
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3104
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->d(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->e(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$1;->a:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    .line 3106
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->O(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)I

    .line 3108
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->P(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->Q(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 3109
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;I)I

    .line 3110
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->u(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Leur;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3111
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Update multi recs size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->d(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3112
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->u(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Leur;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->d(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Leur;->b(Ljava/util/List;)V

    .line 3115
    :cond_0
    return-void
.end method
